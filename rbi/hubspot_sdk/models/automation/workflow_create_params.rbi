# typed: strong

module HubspotSDK
  module Models
    module Automation
      class WorkflowCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::WorkflowCreateParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              HubspotSDK::Automation::APIContactFlowCreateRequest,
              HubspotSDK::Automation::APIPlatformFlowCreateRequest
            )
          )
        end
        attr_accessor :api_flow_create_request

        sig do
          params(
            api_flow_create_request:
              T.any(
                HubspotSDK::Automation::APIContactFlowCreateRequest::OrHash,
                HubspotSDK::Automation::APIPlatformFlowCreateRequest::OrHash
              ),
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(api_flow_create_request:, request_options: {})
        end

        sig do
          override.returns(
            {
              api_flow_create_request:
                T.any(
                  HubspotSDK::Automation::APIContactFlowCreateRequest,
                  HubspotSDK::Automation::APIPlatformFlowCreateRequest
                ),
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
