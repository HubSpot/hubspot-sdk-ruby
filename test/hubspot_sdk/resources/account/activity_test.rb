# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Account::ActivityTest < HubSpotSDK::Test::ResourceTest
  def test_list_audit_logs
    skip("Mock server tests are disabled")

    response = @hubspot.account.activity.list_audit_logs

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Account::PublicAPIUserActionEvent
    end

    assert_pattern do
      row => {
        id: String,
        acting_user: HubSpotSDK::Account::ActingUser,
        action: String,
        category: String,
        occurred_at: Time,
        sub_category: String | nil,
        target_object_id: String | nil
      }
    end
  end

  def test_list_login_activities
    skip("Mock server tests are disabled")

    response = @hubspot.account.activity.list_login_activities

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Account::PublicLoginAudit
    end

    assert_pattern do
      row => {
        id: String,
        login_at: Time,
        login_succeeded: HubSpotSDK::Internal::Type::Boolean,
        country_code: String | nil,
        email: String | nil,
        ip_address: String | nil,
        location: String | nil,
        region_code: String | nil,
        user_agent: String | nil,
        user_id: Integer | nil
      }
    end
  end

  def test_list_security_activities
    skip("Mock server tests are disabled")

    response = @hubspot.account.activity.list_security_activities

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Account::HydratedCriticalAction
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        type: HubSpotSDK::Account::HydratedCriticalAction::Type,
        user_id: Integer,
        acting_user: String | nil,
        country_code: String | nil,
        info_url: String | nil,
        ip_address: String | nil,
        location: String | nil,
        object_id_: String | nil,
        region_code: String | nil
      }
    end
  end
end
