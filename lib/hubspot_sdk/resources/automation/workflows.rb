# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Automation
      class Workflows
        # Create a new workflow.
        #
        # @overload create(api_flow_create_request:, request_options: {})
        #
        # @param api_flow_create_request [HubspotSDK::Automation::APIFlowCreateRequest]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::APIContactFlow, HubspotSDK::Models::Automation::APIPlatformFlow]
        #
        # @see HubspotSDK::Models::Automation::WorkflowCreateParams
        def create(params)
          @client.request(
            method: :post,
            path: "automation/v4/flows",
            model: HubspotSDK::Automation::APIFlow,
            options: params[:request_options]
          )
        end

        # Update a workflow by ID.
        #
        # @overload update(flow_id, api_flow_put_request:, request_options: {})
        #
        # @param flow_id [String] The ID of the workflow.
        #
        # @param api_flow_put_request [HubspotSDK::Automation::APIFlowPutRequest]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::APIContactFlow, HubspotSDK::Models::Automation::APIPlatformFlow]
        #
        # @see HubspotSDK::Models::Automation::WorkflowUpdateParams
        def update(flow_id, params)
          @client.request(
            method: :put,
            path: ["automation/v4/flows/%1$s", flow_id],
            model: HubspotSDK::Automation::APIFlow,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Automation::WorkflowListParams} for more details.
        #
        # Retrieve all workflows from an account.
        #
        # @overload list(after: nil, limit: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Automation::APIFlowListing>]
        #
        # @see HubspotSDK::Models::Automation::WorkflowListParams
        def list(params = {})
          parsed, options = HubspotSDK::Automation::WorkflowListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "automation/v4/flows",
            query: parsed,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Automation::APIFlowListing,
            options: options
          )
        end

        # Fully delete a workflow by ID. Deleted workflows cannot be restored via the API.
        # If you need to restore an accidentally deleted flow, you'll need to contact
        # support.
        #
        # @overload delete(flow_id, request_options: {})
        #
        # @param flow_id [Integer] The ID of the workflow to delete.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Automation::WorkflowDeleteParams
        def delete(flow_id, params = {})
          @client.request(
            method: :delete,
            path: ["automation/v4/flows/%1$s", flow_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Retrieve a batch of workflows by ID.
        #
        # @overload batch_get(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Automation::APIFlowBatchFetchFlowIDCoordinate>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::BatchResponseAPIFlow]
        #
        # @see HubspotSDK::Models::Automation::WorkflowBatchGetParams
        def batch_get(params)
          parsed, options = HubspotSDK::Automation::WorkflowBatchGetParams.dump_request(params)
          @client.request(
            method: :post,
            path: "automation/v4/flows/batch/read",
            body: parsed,
            model: HubspotSDK::Automation::BatchResponseAPIFlow,
            options: options
          )
        end

        # Retrieve the IDs of v3 workflows that have been migrated to the v4 API.
        #
        # @overload batch_get_id_mappings(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate, HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::BatchResponseFlowIDWorkflowIDMappingResponse]
        #
        # @see HubspotSDK::Models::Automation::WorkflowBatchGetIDMappingsParams
        def batch_get_id_mappings(params)
          parsed, options = HubspotSDK::Automation::WorkflowBatchGetIDMappingsParams.dump_request(params)
          @client.request(
            method: :post,
            path: "automation/v4/workflow-id-mappings/batch/read",
            body: parsed,
            model: HubspotSDK::Automation::BatchResponseFlowIDWorkflowIDMappingResponse,
            options: options
          )
        end

        # Retrieve all details for a specific workflow by ID.
        #
        # @overload get(flow_id, request_options: {})
        #
        # @param flow_id [String] The ID of the workflow to retrieve.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::APIContactFlow, HubspotSDK::Models::Automation::APIPlatformFlow]
        #
        # @see HubspotSDK::Models::Automation::WorkflowGetParams
        def get(flow_id, params = {})
          @client.request(
            method: :get,
            path: ["automation/v4/flows/%1$s", flow_id],
            model: HubspotSDK::Automation::APIFlow,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Automation::WorkflowListEmailCampaignsParams} for more
        # details.
        #
        # Retrieve emails sent by a workflow by ID.
        #
        # @overload list_email_campaigns(after: nil, before: nil, flow_id: nil, limit: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param before [String]
        #
        # @param flow_id [Array<String>] The ID of the workflow.
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Automation::CollectionResponseAPIFlowEmailCampaign]
        #
        # @see HubspotSDK::Models::Automation::WorkflowListEmailCampaignsParams
        def list_email_campaigns(params = {})
          parsed, options = HubspotSDK::Automation::WorkflowListEmailCampaignsParams.dump_request(params)
          @client.request(
            method: :get,
            path: "automation/v4/flows/email-campaigns",
            query: parsed.transform_keys(flow_id: "flowId"),
            model: HubspotSDK::Automation::CollectionResponseAPIFlowEmailCampaign,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
