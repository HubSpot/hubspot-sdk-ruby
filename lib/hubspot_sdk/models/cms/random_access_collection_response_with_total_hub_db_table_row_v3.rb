# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class RandomAccessCollectionResponseWithTotalHubDBTableRowV3 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<Object>]
        required :results, HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute total
        #   The total number of rows available in the collection.
        #
        #   @return [Integer]
        required :total, Integer

        # @!attribute type
        #   Indicates the type of response, which is 'RANDOM_ACCESS' by default.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3::Type]
        required :type, enum: -> { HubspotSDK::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3::Type }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Cms::BoundedPaging, nil]
        optional :paging, -> { HubspotSDK::Cms::BoundedPaging }

        # @!method initialize(results:, total:, type:, paging: nil)
        #   @param results [Array<Object>]
        #
        #   @param total [Integer] The total number of rows available in the collection.
        #
        #   @param type [Symbol, HubspotSDK::Models::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3::Type] Indicates the type of response, which is 'RANDOM_ACCESS' by default.
        #
        #   @param paging [HubspotSDK::Models::Cms::BoundedPaging]

        # Indicates the type of response, which is 'RANDOM_ACCESS' by default.
        #
        # @see HubspotSDK::Models::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          RANDOM_ACCESS = :RANDOM_ACCESS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
