# frozen_string_literal: true

require_relative "../../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Objects::FeedbackSubmissions::BatchTest < HubspotSDK::Test::ResourceTest
  def test_get_required_params
    skip("Prism tests are disabled")

    response =
      @hubspot.crm.objects.feedback_submissions.batch.get(
        inputs: [{id: "id"}],
        properties: ["string"],
        properties_with_history: ["string"]
      )

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponseSimplePublicObject
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::SimplePublicObject]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponseSimplePublicObject::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
