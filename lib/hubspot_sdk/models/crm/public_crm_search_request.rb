# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicCrmSearchRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_groups
        #
        #   @return [Array<HubSpotSDK::Models::Crm::FilterGroup>]
        required :filter_groups,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::FilterGroup] },
                 api_name: :filterGroups

        # @!attribute filters
        #
        #   @return [Array<HubSpotSDK::Models::Crm::Filter>]
        required :filters, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Filter] }

        # @!attribute sorts
        #   Defines the order in which the CRM records should be returned.
        #
        #   @return [Array<String>]
        required :sorts, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute query
        #   The search query string, to filter CRM records.
        #
        #   @return [String, nil]
        optional :query, String

        # @!method initialize(filter_groups:, filters:, sorts:, query: nil)
        #   @param filter_groups [Array<HubSpotSDK::Models::Crm::FilterGroup>]
        #
        #   @param filters [Array<HubSpotSDK::Models::Crm::Filter>]
        #
        #   @param sorts [Array<String>] Defines the order in which the CRM records should be returned.
        #
        #   @param query [String] The search query string, to filter CRM records.
      end
    end
  end
end
