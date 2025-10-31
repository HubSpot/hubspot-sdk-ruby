# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class PublicObjectSearchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute after
        #   A paging cursor token for retrieving subsequent pages.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute filter_groups
        #   Up to 6 groups of filters defining additional query criteria.
        #
        #   @return [Array<HubspotSDK::Models::CRM::FilterGroup>, nil]
        optional :filter_groups,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::FilterGroup] },
                 api_name: :filterGroups

        # @!attribute limit
        #   The maximum results to return, up to 200 objects.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute properties
        #   A list of property names to include in the response.
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute query
        #   The search query string, up to 3000 characters.
        #
        #   @return [String, nil]
        optional :query, String

        # @!attribute sorts
        #   Specifies sorting order based on object properties.
        #
        #   @return [Array<String>, nil]
        optional :sorts, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(after: nil, filter_groups: nil, limit: nil, properties: nil, query: nil, sorts: nil)
        #   Describes a search request
        #
        #   @param after [String] A paging cursor token for retrieving subsequent pages.
        #
        #   @param filter_groups [Array<HubspotSDK::Models::CRM::FilterGroup>] Up to 6 groups of filters defining additional query criteria.
        #
        #   @param limit [Integer] The maximum results to return, up to 200 objects.
        #
        #   @param properties [Array<String>] A list of property names to include in the response.
        #
        #   @param query [String] The search query string, up to 3000 characters.
        #
        #   @param sorts [Array<String>] Specifies sorting order based on object properties.
      end
    end
  end
end
