# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Crm::OwnersTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.crm.owners.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Crm::PublicOwner
    end

    assert_pattern do
      row => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        type: HubspotSDK::Crm::PublicOwner::Type,
        updated_at: Time,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        teams: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicTeam]) | nil,
        user_id: Integer | nil,
        user_id_including_inactive: Integer | nil
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.owners.get(0)

    assert_pattern do
      response => HubspotSDK::Crm::PublicOwner
    end

    assert_pattern do
      response => {
        id: String,
        archived: HubspotSDK::Internal::Type::Boolean,
        created_at: Time,
        type: HubspotSDK::Crm::PublicOwner::Type,
        updated_at: Time,
        email: String | nil,
        first_name: String | nil,
        last_name: String | nil,
        teams: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PublicTeam]) | nil,
        user_id: Integer | nil,
        user_id_including_inactive: Integer | nil
      }
    end
  end
end
