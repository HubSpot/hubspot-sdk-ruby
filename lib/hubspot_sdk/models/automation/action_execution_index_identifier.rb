# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class ActionExecutionIndexIdentifier < HubspotSDK::Internal::Type::BaseModel
        # @!attribute action_execution_index
        #
        #   @return [Integer]
        required :action_execution_index, Integer, api_name: :actionExecutionIndex

        # @!attribute enrollment_id
        #
        #   @return [Integer]
        required :enrollment_id, Integer, api_name: :enrollmentId

        # @!method initialize(action_execution_index:, enrollment_id:)
        #   @param action_execution_index [Integer]
        #   @param enrollment_id [Integer]
      end
    end
  end
end
