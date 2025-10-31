# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceStepDependencyResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute dependency_type
        #
        #   @return [String]
        required :dependency_type, String, api_name: :dependencyType

        # @!attribute relies_on_sequence_step_id
        #
        #   @return [String]
        required :relies_on_sequence_step_id, String, api_name: :reliesOnSequenceStepId

        # @!attribute relies_on_step_order
        #
        #   @return [Integer]
        required :relies_on_step_order, Integer, api_name: :reliesOnStepOrder

        # @!attribute required_by_sequence_step_id
        #
        #   @return [String]
        required :required_by_sequence_step_id, String, api_name: :requiredBySequenceStepId

        # @!attribute required_by_step_order
        #
        #   @return [Integer]
        required :required_by_step_order, Integer, api_name: :requiredByStepOrder

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, created_at:, dependency_type:, relies_on_sequence_step_id:, relies_on_step_order:, required_by_sequence_step_id:, required_by_step_order:, updated_at:)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param dependency_type [String]
        #   @param relies_on_sequence_step_id [String]
        #   @param relies_on_step_order [Integer]
        #   @param required_by_sequence_step_id [String]
        #   @param required_by_step_order [Integer]
        #   @param updated_at [Time]
      end
    end
  end
end
