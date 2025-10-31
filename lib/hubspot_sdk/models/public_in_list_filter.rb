# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicInListFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicInListFilter::FilterType]
      required :filter_type, enum: -> { HubspotSDK::PublicInListFilter::FilterType }, api_name: :filterType

      # @!attribute list_id
      #
      #   @return [String]
      required :list_id, String, api_name: :listId

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute metadata
      #
      #   @return [HubspotSDK::Models::PublicInListFilterMetadata, nil]
      optional :metadata, -> { HubspotSDK::PublicInListFilterMetadata }

      # @!method initialize(filter_type:, list_id:, operator:, metadata: nil)
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicInListFilter::FilterType]
      #   @param list_id [String]
      #   @param operator [String]
      #   @param metadata [HubspotSDK::Models::PublicInListFilterMetadata]

      # @see HubspotSDK::Models::PublicInListFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        IN_LIST = :IN_LIST

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
