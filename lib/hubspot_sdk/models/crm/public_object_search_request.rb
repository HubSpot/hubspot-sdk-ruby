# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicObjectSearchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute after
        #   A paging cursor token for retrieving subsequent pages.
        #
        #   @return [String]
        required :after, String

        # @!attribute filter_groups
        #   Up to 6 groups of filters defining additional query criteria.
        #
        #   @return [Array<HubspotSDK::Models::Crm::FilterGroup>]
        required :filter_groups,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::FilterGroup] },
                 api_name: :filterGroups

        # @!attribute limit
        #   The maximum results to return, up to 200 objects.
        #
        #   @return [Integer]
        required :limit, Integer

        # @!attribute properties
        #   A list of property names to include in the response.
        #
        #   @return [Array<String>]
        required :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute sorts
        #   Specifies sorting order based on object properties.
        #
        #   @return [Array<String>]
        required :sorts, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute query
        #   The search query string, up to 3000 characters.
        #
        #   @return [String, nil]
        optional :query, String

        # @!method initialize(after:, filter_groups:, limit:, properties:, sorts:, query: nil)
        #   Describes a search request
        #
        #   @param after [String] A paging cursor token for retrieving subsequent pages.
        #
        #   @param filter_groups [Array<HubspotSDK::Models::Crm::FilterGroup>] Up to 6 groups of filters defining additional query criteria.
        #
        #   @param limit [Integer] The maximum results to return, up to 200 objects.
        #
        #   @param properties [Array<String>] A list of property names to include in the response.
        #
        #   @param sorts [Array<String>] Specifies sorting order based on object properties.
        #
        #   @param query [String] The search query string, up to 3000 characters.
      end
    end
  end
end
