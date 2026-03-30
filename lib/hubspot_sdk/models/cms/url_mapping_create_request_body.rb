# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class URLMappingCreateRequestBody < HubspotSDK::Internal::Type::BaseModel
        # @!attribute destination
        #   The destination URL, where the target URL should be redirected if it matches the
        #   `routePrefix`.
        #
        #   @return [String]
        required :destination, String

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

        # @!attribute is_match_full_url
        #   Whether the `routePrefix` should match on the entire URL, including the domain.
        #
        #   @return [Boolean, nil]
        optional :is_match_full_url, HubspotSDK::Internal::Type::Boolean, api_name: :isMatchFullUrl

        # @!attribute is_match_query_string
        #   Whether the `routePrefix` should match on the entire URL path, including the
        #   query string.
        #
        #   @return [Boolean, nil]
        optional :is_match_query_string, HubspotSDK::Internal::Type::Boolean, api_name: :isMatchQueryString

        # @!attribute is_only_after_not_found
        #   Whether the URL redirect mapping should apply only if a live page on the URL
        #   isn't found. If False, the URL redirect mapping will take precedence over any
        #   existing page.
        #
        #   @return [Boolean, nil]
        optional :is_only_after_not_found, HubspotSDK::Internal::Type::Boolean, api_name: :isOnlyAfterNotFound

        # @!attribute is_pattern
        #   Whether the `routePrefix` should match based on pattern.
        #
        #   @return [Boolean, nil]
        optional :is_pattern, HubspotSDK::Internal::Type::Boolean, api_name: :isPattern

        # @!attribute is_protocol_agnostic
        #   Whether the `routePrefix` should match both HTTP and HTTPS protocols.
        #
        #   @return [Boolean, nil]
        optional :is_protocol_agnostic, HubspotSDK::Internal::Type::Boolean, api_name: :isProtocolAgnostic

        # @!attribute is_trailing_slash_optional
        #   Whether a trailing slash will be ignored.
        #
        #   @return [Boolean, nil]
        optional :is_trailing_slash_optional,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :isTrailingSlashOptional

        # @!attribute precedence
        #   Used to prioritize URL redirection. If a given URL matches more than one
        #   redirect, the one with the **lower** precedence will be used.
        #
        #   @return [Integer, nil]
        optional :precedence, Integer

        # @!method initialize(destination:, redirect_style:, route_prefix:, is_match_full_url: nil, is_match_query_string: nil, is_only_after_not_found: nil, is_pattern: nil, is_protocol_agnostic: nil, is_trailing_slash_optional: nil, precedence: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::URLMappingCreateRequestBody} for more details.
        #
        #   @param destination [String] The destination URL, where the target URL should be redirected if it matches the
        #
        #   @param redirect_style [Integer] The type of redirect to create. Options include: 301 (permanent), 302 (temporary
        #
        #   @param route_prefix [String] The target incoming URL, path, or pattern to match for redirection.
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
      end
    end
  end
end
