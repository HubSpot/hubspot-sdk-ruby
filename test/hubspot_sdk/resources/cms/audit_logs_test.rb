# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::AuditLogsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hubspot.cms.audit_logs.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Models::Cms::AuditLogListResponse
    end

    assert_pattern do
      row => {
        event: HubspotSDK::Models::Cms::AuditLogListResponse::Event,
        full_name: String,
        object_id_: String,
        object_name: String,
        object_type: HubspotSDK::Models::Cms::AuditLogListResponse::ObjectType,
        timestamp: Time,
        user_id: String,
        meta: HubspotSDK::Internal::Type::Unknown | nil
      }
    end
  end
end
