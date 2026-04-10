# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class WorkflowsRequestContext < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute source
        #   Indicates the source of the request, with the default value being WORKFLOWS.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::WorkflowsRequestContext::Source]
        required :source, enum: -> { HubSpotSDK::Automation::WorkflowsRequestContext::Source }

        # @!attribute workflow_id
        #   The ID of the workflow associated with the request context.
        #
        #   @return [Integer]
        required :workflow_id, Integer, api_name: :workflowId

        # @!attribute action_execution_index_identifier
        #
        #   @return [HubSpotSDK::Models::Automation::ActionExecutionIndexIdentifier, nil]
        optional :action_execution_index_identifier,
                 -> { HubSpotSDK::Automation::ActionExecutionIndexIdentifier },
                 api_name: :actionExecutionIndexIdentifier

        # @!attribute action_id
        #   The ID of the action within the workflow context.
        #
        #   @return [Integer, nil]
        optional :action_id, Integer, api_name: :actionId

        # @!method initialize(source:, workflow_id:, action_execution_index_identifier: nil, action_id: nil)
        #   @param source [Symbol, HubSpotSDK::Models::Automation::WorkflowsRequestContext::Source] Indicates the source of the request, with the default value being WORKFLOWS.
        #
        #   @param workflow_id [Integer] The ID of the workflow associated with the request context.
        #
        #   @param action_execution_index_identifier [HubSpotSDK::Models::Automation::ActionExecutionIndexIdentifier]
        #
        #   @param action_id [Integer] The ID of the action within the workflow context.

        # Indicates the source of the request, with the default value being WORKFLOWS.
        #
        # @see HubSpotSDK::Models::Automation::WorkflowsRequestContext#source
        module Source
          extend HubSpotSDK::Internal::Type::Enum

          WORKFLOWS = :WORKFLOWS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
