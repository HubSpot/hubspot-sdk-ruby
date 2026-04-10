# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::Pages#get_landing_page_folders_by_query
      class PageGetLandingPageFoldersByQueryParams < HubSpotSDK::Internal::Type::BaseModel
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
        #
        #   @return [Time, nil]
        optional :created_after, Time

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute created_before
        #
        #   @return [Time, nil]
        optional :created_before, Time

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute property
        #
        #   @return [String, nil]
        optional :property, String

        # @!attribute sort
        #
        #   @return [Array<String>, nil]
        optional :sort, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute updated_after
        #
        #   @return [Time, nil]
        optional :updated_after, Time

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute updated_before
        #
        #   @return [Time, nil]
        optional :updated_before, Time

        # @!method initialize(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, property: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Cms::PageGetLandingPageFoldersByQueryParams} for more
        #   details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param created_after [Time]
        #
        #   @param created_at [Time]
        #
        #   @param created_before [Time]
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param property [String]
        #
        #   @param sort [Array<String>]
        #
        #   @param updated_after [Time]
        #
        #   @param updated_at [Time]
        #
        #   @param updated_before [Time]
        #
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
