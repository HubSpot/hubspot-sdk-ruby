# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class URLMappings
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::URLMappingCreateParams} for more details.
        #
        # Create a new URL mapping in your HubSpot account. This endpoint allows you to
        # define URL redirections and mappings, which can be useful for managing site
        # navigation and SEO. The request body must include all required properties of the
        # UrlMapping schema.
        #
        # @overload create(id:, cdn_purge_embargo_time:, content_group_id:, cos_object_type:, created:, created_by_id:, deleted_at:, destination:, internally_created:, is_active:, is_match_full_url:, is_match_query_string:, is_only_after_not_found:, is_pattern:, is_protocol_agnostic:, is_regex:, is_trailing_slash_optional:, label:, name:, note:, portal_id:, precedence:, redirect_style:, route_prefix:, updated:, updated_by_id:, request_options: {})
        #
        # @param id [Integer] The unique identifier for the URL mapping, represented as a 64-bit integer.
        #
        # @param cdn_purge_embargo_time [Integer] A Unix timestamp in milliseconds indicating the embargo time for CDN purge relat
        #
        # @param content_group_id [Integer] A 64-bit integer representing the content group associated with the URL mapping.
        #
        # @param cos_object_type [Symbol, HubspotSDK::Models::Cms::URLMappingsURLMapping::CosObjectType] A string representing the type of content object associated with the URL mapping
        #
        # @param created [Integer] A Unix timestamp in milliseconds indicating when the URL mapping was created.
        #
        # @param created_by_id [Integer] The identifier of the user who created the URL mapping.
        #
        # @param deleted_at [Integer] A Unix timestamp in milliseconds indicating when the URL mapping was deleted.
        #
        # @param destination [String] The destination URL to which the routePrefix is redirected.
        #
        # @param internally_created [Boolean] A boolean indicating if the URL mapping was created internally by the system.
        #
        # @param is_active [Boolean] A boolean indicating if the URL mapping is currently active.
        #
        # @param is_match_full_url [Boolean] A boolean indicating if the full URL should be matched.
        #
        # @param is_match_query_string [Boolean] A boolean indicating if the query string should be matched.
        #
        # @param is_only_after_not_found [Boolean] A boolean indicating if the mapping should only be applied after a 404 Not Found
        #
        # @param is_pattern [Boolean] A boolean indicating if the routePrefix is a pattern.
        #
        # @param is_protocol_agnostic [Boolean] A boolean indicating if the mapping should ignore the URL protocol (http/https).
        #
        # @param is_regex [Boolean] A boolean indicating if the routePrefix should be treated as a regular expressio
        #
        # @param is_trailing_slash_optional [Boolean] A boolean indicating if the trailing slash in the URL is optional.
        #
        # @param label [String] A label for the URL mapping.
        #
        # @param name [String] The name of the URL mapping.
        #
        # @param note [String] A string containing notes about the URL mapping.
        #
        # @param portal_id [Integer] The identifier for the HubSpot portal associated with this URL mapping.
        #
        # @param precedence [Integer] An integer representing the precedence of the URL mapping, used to determine ord
        #
        # @param redirect_style [Integer] An integer representing the style of redirection used.
        #
        # @param route_prefix [String] The prefix of the URL path that is being mapped.
        #
        # @param updated [Integer] A Unix timestamp in milliseconds indicating when the URL mapping was last update
        #
        # @param updated_by_id [Integer] The identifier of the user who last updated the URL mapping.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Cms::URLMappingCreateParams
        def create(params)
          parsed, options = HubspotSDK::Cms::URLMappingCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "url-mappings/2026-03/url-mappings",
            headers: {"content-type" => "*/*", "accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Retrieve a list of URL mappings from the HubSpot account. This endpoint provides
        # access to URL mapping configurations, which can be used to manage and redirect
        # URLs within the HubSpot CMS. It is useful for understanding how URLs are
        # structured and redirected in your content management setup.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Cms::URLMappingListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "url-mappings/2026-03/url-mappings",
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: params[:request_options]
          )
        end

        # Delete a specific URL mapping in your HubSpot account using its unique
        # identifier. This operation will remove the URL mapping permanently, and it
        # requires appropriate write and delete permissions.
        #
        # @overload delete(id, request_options: {})
        #
        # @param id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::URLMappingDeleteParams
        def delete(id, params = {})
          @client.request(
            method: :delete,
            path: ["url-mappings/2026-03/url-mappings/%1$s", id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Retrieve a specific URL mapping by its unique identifier. This endpoint is
        # useful for obtaining details about a particular URL mapping configuration within
        # your HubSpot account. It requires the ID of the URL mapping as a path parameter.
        #
        # @overload get(id, request_options: {})
        #
        # @param id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Cms::URLMappingGetParams
        def get(id, params = {})
          @client.request(
            method: :get,
            path: ["url-mappings/2026-03/url-mappings/%1$s", id],
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
