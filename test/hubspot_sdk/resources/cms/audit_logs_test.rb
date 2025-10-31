# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::AuditLogsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.cms.audit_logs.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Cms::PublicAuditLog
    end

    assert_pattern do
      row => {
        event: HubspotSDK::Cms::PublicAuditLog::Event,
        full_name: String,
        object_id_: String,
        object_name: String,
        object_type: HubspotSDK::Cms::PublicAuditLog::ObjectType,
        timestamp: Time,
        user_id: String,
        meta: HubspotSDK::Internal::Type::Unknown | nil
      }
    end
  end
end
