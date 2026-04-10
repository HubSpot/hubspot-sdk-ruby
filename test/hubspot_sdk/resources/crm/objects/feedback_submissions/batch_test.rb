# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Objects::FeedbackSubmissions::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_get_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.objects.feedback_submissions.batch.get(
        inputs: [{id: "430001"}],
        properties: ["string"],
        properties_with_history: ["string"]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::SimplePublicObject]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseSimplePublicObject::Status,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end
end
