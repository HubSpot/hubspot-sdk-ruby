# frozen_string_literal: true

require_relative "../../test_helper"

class HubSpotSDK::Test::Resources::Crm::TimelineTest < HubSpotSDK::Test::ResourceTest
  def test_create_event_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.timeline.create_event(
        id: "id",
        event_type_name: "eventTypeName",
        properties: {foo: "string"}
      )

    assert_pattern do
      response => nil
    end
  end

  def test_create_project_type_required_params
    skip("Mock server tests are disabled")

    response =
      @hubspot.crm.timeline.create_project_type(
        developer_symbol: "developerSymbol",
        project_name: "projectName"
      )

    assert_pattern do
      response => HubSpotSDK::Crm::AppEventResolutionResponse
    end

    assert_pattern do
      response => {
        developer_qualified_symbol: HubSpotSDK::Crm::DeveloperQualifiedSymbol,
        fully_qualified_name: String
      }
    end
  end
end
