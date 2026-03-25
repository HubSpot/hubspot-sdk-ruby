# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class CallbackCompletionBatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute callback_id
        #
        #   @return [String]
        required :callback_id, String, api_name: :callbackId

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
                 union: -> { HubspotSDK::Automation::CallbackCompletionBatchRequest::RequestContext },
                 api_name: :requestContext

        # @!method initialize(callback_id:, output_fields:, typed_outputs:, failure_reason_type: nil, request_context: nil)
        #   @param callback_id [String]
        #   @param output_fields [Hash{Symbol=>String}]
        #   @param typed_outputs [Object]
        #   @param failure_reason_type [String]
        #   @param request_context [HubspotSDK::Models::Automation::WorkflowsRequestContext, HubspotSDK::Models::Automation::AgentRequestContext, HubspotSDK::Models::Automation::CopilotRequestContext, HubspotSDK::Models::Automation::StandaloneRequestContext, HubspotSDK::Models::Automation::TestRequestContext]

        # @see HubspotSDK::Models::Automation::CallbackCompletionBatchRequest#request_context
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
