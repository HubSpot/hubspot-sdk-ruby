# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class StreamingCollectionResponseWithTotalHubDBTableRowV3 < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<Object>]
        required :results, HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::Unknown]

        # @!attribute total
        #   The total number of rows available in the collection.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute type
        #   Indicates the type of response, which is 'STREAMING' by default.
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type]
        required :type, enum: -> { HubSpotSDK::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Paging, nil]
        optional :paging, -> { HubSpotSDK::Paging }

        # @!method initialize(results:, total:, type:, paging: nil)
        #   @param results [Array<Object>]
        #
        #   @param total [Integer] The total number of rows available in the collection.
        #
        #   @param type [Symbol, HubSpotSDK::Models::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3::Type] Indicates the type of response, which is 'STREAMING' by default.
        #
        #   @param paging [HubSpotSDK::Models::Paging]

        # Indicates the type of response, which is 'STREAMING' by default.
        #
        # @see HubSpotSDK::Models::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          STREAMING = :STREAMING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
