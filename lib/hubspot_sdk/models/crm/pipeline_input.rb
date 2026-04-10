# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PipelineInput < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute display_order
        #   The order for displaying this pipeline. If two pipelines have a matching
        #   `displayOrder`, they will be sorted alphabetically by label.
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #   A unique label used to organize pipelines in HubSpot's UI
        #
        #   @return [String]
        required :label, String

        # @!attribute stages
        #   Pipeline stage inputs used to create the new or replacement pipeline.
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PipelineStageInput>]
        required :stages, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PipelineStageInput] }

        # @!attribute pipeline_id
        #
        #   @return [String, nil]
        optional :pipeline_id, String, api_name: :pipelineId

        # @!method initialize(display_order:, label:, stages:, pipeline_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PipelineInput} for more details.
        #
        #   @param display_order [Integer] The order for displaying this pipeline. If two pipelines have a matching `displa
        #
        #   @param label [String] A unique label used to organize pipelines in HubSpot's UI
        #
        #   @param stages [Array<HubSpotSDK::Models::Crm::PipelineStageInput>] Pipeline stage inputs used to create the new or replacement pipeline.
        #
        #   @param pipeline_id [String]
      end
    end
  end
end
