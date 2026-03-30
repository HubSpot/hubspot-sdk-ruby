# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class CallbackCompletionBatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute callback_id
        #   The unique identifier for the callback.
        #
        #   @return [String]
        required :callback_id, String, api_name: :callbackId

        # @!attribute output_fields
        #   Holds the output fields for the callback completion.
        #
        #   @return [Hash{Symbol=>String}]
        required :output_fields, HubspotSDK::Internal::Type::HashOf[String], api_name: :outputFields

        # @!attribute typed_outputs
        #   Contains the typed outputs for the callback completion.
        #
        #   @return [Object]
        required :typed_outputs, HubspotSDK::Internal::Type::Unknown, api_name: :typedOutputs

        # @!attribute failure_reason_type
        #   Specifies the type of failure reason for the callback completion.
        #
        #   @return [String, nil]
        optional :failure_reason_type, String, api_name: :failureReasonType

        # @!attribute request_context
        #   Defines the context of the request, which can be one of several predefined
        #   types.
        #
        #   @return [HubspotSDK::Models::Automation::WorkflowsRequestContext, HubspotSDK::Models::Automation::AgentRequestContext, HubspotSDK::Models::Automation::CopilotRequestContext, HubspotSDK::Models::Automation::StandaloneRequestContext, HubspotSDK::Models::Automation::TestRequestContext, nil]
        optional :request_context,
                 union: -> { HubspotSDK::Automation::CallbackCompletionBatchRequest::RequestContext },
                 api_name: :requestContext

        # @!method initialize(callback_id:, output_fields:, typed_outputs:, failure_reason_type: nil, request_context: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Automation::CallbackCompletionBatchRequest} for more
        #   details.
        #
        #   @param callback_id [String] The unique identifier for the callback.
        #
        #   @param output_fields [Hash{Symbol=>String}] Holds the output fields for the callback completion.
        #
        #   @param typed_outputs [Object] Contains the typed outputs for the callback completion.
        #
        #   @param failure_reason_type [String] Specifies the type of failure reason for the callback completion.
        #
        #   @param request_context [HubspotSDK::Models::Automation::WorkflowsRequestContext, HubspotSDK::Models::Automation::AgentRequestContext, HubspotSDK::Models::Automation::CopilotRequestContext, HubspotSDK::Models::Automation::StandaloneRequestContext, HubspotSDK::Models::Automation::TestRequestContext] Defines the context of the request, which can be one of several predefined types

        # Defines the context of the request, which can be one of several predefined
        # types.
        #
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
