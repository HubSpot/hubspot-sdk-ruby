# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class CallbackCompletionRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute output_fields
        #
        #   @return [Hash{Symbol=>String}]
        required :output_fields, HubspotSDK::Internal::Type::HashOf[String], api_name: :outputFields

        # @!attribute typed_outputs
        #
        #   @return [Object]
        required :typed_outputs, HubspotSDK::Internal::Type::Unknown, api_name: :typedOutputs

        # @!attribute failure_reason_type
        #
        #   @return [String, nil]
        optional :failure_reason_type, String, api_name: :failureReasonType

        # @!attribute request_context
        #
        #   @return [HubspotSDK::Models::Automation::WorkflowsRequestContext, HubspotSDK::Models::Automation::AgentRequestContext, HubspotSDK::Models::Automation::CopilotRequestContext, HubspotSDK::Models::Automation::StandaloneRequestContext, HubspotSDK::Models::Automation::TestRequestContext, nil]
        optional :request_context,
                 union: -> { HubspotSDK::Automation::CallbackCompletionRequest::RequestContext },
                 api_name: :requestContext

        # @!method initialize(output_fields:, typed_outputs:, failure_reason_type: nil, request_context: nil)
        #   @param output_fields [Hash{Symbol=>String}]
        #   @param typed_outputs [Object]
        #   @param failure_reason_type [String]
        #   @param request_context [HubspotSDK::Models::Automation::WorkflowsRequestContext, HubspotSDK::Models::Automation::AgentRequestContext, HubspotSDK::Models::Automation::CopilotRequestContext, HubspotSDK::Models::Automation::StandaloneRequestContext, HubspotSDK::Models::Automation::TestRequestContext]

        # @see HubspotSDK::Models::Automation::CallbackCompletionRequest#request_context
        module RequestContext
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::WorkflowsRequestContext }

          variant -> { HubspotSDK::Automation::AgentRequestContext }

          variant -> { HubspotSDK::Automation::CopilotRequestContext }

          variant -> { HubspotSDK::Automation::StandaloneRequestContext }

          variant -> { HubspotSDK::Automation::TestRequestContext }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::WorkflowsRequestContext, HubspotSDK::Models::Automation::AgentRequestContext, HubspotSDK::Models::Automation::CopilotRequestContext, HubspotSDK::Models::Automation::StandaloneRequestContext, HubspotSDK::Models::Automation::TestRequestContext)]
        end
      end
    end
  end
end
