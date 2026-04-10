# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class PublicSequenceStepDependencyResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier of the step dependency.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The date and time when the step dependency was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute dependency_type
        #   The type of dependency between sequence steps with accepted values being
        #   TASK_COMPLETION or MANUAL_PAUSE.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::PublicSequenceStepDependencyResponse::DependencyType]
        required :dependency_type,
                 enum: -> { HubSpotSDK::Automation::PublicSequenceStepDependencyResponse::DependencyType },
                 api_name: :dependencyType

        # @!attribute relies_on_sequence_step_id
        #   The unique identifier of the sequence step that is responsible for creating and
        #   resolving this dependency.
        #
        #   @return [String]
        required :relies_on_sequence_step_id, String, api_name: :reliesOnSequenceStepId

        # @!attribute relies_on_step_order
        #   The order number of the step that is responsible for creating and resolving this
        #   dependency.
        #
        #   @return [Integer]
        required :relies_on_step_order, Integer, api_name: :reliesOnStepOrder

        # @!attribute required_by_sequence_step_id
        #   The unique identifier of the sequence step that requires this dependency.
        #
        #   @return [String]
        required :required_by_sequence_step_id, String, api_name: :requiredBySequenceStepId

        # @!attribute required_by_step_order
        #   The order number of the step that requires this dependency.
        #
        #   @return [Integer]
        required :required_by_step_order, Integer, api_name: :requiredByStepOrder

        # @!attribute updated_at
        #   The date and time when the step dependency was last updated.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, created_at:, dependency_type:, relies_on_sequence_step_id:, relies_on_step_order:, required_by_sequence_step_id:, required_by_step_order:, updated_at:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Automation::PublicSequenceStepDependencyResponse} for more
        #   details.
        #
        #   @param id [String] The unique identifier of the step dependency.
        #
        #   @param created_at [Time] The date and time when the step dependency was created.
        #
        #   @param dependency_type [Symbol, HubSpotSDK::Models::Automation::PublicSequenceStepDependencyResponse::DependencyType] The type of dependency between sequence steps with accepted values being TASK_CO
        #
        #   @param relies_on_sequence_step_id [String] The unique identifier of the sequence step that is responsible for creating and
        #
        #   @param relies_on_step_order [Integer] The order number of the step that is responsible for creating and resolving this
        #
        #   @param required_by_sequence_step_id [String] The unique identifier of the sequence step that requires this dependency.
        #
        #   @param required_by_step_order [Integer] The order number of the step that requires this dependency.
        #
        #   @param updated_at [Time] The date and time when the step dependency was last updated.

        # The type of dependency between sequence steps with accepted values being
        # TASK_COMPLETION or MANUAL_PAUSE.
        #
        # @see HubSpotSDK::Models::Automation::PublicSequenceStepDependencyResponse#dependency_type
        module DependencyType
          extend HubSpotSDK::Internal::Type::Enum

          MANUAL_PAUSE = :MANUAL_PAUSE
          TASK_COMPLETION = :TASK_COMPLETION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
