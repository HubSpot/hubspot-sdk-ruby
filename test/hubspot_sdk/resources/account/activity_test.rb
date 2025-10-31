# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Account::ActivityTest < HubspotSDK::Test::ResourceTest
  def test_list_audit_logs
    skip("Prism tests are disabled")

    response = @hubspot.account.activity.list_audit_logs

    assert_pattern do
      response => HubspotSDK::Account::CollectionResponsePublicAPIUserActionEventForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Account::PublicAPIUserActionEvent]),
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_list_login_activities
    skip("Prism tests are disabled")

    response = @hubspot.account.activity.list_login_activities

    assert_pattern do
      response => HubspotSDK::Account::CollectionResponsePublicLoginAuditForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Account::PublicLoginAudit]),
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end

  def test_list_security_activities
    skip("Prism tests are disabled")

    response = @hubspot.account.activity.list_security_activities

    assert_pattern do
      response => HubspotSDK::Account::CollectionResponseHydratedCriticalActionForwardPaging
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Account::HydratedCriticalAction]),
        paging: HubspotSDK::ForwardPaging | nil
      }
    end
  end
end
