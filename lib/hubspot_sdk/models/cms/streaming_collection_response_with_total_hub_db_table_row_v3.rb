# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class StreamingCollectionResponseWithTotalHubDBTableRowV3 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<Object>]
        required :results, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute total
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type]
        required :type, enum: -> { HubspotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type }

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::EmailsPaging, nil]
        optional :paging, -> { HubspotSDK::Marketing::EmailsPaging }

        # @!method initialize(results:, total:, type:, paging: nil)
        #   @param results [Array<Object>]
        #
        #   @param total [Integer]
        #
        #   @param type [Symbol, HubspotSDK::Models::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type]
        #
        #   @param paging [HubspotSDK::Models::Marketing::EmailsPaging] Contains information pagination of results.

        # @see HubspotSDK::Models::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          STREAMING = :STREAMING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
