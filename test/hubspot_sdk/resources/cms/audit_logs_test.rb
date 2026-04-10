# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Cms::AuditLogsTest < HubSpotSDK::Test::ResourceTest
  def test_list
    skip("Mock server tests are disabled")

    response = @hubspot.cms.audit_logs.list

    assert_pattern do
      response => HubSpotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubSpotSDK::Cms::PublicAuditLog
    end

    assert_pattern do
      row => {
        event: HubSpotSDK::Cms::PublicAuditLog::Event,
        full_name: String,
        meta: HubSpotSDK::Internal::Type::Unknown,
        object_id_: String,
        object_name: String,
        object_type: HubSpotSDK::Cms::PublicAuditLog::ObjectType,
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
