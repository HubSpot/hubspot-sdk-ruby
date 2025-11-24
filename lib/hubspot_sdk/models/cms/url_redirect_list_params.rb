# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::URLRedirects#list
      class URLRedirectListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute created_after
        #   Only return redirects created after this date.
        #
        #   @return [Time, nil]
        optional :created_after, Time

        # @!attribute created_at
        #   Only return redirects created on exactly this date.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute created_before
        #   Only return redirects created before this date.
        #
        #   @return [Time, nil]
        optional :created_before, Time

        # @!attribute limit
        #   Maximum number of result per page
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute sort
        #   A query parameter to specify the order in which the URL redirects are returned.
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute updated_after
        #   Only return redirects last updated after this date.
        #
        #   @return [Time, nil]
        optional :updated_after, Time

        # @!attribute updated_at
        #   Only return redirects last updated on exactly this date.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute updated_before
        #   Only return redirects last updated before this date.
        #
        #   @return [Time, nil]
        optional :updated_before, Time

        # @!method initialize(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::URLRedirectListParams} for more details.
        #
        #   @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param created_after [Time] Only return redirects created after this date.
        #
        #   @param created_at [Time] Only return redirects created on exactly this date.
        #
        #   @param created_before [Time] Only return redirects created before this date.
        #
        #   @param limit [Integer] Maximum number of result per page
        #
        #   @param sort [Array<String>] A query parameter to specify the order in which the URL redirects are returned.
        #
        #   @param updated_after [Time] Only return redirects last updated after this date.
        #
        #   @param updated_at [Time] Only return redirects last updated on exactly this date.
        #
        #   @param updated_before [Time] Only return redirects last updated before this date.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
