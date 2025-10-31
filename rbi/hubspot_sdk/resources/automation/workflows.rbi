# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Workflows
        sig do
          params(
            api_flow_create_request:
              HubspotSDK::Automation::APIFlowCreateRequest,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::APIFlow::Variants)
        end
        def create(api_flow_create_request:, request_options: {})
        end

        sig do
          params(
            flow_id: String,
            api_flow_put_request: HubspotSDK::Automation::APIFlowPutRequest,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::APIFlow::Variants)
        end
        def update(flow_id, api_flow_put_request:, request_options: {})
        end

        sig do
          params(
            after: String,
            limit: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Automation::APIFlowListing]
          )
        end
        def list(after: nil, limit: nil, request_options: {})
        end

        sig do
          params(
            flow_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(flow_id, request_options: {})
        end

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

        sig do
          params(
            flow_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Automation::APIFlow::Variants)
        end
        def get(flow_id, request_options: {})
        end

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
          after: nil,
          before: nil,
          flow_id: nil,
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
