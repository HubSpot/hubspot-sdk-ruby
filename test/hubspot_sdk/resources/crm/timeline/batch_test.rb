# frozen_string_literal: true

require_relative "../../../test_helper"

class HubSpotSDK::Test::Resources::Crm::Timeline::BatchTest < HubSpotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.timeline.batch.create(
        inputs: [{id: "id", eventTypeName: "eventTypeName", properties: {foo: "string"}}]
      )

    assert_pattern do
      response => HubSpotSDK::Crm::BatchResponseAppEventOccurrence
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::AppEventOccurrence]),
        started_at: Time,
        status: HubSpotSDK::Crm::BatchResponseAppEventOccurrence::Status,
        errors: ^(HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError]) | nil,
        links: ^(HubSpotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
