# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class ActionExecutionIndexIdentifier < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute action_execution_index
        #   The index number representing the execution order of the action.
        #
        #   @return [Integer]
        required :action_execution_index, Integer, api_name: :actionExecutionIndex

        # @!attribute enrollment_id
        #   The ID associated with the enrollment process.
        #
        #   @return [Integer]
        required :enrollment_id, Integer, api_name: :enrollmentId

        # @!method initialize(action_execution_index:, enrollment_id:)
        #   @param action_execution_index [Integer] The index number representing the execution order of the action.
        #
        #   @param enrollment_id [Integer] The ID associated with the enrollment process.
      end
    end
  end
end
