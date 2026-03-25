# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PipelineStageReplaceInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute display_order
        #
        #   @return [Integer]
        required :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute metadata
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, HubspotSDK::Internal::Type::HashOf[String]

        # @!method initialize(display_order:, label:, metadata:)
        #   @param display_order [Integer]
        #   @param label [String]
        #   @param metadata [Hash{Symbol=>String}]
      end
    end
  end
end
