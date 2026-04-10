# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Extensions::Calling::TranscriptsTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.extensions.calling.transcripts.create(
        engagement_id: 0,
        transcript_create_utterances: [
          {
            endTimeMillis: 0,
            speaker: {id: "id", name: "name"},
            startTimeMillis: 0,
            text: "text"
          }
        ]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::Calling::TranscriptCreateResponse
    end

    assert_pattern do
      response => {
        id: String
      }
    end
  end

  def test_delete
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.transcripts.delete("transcriptId")

    assert_pattern do
      response => nil
    end
  end

  def test_create_inbound_call_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.extensions.calling.transcripts.create_inbound_call(
        create_engagement: true,
        engagement_properties: {foo: "string"},
        external_call_id: "externalCallId",
        final_call_status: :BUSY,
        from_number: {e164Number: "e164Number", phoneNumberType: :FIXED_LINE},
        potential_recipient_user_ids: [0],
        to_number: {e164Number: "e164Number", phoneNumberType: :FIXED_LINE}
      )

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse
    end

    assert_pattern do
      response => {
        caller_id_matches: ^(HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse::CallerIDMatch])
      }
    end
  end

  def test_get
    skip("Mock server tests are disabled")

    response = @hubspot.crm.extensions.calling.transcripts.get("transcriptId")

    assert_pattern do
      response => HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        engagement_id: Integer,
        transcript_source: HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse::TranscriptSource,
        transcript_utterances: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::Calling::TranscriptUtterance]),
        updated_at: Time
      }
    end
  end
end
