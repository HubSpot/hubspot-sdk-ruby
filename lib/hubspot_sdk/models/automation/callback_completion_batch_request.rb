# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class CallbackCompletionBatchRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute callback_id
        #   The unique identifier for the callback.
        #
        #   @return [String]
        required :callback_id, String, api_name: :callbackId

        # @!attribute output_fields
        #   Holds the output fields for the callback completion.
        #
        #   @return [Hash{Symbol=>String}]
        required :output_fields, HubSpotSDK::Internal::Type::HashOf[String], api_name: :outputFields

        # @!attribute typed_outputs
        #   Contains the typed outputs for the callback completion.
        #
        #   @return [Object]
        required :typed_outputs, HubSpotSDK::Internal::Type::Unknown, api_name: :typedOutputs

        # @!attribute failure_reason_type
        #   Specifies the type of failure reason for the callback completion.
        #
        #   @return [String, nil]
        optional :failure_reason_type, String, api_name: :failureReasonType

        # @!attribute request_context
        #   Defines the context of the request, which can be one of several predefined
        #   types.
        #
        #   @return [HubSpotSDK::Models::Automation::WorkflowsRequestContext, HubSpotSDK::Models::Automation::AgentRequestContext, HubSpotSDK::Models::Automation::CopilotRequestContext, HubSpotSDK::Models::Automation::StandaloneRequestContext, HubSpotSDK::Models::Automation::TestRequestContext, nil]
        optional :request_context,
                 union: -> { HubSpotSDK::Automation::CallbackCompletionBatchRequest::RequestContext },
                 api_name: :requestContext

        # @!method initialize(callback_id:, output_fields:, typed_outputs:, failure_reason_type: nil, request_context: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::CallbackCompletionBatchRequest} for more
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
        #   @param request_context [HubSpotSDK::Models::Automation::WorkflowsRequestContext, HubSpotSDK::Models::Automation::AgentRequestContext, HubSpotSDK::Models::Automation::CopilotRequestContext, HubSpotSDK::Models::Automation::StandaloneRequestContext, HubSpotSDK::Models::Automation::TestRequestContext] Defines the context of the request, which can be one of several predefined types

        # Defines the context of the request, which can be one of several predefined
        # types.
        #
        # @see HubSpotSDK::Models::Automation::CallbackCompletionBatchRequest#request_context
        module RequestContext
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Automation::WorkflowsRequestContext }

          variant -> { HubSpotSDK::Automation::AgentRequestContext }

          variant -> { HubSpotSDK::Automation::CopilotRequestContext }

          variant -> { HubSpotSDK::Automation::StandaloneRequestContext }

          variant -> { HubSpotSDK::Automation::TestRequestContext }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Automation::WorkflowsRequestContext, HubSpotSDK::Models::Automation::AgentRequestContext, HubSpotSDK::Models::Automation::CopilotRequestContext, HubSpotSDK::Models::Automation::StandaloneRequestContext, HubSpotSDK::Models::Automation::TestRequestContext)]
        end
      end
    end
  end
end
