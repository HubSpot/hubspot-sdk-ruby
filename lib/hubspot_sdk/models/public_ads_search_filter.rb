# frozen_string_literal: true

module HubspotSDK
  module Models
    class PublicAdsSearchFilter < HubspotSDK::Internal::Type::BaseModel
      # @!attribute ad_network
      #
      #   @return [String]
      required :ad_network, String, api_name: :adNetwork

      # @!attribute entity_type
      #
      #   @return [String]
      required :entity_type, String, api_name: :entityType

      # @!attribute filter_type
      #
      #   @return [Symbol, HubspotSDK::Models::PublicAdsSearchFilter::FilterType]
      required :filter_type, enum: -> { HubspotSDK::PublicAdsSearchFilter::FilterType }, api_name: :filterType

      # @!attribute operator
      #
      #   @return [String]
      required :operator, String

      # @!attribute search_terms
      #
      #   @return [Array<String>]
      required :search_terms, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :searchTerms

      # @!attribute search_term_type
      #
      #   @return [String]
      required :search_term_type, String, api_name: :searchTermType

      # @!method initialize(ad_network:, entity_type:, filter_type:, operator:, search_terms:, search_term_type:)
      #   @param ad_network [String]
      #   @param entity_type [String]
      #   @param filter_type [Symbol, HubspotSDK::Models::PublicAdsSearchFilter::FilterType]
      #   @param operator [String]
      #   @param search_terms [Array<String>]
      #   @param search_term_type [String]

      # @see HubspotSDK::Models::PublicAdsSearchFilter#filter_type
      module FilterType
        extend HubspotSDK::Internal::Type::Enum

        ADS_SEARCH = :ADS_SEARCH

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
