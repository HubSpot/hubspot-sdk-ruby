# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::URLRedirects#list
      class URLRedirectListResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of this URL redirect.
        #
        #   @return [String]
        required :id, String

        # @!attribute destination
        #   The destination URL, where the target URL should be redirected if it matches the
        #   `routePrefix`.
        #
        #   @return [String]
        required :destination, String

        # @!attribute is_match_full_url
        #   Whether the `routePrefix` should match on the entire URL, including the domain.
        #
        #   @return [Boolean]
        required :is_match_full_url, HubspotSDK::Internal::Type::Boolean, api_name: :isMatchFullUrl

        # @!attribute is_match_query_string
        #   Whether the `routePrefix` should match on the entire URL path, including the
        #   query string.
        #
        #   @return [Boolean]
        required :is_match_query_string, HubspotSDK::Internal::Type::Boolean, api_name: :isMatchQueryString

        # @!attribute is_only_after_not_found
        #   Whether the URL redirect mapping should apply only if a live page on the URL
        #   isn't found. If False, the URL redirect mapping will take precedence over any
        #   existing page.
        #
        #   @return [Boolean]
        required :is_only_after_not_found, HubspotSDK::Internal::Type::Boolean, api_name: :isOnlyAfterNotFound

        # @!attribute is_pattern
        #   Whether the `routePrefix` should match based on pattern.
        #
        #   @return [Boolean]
        required :is_pattern, HubspotSDK::Internal::Type::Boolean, api_name: :isPattern

        # @!attribute is_protocol_agnostic
        #   Whether the `routePrefix` should match both HTTP and HTTPS protocols.
        #
        #   @return [Boolean]
        required :is_protocol_agnostic, HubspotSDK::Internal::Type::Boolean, api_name: :isProtocolAgnostic

        # @!attribute is_trailing_slash_optional
        #   Whether a trailing slash will be ignored.
        #
        #   @return [Boolean]
        required :is_trailing_slash_optional,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :isTrailingSlashOptional

        # @!attribute precedence
        #   Used to prioritize URL redirection. If a given URL matches more than one
        #   redirect, the one with the **lower** precedence will be used.
        #
        #   @return [Integer]
        required :precedence, Integer

        # @!attribute redirect_style
        #   The type of redirect to create. Options include: 301 (permanent), 302
        #   (temporary), or 305 (proxy). Find more details
        #   [here](https://knowledge.hubspot.com/cos-general/how-to-redirect-a-hubspot-page).
        #
        #   @return [Integer]
        required :redirect_style, Integer, api_name: :redirectStyle

        # @!attribute route_prefix
        #   The target incoming URL, path, or pattern to match for redirection.
        #
        #   @return [String]
        required :route_prefix, String, api_name: :routePrefix

        # @!attribute created
        #
        #   @return [Time, nil]
        optional :created, Time

        # @!attribute updated
        #
        #   @return [Time, nil]
        optional :updated, Time

        # @!method initialize(id:, destination:, is_match_full_url:, is_match_query_string:, is_only_after_not_found:, is_pattern:, is_protocol_agnostic:, is_trailing_slash_optional:, precedence:, redirect_style:, route_prefix:, created: nil, updated: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::URLRedirectListResponse} for more details.
        #
        #   @param id [String] The unique ID of this URL redirect.
        #
        #   @param destination [String] The destination URL, where the target URL should be redirected if it matches the
        #
        #   @param is_match_full_url [Boolean] Whether the `routePrefix` should match on the entire URL, including the domain.
        #
        #   @param is_match_query_string [Boolean] Whether the `routePrefix` should match on the entire URL path, including the que
        #
        #   @param is_only_after_not_found [Boolean] Whether the URL redirect mapping should apply only if a live page on the URL isn
        #
        #   @param is_pattern [Boolean] Whether the `routePrefix` should match based on pattern.
        #
        #   @param is_protocol_agnostic [Boolean] Whether the `routePrefix` should match both HTTP and HTTPS protocols.
        #
        #   @param is_trailing_slash_optional [Boolean] Whether a trailing slash will be ignored.
        #
        #   @param precedence [Integer] Used to prioritize URL redirection. If a given URL matches more than one redirec
        #
        #   @param redirect_style [Integer] The type of redirect to create. Options include: 301 (permanent), 302 (temporary
        #
        #   @param route_prefix [String] The target incoming URL, path, or pattern to match for redirection.
        #
        #   @param created [Time]
        #
        #   @param updated [Time]
      end
    end
  end
end
