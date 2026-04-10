# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class RandomAccessCollectionResponseWithTotalHubDBTableRowV3 < HubSpotSDK::Internal::Type::BaseModel
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
        #   Indicates the type of response, which is 'RANDOM_ACCESS' by default.
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3::Type]
        required :type, enum: -> { HubSpotSDK::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3::Type }

        # @!attribute paging
        #
        #   @return [HubSpotSDK::Models::Cms::BoundedPaging, nil]
        optional :paging, -> { HubSpotSDK::Cms::BoundedPaging }

        # @!method initialize(results:, total:, type:, paging: nil)
        #   @param results [Array<Object>]
        #
        #   @param total [Integer] The total number of rows available in the collection.
        #
        #   @param type [Symbol, HubSpotSDK::Models::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3::Type] Indicates the type of response, which is 'RANDOM_ACCESS' by default.
        #
        #   @param paging [HubSpotSDK::Models::Cms::BoundedPaging]

        # Indicates the type of response, which is 'RANDOM_ACCESS' by default.
        #
        # @see HubSpotSDK::Models::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3#type
        module Type
          extend HubSpotSDK::Internal::Type::Enum

          RANDOM_ACCESS = :RANDOM_ACCESS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
