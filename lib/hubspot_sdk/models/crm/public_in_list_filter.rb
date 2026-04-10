# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicInListFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_type
        #   Indicates the type of filter being applied (IN_LIST).
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicInListFilter::FilterType]
        required :filter_type,
                 enum: -> {
                   HubSpotSDK::Crm::PublicInListFilter::FilterType
                 },
                 api_name: :filterType

        # @!attribute list_id
        #   The ID of the list used in the association filter.
        #
        #   @return [String]
        required :list_id, String, api_name: :listId

        # @!attribute operator
        #   Specifies the operation to be performed by the filter (IN_LIST, NOT_IN_LIST).
        #
        #   @return [String]
        required :operator, String

        # @!attribute metadata
        #
        #   @return [HubSpotSDK::Models::Crm::PublicInListFilterMetadata, nil]
        optional :metadata, -> { HubSpotSDK::Crm::PublicInListFilterMetadata }

        # @!method initialize(filter_type:, list_id:, operator:, metadata: nil)
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicInListFilter::FilterType] Indicates the type of filter being applied (IN_LIST).
        #
        #   @param list_id [String] The ID of the list used in the association filter.
        #
        #   @param operator [String] Specifies the operation to be performed by the filter (IN_LIST, NOT_IN_LIST).
        #
        #   @param metadata [HubSpotSDK::Models::Crm::PublicInListFilterMetadata]

        # Indicates the type of filter being applied (IN_LIST).
        #
        # @see HubSpotSDK::Models::Crm::PublicInListFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          IN_LIST = :IN_LIST

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
