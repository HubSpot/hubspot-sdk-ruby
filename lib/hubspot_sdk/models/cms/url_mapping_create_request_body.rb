# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class URLMappingCreateRequestBody < HubspotSDK::Internal::Type::BaseModel
        # @!attribute destination
        #
        #   @return [String]
        required :destination, String

        # @!attribute redirect_style
        #
        #   @return [Integer]
        required :redirect_style, Integer, api_name: :redirectStyle

        # @!attribute route_prefix
        #
        #   @return [String]
        required :route_prefix, String, api_name: :routePrefix

        # @!attribute is_match_full_url
        #
        #   @return [Boolean, nil]
        optional :is_match_full_url, HubspotSDK::Internal::Type::Boolean, api_name: :isMatchFullUrl

        # @!attribute is_match_query_string
        #
        #   @return [Boolean, nil]
        optional :is_match_query_string, HubspotSDK::Internal::Type::Boolean, api_name: :isMatchQueryString

        # @!attribute is_only_after_not_found
        #
        #   @return [Boolean, nil]
        optional :is_only_after_not_found, HubspotSDK::Internal::Type::Boolean, api_name: :isOnlyAfterNotFound

        # @!attribute is_pattern
        #
        #   @return [Boolean, nil]
        optional :is_pattern, HubspotSDK::Internal::Type::Boolean, api_name: :isPattern

        # @!attribute is_protocol_agnostic
        #
        #   @return [Boolean, nil]
        optional :is_protocol_agnostic, HubspotSDK::Internal::Type::Boolean, api_name: :isProtocolAgnostic

        # @!attribute is_trailing_slash_optional
        #
        #   @return [Boolean, nil]
        optional :is_trailing_slash_optional,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :isTrailingSlashOptional

        # @!attribute precedence
        #
        #   @return [Integer, nil]
        optional :precedence, Integer

        # @!method initialize(destination:, redirect_style:, route_prefix:, is_match_full_url: nil, is_match_query_string: nil, is_only_after_not_found: nil, is_pattern: nil, is_protocol_agnostic: nil, is_trailing_slash_optional: nil, precedence: nil)
        #   @param destination [String]
        #   @param redirect_style [Integer]
        #   @param route_prefix [String]
        #   @param is_match_full_url [Boolean]
        #   @param is_match_query_string [Boolean]
        #   @param is_only_after_not_found [Boolean]
        #   @param is_pattern [Boolean]
        #   @param is_protocol_agnostic [Boolean]
        #   @param is_trailing_slash_optional [Boolean]
        #   @param precedence [Integer]
      end
    end
  end
end
