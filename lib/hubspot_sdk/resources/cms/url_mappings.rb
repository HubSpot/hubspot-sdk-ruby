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
        # @overload create(id:, created:, destination:, is_match_full_url:, is_match_query_string:, is_only_after_not_found:, is_pattern:, is_protocol_agnostic:, is_trailing_slash_optional:, precedence:, redirect_style:, route_prefix:, updated:, request_options: {})
        #
        # @param id [String] The unique ID of this URL redirect.
        #
        # @param created [Time] The date and time when the URL mapping was initially created.
        #
        # @param destination [String] The destination URL, where the target URL should be redirected if it matches the
        #
        # @param is_match_full_url [Boolean] Whether the `routePrefix` should match on the entire URL, including the domain.
        #
        # @param is_match_query_string [Boolean] Whether the `routePrefix` should match on the entire URL path, including the que
        #
        # @param is_only_after_not_found [Boolean] Whether the URL redirect mapping should apply only if a live page on the URL isn
        #
        # @param is_pattern [Boolean] Whether the `routePrefix` should match based on pattern.
        #
        # @param is_protocol_agnostic [Boolean] Whether the `routePrefix` should match both HTTP and HTTPS protocols.
        #
        # @param is_trailing_slash_optional [Boolean] Whether a trailing slash will be ignored.
        #
        # @param precedence [Integer] Used to prioritize URL redirection. If a given URL matches more than one redirec
        #
        # @param redirect_style [Integer] The type of redirect to create. Options include: 301 (permanent), 302 (temporary
        #
        # @param route_prefix [String] The target incoming URL, path, or pattern to match for redirection.
        #
        # @param updated [Time] The date and time when the URL mapping was last modified.
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
        # @param id [Integer] The unique identifier of the URL mapping to delete. Must be an integer.
        #
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
        # @param id [Integer] The unique identifier of the URL mapping to retrieve. It must be an integer.
        #
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
