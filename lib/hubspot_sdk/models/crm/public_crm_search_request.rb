# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicCrmSearchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_groups
        #
        #   @return [Array<HubspotSDK::Models::Crm::FilterGroup>]
        required :filter_groups,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::FilterGroup] },
                 api_name: :filterGroups

        # @!attribute filters
        #
        #   @return [Array<HubspotSDK::Models::Crm::Filter>]
        required :filters, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Filter] }

        # @!attribute sorts
        #   Defines the order in which the CRM records should be returned.
        #
        #   @return [Array<String>]
        required :sorts, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute query
        #   The search query string, to filter CRM records.
        #
        #   @return [String, nil]
        optional :query, String

        # @!method initialize(filter_groups:, filters:, sorts:, query: nil)
        #   @param filter_groups [Array<HubspotSDK::Models::Crm::FilterGroup>]
        #
        #   @param filters [Array<HubspotSDK::Models::Crm::Filter>]
        #
        #   @param sorts [Array<String>] Defines the order in which the CRM records should be returned.
        #
        #   @param query [String] The search query string, to filter CRM records.
      end
    end
  end
end
