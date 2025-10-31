# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Workflows
        # Create a new workflow.
        sig do
          params(
            api_flow_create_request:
              HubspotSDK::Automation::APIFlowCreateRequest,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::APIFlow::Variants)
        end
        def create(api_flow_create_request:, request_options: {})
        end

        # Update a workflow by ID.
        sig do
          params(
            flow_id: String,
            api_flow_put_request: HubspotSDK::Automation::APIFlowPutRequest,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::APIFlow::Variants)
        end
        def update(
          # The ID of the workflow.
          flow_id,
          api_flow_put_request:,
          request_options: {}
        )
        end

        # Retrieve all workflows from an account.
        sig do
          params(
            after: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Automation::APIFlowListing]
          )
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        # Fully delete a workflow by ID. Deleted workflows cannot be restored via the API.
        # If you need to restore an accidentally deleted flow, you'll need to contact
        # support.
        sig do
          params(
            flow_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The ID of the workflow to delete.
          flow_id,
          request_options: {}
        )
        end

        # Retrieve a batch of workflows by ID.
        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Automation::APIFlowBatchFetchFlowIDCoordinate::OrHash
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::BatchResponseAPIFlow)
        end
        def batch_get(inputs:, request_options: {})
        end

        # Retrieve the IDs of v3 workflows that have been migrated to the v4 API.
        sig do
          params(
            inputs:
              T::Array[
                T.any(
                  HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::OrHash,
                  HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::OrHash
                )
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Automation::BatchResponseFlowIDWorkflowIDMappingResponse
          )
        end
        def batch_get_id_mappings(inputs:, request_options: {})
        end

        # Retrieve all details for a specific workflow by ID.
        sig do
          params(
            flow_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::APIFlow::Variants)
        end
        def get(
          # The ID of the workflow to retrieve.
          flow_id,
          request_options: {}
        )
        end

        # Retrieve emails sent by a workflow by ID.
        sig do
          params(
            after: String,
            before: String,
            flow_id: T::Array[String],
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Automation::CollectionResponseAPIFlowEmailCampaign
          )
        end
        def list_email_campaigns(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          # The ID of the workflow.
          flow_id: nil,
          # The maximum number of results to display per page.
          limit: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
