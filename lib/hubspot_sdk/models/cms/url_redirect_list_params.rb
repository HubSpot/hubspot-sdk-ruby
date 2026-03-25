# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::URLRedirects#list
      class URLRedirectListParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute after
        #   A cursor token for pagination. Use the value from the previous response's
        #   paging.next.after field.
        #
        #   @return [String, nil]
        optional :after, String

        # @!attribute archived
        #   Whether to return only results that have been archived.
        #
        #   @return [Boolean, nil]
        optional :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute created_after
        #   Filter redirects created after a specific timestamp. Format must be date-time.
        #
        #   @return [Time, nil]
        optional :created_after, Time

        # @!attribute created_at
        #   Filter redirects by their exact creation timestamp. Format must be date-time.
        #
        #   @return [Time, nil]
        optional :created_at, Time

        # @!attribute created_before
        #   Filter redirects created before a specific timestamp. Format must be date-time.
        #
        #   @return [Time, nil]
        optional :created_before, Time

        # @!attribute limit
        #   The maximum number of results to display per page.
        #
        #   @return [Integer, nil]
        optional :limit, Integer

        # @!attribute sort
        #   Specify the order in which to sort the results. Accepts an array of strings.
        #
        #   @return [Array<String>, nil]
        optional :sort, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute updated_after
        #   Filter redirects updated after a specific timestamp. Format must be date-time.
        #
        #   @return [Time, nil]
        optional :updated_after, Time

        # @!attribute updated_at
        #   Filter redirects by their exact update timestamp. Format must be date-time.
        #
        #   @return [Time, nil]
        optional :updated_at, Time

        # @!attribute updated_before
        #   Filter redirects updated before a specific timestamp. Format must be date-time.
        #
        #   @return [Time, nil]
        optional :updated_before, Time

        # @!method initialize(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::URLRedirectListParams} for more details.
        #
        #   @param after [String] A cursor token for pagination. Use the value from the previous response's paging
        #
        #   @param archived [Boolean] Whether to return only results that have been archived.
        #
        #   @param created_after [Time] Filter redirects created after a specific timestamp. Format must be date-time.
        #
        #   @param created_at [Time] Filter redirects by their exact creation timestamp. Format must be date-time.
        #
        #   @param created_before [Time] Filter redirects created before a specific timestamp. Format must be date-time.
        #
        #   @param limit [Integer] The maximum number of results to display per page.
        #
        #   @param sort [Array<String>] Specify the order in which to sort the results. Accepts an array of strings.
        #
        #   @param updated_after [Time] Filter redirects updated after a specific timestamp. Format must be date-time.
        #
        #   @param updated_at [Time] Filter redirects by their exact update timestamp. Format must be date-time.
        #
        #   @param updated_before [Time] Filter redirects updated before a specific timestamp. Format must be date-time.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
