# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicSequenceStepResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the sequence step.
        #
        #   @return [String]
        required :id, String

        # @!attribute action_type
        #   The type of action to be performed in the sequence step.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::PublicSequenceStepResponse::ActionType]
        required :action_type,
                 enum: -> { HubSpotSDK::Automation::PublicSequenceStepResponse::ActionType },
                 api_name: :actionType

        # @!attribute created_at
        #   The date and time when the sequence step was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute delay_millis
        #   The delay in milliseconds before the sequence step is executed.
        #
        #   @return [Integer]
        required :delay_millis, Integer, api_name: :delayMillis

        # @!attribute step_order
        #   The order of the step within the sequence.
        #
        #   @return [Integer]
        required :step_order, Integer, api_name: :stepOrder

        # @!attribute updated_at
        #   The date and time when the sequence step was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute email_pattern
        #
        #   @return [HubSpotSDK::Models::Automation::PublicEmailPatternResponse, nil]
        optional :email_pattern,
                 -> { HubSpotSDK::Automation::PublicEmailPatternResponse },
                 api_name: :emailPattern

        # @!attribute task_pattern
        #
        #   @return [HubSpotSDK::Models::Automation::PublicTaskPatternResponse, nil]
        optional :task_pattern,
                 -> {
                   HubSpotSDK::Automation::PublicTaskPatternResponse
                 },
                 api_name: :taskPattern

        # @!method initialize(id:, action_type:, created_at:, delay_millis:, step_order:, updated_at:, email_pattern: nil, task_pattern: nil)
        #   @param id [String] The unique identifier of the sequence step.
        #
        #   @param action_type [Symbol, HubSpotSDK::Models::Automation::PublicSequenceStepResponse::ActionType] The type of action to be performed in the sequence step.
        #
        #   @param created_at [Time] The date and time when the sequence step was created.
        #
        #   @param delay_millis [Integer] The delay in milliseconds before the sequence step is executed.
        #
        #   @param step_order [Integer] The order of the step within the sequence.
        #
        #   @param updated_at [Time] The date and time when the sequence step was last updated.
        #
        #   @param email_pattern [HubSpotSDK::Models::Automation::PublicEmailPatternResponse]
        #
        #   @param task_pattern [HubSpotSDK::Models::Automation::PublicTaskPatternResponse]

        # The type of action to be performed in the sequence step.
        #
        # @see HubSpotSDK::Models::Automation::PublicSequenceStepResponse#action_type
        module ActionType
          extend HubSpotSDK::Internal::Type::Enum

          EMAIL = :EMAIL
          FINISH_ENROLLMENT = :FINISH_ENROLLMENT
          TASK = :TASK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
