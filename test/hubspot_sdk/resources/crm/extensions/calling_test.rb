# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Extensions::CallingTest < HubspotSDK::Test::ResourceTest
  def test_create_channel_connection_settings_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.extensions.calling.create_channel_connection_settings(0, is_ready: true, url: "url")

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::ChannelConnectionSettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String
      }
    end
  end

  def test_create_inbound_call_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.extensions.calling.create_inbound_call(
        create_engagement: true,
        engagement_properties: {foo: "string"},
        external_call_id: "externalCallId",
        final_call_status: :BUSY,
        from_number: {e164Number: "e164Number", phoneNumberType: :FIXED_LINE},
        potential_recipient_user_ids: [0],
        to_number: {e164Number: "e164Number", phoneNumberType: :FIXED_LINE}
      )

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse
    end

    assert_pattern do
      response => {
        caller_id_matches: ^(HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse::CallerIDMatch])
      }
    end
  end

  def test_create_recording_ready_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.create_recording_ready(engagement_id: 0)

    assert_pattern do
      response => nil
    end
  end

  def test_create_recording_settings_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.extensions.calling.create_recording_settings(
        0,
        url_to_retrieve_authed_recording: "urlToRetrieveAuthedRecording"
      )

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::RecordingSettingsResponse
    end

    assert_pattern do
      response => {
        url_to_retrieve_authed_recording: String
      }
    end
  end

  def test_create_settings_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.extensions.calling.create_settings(
        0,
        height: 0,
        is_ready: true,
        name: "name",
        supports_custom_objects: true,
        supports_inbound_calling: true,
        url: "url",
        uses_calling_window: true,
        uses_remote: true,
        width: 0
      )

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        height: Integer,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        name: String,
        supports_custom_objects: HubspotSDK::Internal::Type::Boolean,
        supports_inbound_calling: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String,
        uses_calling_window: HubspotSDK::Internal::Type::Boolean,
        uses_remote: HubspotSDK::Internal::Type::Boolean,
        width: Integer
      }
    end
  end

  def test_delete_channel_connection_settings
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.delete_channel_connection_settings(0)

    assert_pattern do
      response => nil
    end
  end

  def test_delete_settings
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.delete_settings(0)

    assert_pattern do
      response => nil
    end
  end

  def test_get_channel_connection_settings
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.get_channel_connection_settings(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::ChannelConnectionSettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String
      }
    end
  end

  def test_get_recording_settings
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.get_recording_settings(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::RecordingSettingsResponse
    end

    assert_pattern do
      response => {
        url_to_retrieve_authed_recording: String
      }
    end
  end

  def test_get_settings
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.get_settings(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        height: Integer,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        name: String,
        supports_custom_objects: HubspotSDK::Internal::Type::Boolean,
        supports_inbound_calling: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String,
        uses_calling_window: HubspotSDK::Internal::Type::Boolean,
        uses_remote: HubspotSDK::Internal::Type::Boolean,
        width: Integer
      }
    end
  end

  def test_update_channel_connection_settings
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.update_channel_connection_settings(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::ChannelConnectionSettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String
      }
    end
  end

  def test_update_recording_settings
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.update_recording_settings(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::RecordingSettingsResponse
    end

    assert_pattern do
      response => {
        url_to_retrieve_authed_recording: String
      }
    end
  end

  def test_update_settings
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.update_settings(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::SettingsResponse
    end

    assert_pattern do
      response => {
        created_at: Time,
        height: Integer,
        is_ready: HubspotSDK::Internal::Type::Boolean,
        name: String,
        supports_custom_objects: HubspotSDK::Internal::Type::Boolean,
        supports_inbound_calling: HubspotSDK::Internal::Type::Boolean,
        updated_at: Time,
        url: String,
        uses_calling_window: HubspotSDK::Internal::Type::Boolean,
        uses_remote: HubspotSDK::Internal::Type::Boolean,
        width: Integer
      }
    end
  end
end
