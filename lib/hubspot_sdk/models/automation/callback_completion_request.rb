# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class CallbackCompletionRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute output_fields
        #   Contains the output fields associated with the callback, with each field
        #   represented as a key-value pair.
        #
        #   @return [Hash{Symbol=>String}]
        required :output_fields, HubSpotSDK::Internal::Type::HashOf[String], api_name: :outputFields

        # @!attribute typed_outputs
        #   Holds the typed outputs related to the callback, structured as an object.
        #
        #   @return [Object]
        required :typed_outputs, HubSpotSDK::Internal::Type::Unknown, api_name: :typedOutputs

        # @!attribute failure_reason_type
        #   Indicates the reason for the failure of a callback completion.
        #
        #   @return [String, nil]
        optional :failure_reason_type, String, api_name: :failureReasonType

        # @!attribute request_context
        #   Specifies the context in which the request is made, which can be one of several
        #   predefined contexts.
        #
        #   @return [HubSpotSDK::Models::Automation::WorkflowsRequestContext, HubSpotSDK::Models::Automation::AgentRequestContext, HubSpotSDK::Models::Automation::CopilotRequestContext, HubSpotSDK::Models::Automation::StandaloneRequestContext, HubSpotSDK::Models::Automation::TestRequestContext, nil]
        optional :request_context,
                 union: -> { HubSpotSDK::Automation::CallbackCompletionRequest::RequestContext },
                 api_name: :requestContext

        # @!method initialize(output_fields:, typed_outputs:, failure_reason_type: nil, request_context: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::CallbackCompletionRequest} for more details.
        #
        #   @param output_fields [Hash{Symbol=>String}] Contains the output fields associated with the callback, with each field represe
        #
        #   @param typed_outputs [Object] Holds the typed outputs related to the callback, structured as an object.
        #
        #   @param failure_reason_type [String] Indicates the reason for the failure of a callback completion.
        #
        #   @param request_context [HubSpotSDK::Models::Automation::WorkflowsRequestContext, HubSpotSDK::Models::Automation::AgentRequestContext, HubSpotSDK::Models::Automation::CopilotRequestContext, HubSpotSDK::Models::Automation::StandaloneRequestContext, HubSpotSDK::Models::Automation::TestRequestContext] Specifies the context in which the request is made, which can be one of several

        # Specifies the context in which the request is made, which can be one of several
        # predefined contexts.
        #
        # @see HubSpotSDK::Models::Automation::CallbackCompletionRequest#request_context
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
