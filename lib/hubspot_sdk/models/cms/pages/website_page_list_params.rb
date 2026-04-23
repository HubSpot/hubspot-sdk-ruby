# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Pages
        # @see HubSpotSDK::Resources::Cms::Pages::WebsitePages#list
        class WebsitePageListParams < HubSpotSDK::Internal::Type::BaseModel
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute after
          #   The paging cursor token of the last successfully read resource will be returned
          #   as the `paging.next.after` JSON property of a paged response containing more
          #   results.
          #
          #   @return [String, nil]
          optional :after, String

          # @!attribute archived
          #   Whether to return only results that have been archived.
          #
          #   @return [Boolean, nil]
          optional :archived, HubSpotSDK::Internal::Type::Boolean

          # @!attribute created_after
          #   Filter pages created after a specific date and time.
          #
          #   @return [Time, nil]
          optional :created_after, Time

          # @!attribute created_at
          #   Filter pages by the exact creation timestamp. Format is date-time.
          #
          #   @return [Time, nil]
          optional :created_at, Time

          # @!attribute created_before
          #   Filter pages created before a specific date-time.
          #
          #   @return [Time, nil]
          optional :created_before, Time

          # @!attribute limit
          #   The maximum number of results to display per page.
          #
          #   @return [Integer, nil]
          optional :limit, Integer

          # @!attribute property
          #   Specify properties to include in the response.
          #
          #   @return [String, nil]
          optional :property, String

          # @!attribute sort
          #   Specify the order of results. Accepts an array of field names to sort by.
          #
          #   @return [Array<String>, nil]
          optional :sort, HubSpotSDK::Internal::Type::ArrayOf[String]

          # @!attribute updated_after
          #   Filter pages updated after the specified date-time.
          #
          #   @return [Time, nil]
          optional :updated_after, Time

          # @!attribute updated_at
          #   Filter pages by their exact update timestamp in ISO 8601 format.
          #
          #   @return [Time, nil]
          optional :updated_at, Time

          # @!attribute updated_before
          #   Filter pages updated before a specific date and time. Format should be
          #   date-time.
          #
          #   @return [Time, nil]
          optional :updated_before, Time

          # @!method initialize(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubSpotSDK::Models::Cms::Pages::WebsitePageListParams} for more details.
          #
          #   @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          #   @param archived [Boolean] Whether to return only results that have been archived.
          #
          #   @param created_after [Time] Filter pages created after a specific date and time.
          #
          #   @param created_at [Time] Filter pages by the exact creation timestamp. Format is date-time.
          #
          #   @param created_before [Time] Filter pages created before a specific date-time.
          #
          #   @param limit [Integer] The maximum number of results to display per page.
          #
          #   @param property [String] Specify properties to include in the response.
          #
          #   @param sort [Array<String>] Specify the order of results. Accepts an array of field names to sort by.
          #
          #   @param updated_after [Time] Filter pages updated after the specified date-time.
          #
          #   @param updated_at [Time] Filter pages by their exact update timestamp in ISO 8601 format.
          #
          #   @param updated_before [Time] Filter pages updated before a specific date and time. Format should be date-time
          #
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
