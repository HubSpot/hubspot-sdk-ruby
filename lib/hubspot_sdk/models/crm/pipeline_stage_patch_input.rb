# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PipelineStagePatchInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute metadata
        #
        #   @return [Hash{Symbol=>String}]
        required :metadata, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute archived
        #   Whether the pipeline is archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute display_order
        #
        #   @return [Integer, nil]
        optional :display_order, Integer, api_name: :displayOrder

        # @!attribute label
        #   A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
        #   label must be unique within that pipeline.
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(metadata:, archived: nil, display_order: nil, label: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PipelineStagePatchInput} for more details.
        #
        #   @param metadata [Hash{Symbol=>String}]
        #
        #   @param archived [Boolean] Whether the pipeline is archived.
        #
        #   @param display_order [Integer]
        #
        #   @param label [String] A label used to organize pipeline stages in HubSpot's UI. Each pipeline stage's
      end
    end
  end
end
