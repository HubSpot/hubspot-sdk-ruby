# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAdsSearchFilter < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute ad_network
        #   Ad network (ADWORDS, FACEBOOK, LINKEDIN, ALL)
        #
        #   @return [String]
        required :ad_network, String, api_name: :adNetwork

        # @!attribute entity_type
        #   Type of ad entity (KEYWORD, ADGROUP, AD, CAMPAIGN)
        #
        #   @return [String]
        required :entity_type, String, api_name: :entityType

        # @!attribute filter_type
        #   Type of the filter (ADS_SEARCH)
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicAdsSearchFilter::FilterType]
        required :filter_type,
                 enum: -> { HubSpotSDK::Crm::PublicAdsSearchFilter::FilterType },
                 api_name: :filterType

        # @!attribute operator
        #   Operator to be applied (CONTAINS, IS_EQUAL_TO, ENDS_WITH, STARTS_WITH, IS_KNOWN)
        #
        #   @return [String]
        required :operator, String

        # @!attribute search_terms
        #
        #   @return [Array<String>]
        required :search_terms, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :searchTerms

        # @!attribute search_term_type
        #   Search term to match an ad
        #
        #   @return [String]
        required :search_term_type, String, api_name: :searchTermType

        # @!method initialize(ad_network:, entity_type:, filter_type:, operator:, search_terms:, search_term_type:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicAdsSearchFilter} for more details.
        #
        #   @param ad_network [String] Ad network (ADWORDS, FACEBOOK, LINKEDIN, ALL)
        #
        #   @param entity_type [String] Type of ad entity (KEYWORD, ADGROUP, AD, CAMPAIGN)
        #
        #   @param filter_type [Symbol, HubSpotSDK::Models::Crm::PublicAdsSearchFilter::FilterType] Type of the filter (ADS_SEARCH)
        #
        #   @param operator [String] Operator to be applied (CONTAINS, IS_EQUAL_TO, ENDS_WITH, STARTS_WITH, IS_KNOWN)
        #
        #   @param search_terms [Array<String>]
        #
        #   @param search_term_type [String] Search term to match an ad

        # Type of the filter (ADS_SEARCH)
        #
        # @see HubSpotSDK::Models::Crm::PublicAdsSearchFilter#filter_type
        module FilterType
          extend HubSpotSDK::Internal::Type::Enum

          ADS_SEARCH = :ADS_SEARCH

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
