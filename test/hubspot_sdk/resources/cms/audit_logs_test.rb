# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Cms::AuditLogsTest < HubspotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.audit_logs.list

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
        meta: HubspotSDK::Internal::Type::Unknown,
        object_id_: String,
        object_name: String,
        object_type: HubspotSDK::Cms::PublicAuditLog::ObjectType,
        timestamp: Time,
        user_id: String
      }
    end
  end

  def test_export_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.cms.audit_logs.export(
        email: "email",
        format_: :CSV,
        portal_id: 0,
        recipient_user_ids: [0],
        should_mark_export_file_as_sensitive: true,
        type: "type"
      )

    assert_pattern do
      response => nil
    end
  end
end
