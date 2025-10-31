# frozen_string_literal: true

require_relative "../../test_helper"

class HubspotSDK::Test::Resources::Automation::WorkflowsTest < HubspotSDK::Test::ResourceTest
  def test_create
    skip("Prism tests are disabled")

    response = @hub_spot.automation.workflows.create

    assert_pattern do
      response => HubspotSDK::Automation::APIFlow
    end

    assert_pattern do
      case response
      in HubspotSDK::Automation::APIContactFlow
      in HubspotSDK::Automation::APIPlatformFlow
      end
    end
  end

  def test_update
    skip("Prism tests are disabled")

    response = @hub_spot.automation.workflows.update("flowId")

    assert_pattern do
      response => HubspotSDK::Automation::APIFlow
    end

    assert_pattern do
      case response
      in HubspotSDK::Automation::APIContactFlow
      in HubspotSDK::Automation::APIPlatformFlow
      end
    end
  end

  def test_list
    skip("Prism tests are disabled")

    response = @hub_spot.automation.workflows.list

    assert_pattern do
      response => HubspotSDK::Internal::Page
    end

    row = response.to_enum.first
    return if row.nil?

    assert_pattern do
      row => HubspotSDK::Automation::APIFlowListing
    end

    assert_pattern do
      row => {
        id: String,
        created_at: Time,
        flow_type: String,
        is_enabled: HubspotSDK::Internal::Type::Boolean,
        object_type_id: String,
        revision_id: String,
        updated_at: Time,
        name: String | nil,
        uuid: String | nil
      }
    end
  end

  def test_delete
    skip("Prism tests are disabled")

    response = @hub_spot.automation.workflows.delete(0)

    assert_pattern do
      response => nil
    end
  end

  def test_batch_get_required_params
    skip("Prism tests are disabled")

    response = @hub_spot.automation.workflows.batch_get(inputs: [{flowId: "flowId", type: :FLOW_ID}])

    assert_pattern do
      response => HubspotSDK::Automation::BatchResponseAPIFlow
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Automation::APIFlow]),
        started_at: Time,
        status: HubspotSDK::Automation::BatchResponseAPIFlow::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_batch_get_id_mappings_required_params
    skip("Prism tests are disabled")

    response =
      @hub_spot.automation.workflows.batch_get_id_mappings(
        inputs: [{flowMigrationStatuses: "12345", type: :FLOW_ID}]
      )

    assert_pattern do
      response => HubspotSDK::Automation::BatchResponseFlowIDWorkflowIDMappingResponse
    end

    assert_pattern do
      response => {
        completed_at: Time,
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::FlowIDWorkflowIDMappingResponse]),
        started_at: Time,
        status: HubspotSDK::Automation::BatchResponseFlowIDWorkflowIDMappingResponse::Status,
        links: ^(HubspotSDK::Internal::Type::HashOf[String]) | nil,
        requested_at: Time | nil
      }
    end
  end

  def test_get
    skip("Prism tests are disabled")

    response = @hub_spot.automation.workflows.get("flowId")

    assert_pattern do
      response => HubspotSDK::Automation::APIFlow
    end

    assert_pattern do
      case response
      in HubspotSDK::Automation::APIContactFlow
      in HubspotSDK::Automation::APIPlatformFlow
      end
    end
  end

  def test_list_email_campaigns
    skip("Prism tests are disabled")

    response = @hub_spot.automation.workflows.list_email_campaigns

    assert_pattern do
      response => HubspotSDK::Automation::CollectionResponseAPIFlowEmailCampaign
    end

    assert_pattern do
      response => {
        results: ^(HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIFlowEmailCampaign]),
        paging: HubspotSDK::Marketing::Paging | nil
      }
    end
  end
end
