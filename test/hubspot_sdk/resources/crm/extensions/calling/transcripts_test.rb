# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::CRM::Extensions::Calling::TranscriptsTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Prism tests are disabled")

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
      response => HubspotSDK::CRM::Extensions::Calling::TranscriptCreateResponse
    end

    assert_pattern do
      response => {
        id: String
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hubspot.crm.extensions.calling.transcripts.delete("transcriptId")

    assert_pattern do
      response => nil
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hubspot.crm.extensions.calling.transcripts.get("transcriptId")

    assert_pattern do
      response => HubspotSDK::CRM::Extensions::Calling::TranscriptResponse
    end

    assert_pattern do
      response => {
        id: String,
        created_at: Time,
        engagement_id: Integer,
        transcript_source: HubspotSDK::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource,
        transcript_utterances: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::Calling::TranscriptUtterance]),
        updated_at: Time
      }
    end
  end
end
