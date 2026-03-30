# frozen_string_literal: true

require_relative "../../../test_helper"

class HubspotSDK::Test::Resources::Crm::Timeline::BatchTest < HubspotSDK::Test::ResourceTest
  def test_create_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.timeline.batch.create(
        inputs: [{id: "id", eventTypeName: "eventTypeName", properties: {foo: "string"}}]
      )

    assert_pattern do
      response => HubspotSDK::Crm::BatchResponseAppEventOccurrence
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AppEventOccurrence]),
        started_at: Time,
        status: HubspotSDK::Crm::BatchResponseAppEventOccurrence::Status,
        errors: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError]) | nil,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        num_errors: Integer | nil,
        requested_at: Time | nil
      }
    end
  end
end
