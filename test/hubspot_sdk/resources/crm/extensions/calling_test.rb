# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Extensions::CallingTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.extensions.calling.create(
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

  def test_update
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.update(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::RecordingSettingsResponse
    end

    assert_pattern do
      response => {
        url_to_retrieve_authed_recording: String
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.delete(0)

    assert_pattern do
      response => nil
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

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.get(0)

    assert_pattern do
      response => HubspotSDK::Crm::Extensions::RecordingSettingsResponse
    end

    assert_pattern do
      response => {
        url_to_retrieve_authed_recording: String
      }
    end
  end

  def test_mark_ready_required_params
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.mark_ready(engagement_id: 0)

    assert_pattern do
      response => nil
    end
  end
end
