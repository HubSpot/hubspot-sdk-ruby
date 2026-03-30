# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PipelineReplaceInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute display_order
        #   The order for displaying this pipeline stage. If two pipeline stages have a
        #   matching `displayOrder`, they will be sorted alphabetically by label.
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #   A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
        #   label must be unique within that pipeline.
        #
        #   @return [String]
        required :label, String

        # @!attribute stages
        #   The stages associated with the pipeline. They can be retrieved and updated via
        #   the pipeline stages endpoints.
        #
        #   @return [Array<HubspotSDK::Models::Crm::PipelineStageInput>]
        required :stages, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PipelineStageInput] }

        # @!method initialize(display_order:, label:, stages:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PipelineReplaceInput} for more details.
        #
        #   @param display_order [Integer] The order for displaying this pipeline stage. If two pipeline stages have a matc
        #
        #   @param label [String] A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
        #
        #   @param stages [Array<HubspotSDK::Models::Crm::PipelineStageInput>] The stages associated with the pipeline. They can be retrieved and updated via t
      end
    end
  end
end
