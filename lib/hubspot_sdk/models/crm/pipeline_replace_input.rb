# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PipelineReplaceInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute display_order
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute stages
        #
        #   @return [Array<HubspotSDK::Models::Crm::PipelineStageInput>]
        required :stages, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PipelineStageInput] }

        # @!method initialize(display_order:, label:, stages:)
        #   @param display_order [Integer]
        #   @param label [String]
        #   @param stages [Array<HubspotSDK::Models::Crm::PipelineStageInput>]
      end
    end
  end
end
