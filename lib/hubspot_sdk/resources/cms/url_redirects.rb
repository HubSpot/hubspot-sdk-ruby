# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class URLRedirects
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::URLRedirectCreateParams} for more details.
        #
        # Create a new URL redirect in your HubSpot account. This endpoint allows you to
        # define a new URL mapping that redirects traffic from a specified route to a
        # destination URL. This is useful for managing URL changes, handling outdated
        # links, or creating short links.
        #
        # @overload create(destination:, redirect_style:, route_prefix:, is_match_full_url: nil, is_match_query_string: nil, is_only_after_not_found: nil, is_pattern: nil, is_protocol_agnostic: nil, is_trailing_slash_optional: nil, precedence: nil, request_options: {})
        #
        # @param destination [String] The destination URL, where the target URL should be redirected if it matches the
        #
        # @param redirect_style [Integer] The type of redirect to create. Options include: 301 (permanent), 302 (temporary
        #
        # @param route_prefix [String] The target incoming URL, path, or pattern to match for redirection.
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::URLMapping]
        #
        # @see HubSpotSDK::Models::Cms::URLRedirectCreateParams
        def create(params)
          parsed, options = HubSpotSDK::Cms::URLRedirectCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "cms/url-redirects/2026-03",
            body: parsed,
            model: HubSpotSDK::Cms::URLMapping,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::URLRedirectUpdateParams} for more details.
        #
        # Updates the settings for an existing URL redirect.
        #
        # @overload update(url_redirect_id, id:, created:, destination:, is_match_full_url:, is_match_query_string:, is_only_after_not_found:, is_pattern:, is_protocol_agnostic:, is_trailing_slash_optional:, precedence:, redirect_style:, route_prefix:, updated:, request_options: {})
        #
        # @param url_redirect_id [String]
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::URLMapping]
        #
        # @see HubSpotSDK::Models::Cms::URLRedirectUpdateParams
        def update(url_redirect_id, params)
          parsed, options = HubSpotSDK::Cms::URLRedirectUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["cms/url-redirects/2026-03/%1$s", url_redirect_id],
            body: parsed,
            model: HubSpotSDK::Cms::URLMapping,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Cms::URLRedirectListParams} for more details.
        #
        # Retrieve a list of URL redirects configured in your HubSpot account. This
        # endpoint allows you to filter redirects based on their creation or update
        # timestamps, and sort the results. It supports pagination and can include
        # archived redirects if specified.
        #
        # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param created_after [Time]
        #
        # @param created_at [Time]
        #
        # @param created_before [Time]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param sort [Array<String>]
        #
        # @param updated_after [Time]
        #
        # @param updated_at [Time]
        #
        # @param updated_before [Time]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Cms::URLMapping>]
        #
        # @see HubSpotSDK::Models::Cms::URLRedirectListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Cms::URLRedirectListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "cms/url-redirects/2026-03",
            query: query.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore"
            ),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Cms::URLMapping,
            options: options
          )
        end

        # Delete one existing redirect, so it is no longer mapped.
        #
        # @overload delete(url_redirect_id, request_options: {})
        #
        # @param url_redirect_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Cms::URLRedirectDeleteParams
        def delete(url_redirect_id, params = {})
          @client.request(
            method: :delete,
            path: ["cms/url-redirects/2026-03/%1$s", url_redirect_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Returns the details for a single existing URL redirect by ID.
        #
        # @overload get(url_redirect_id, request_options: {})
        #
        # @param url_redirect_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::URLMapping]
        #
        # @see HubSpotSDK::Models::Cms::URLRedirectGetParams
        def get(url_redirect_id, params = {})
          @client.request(
            method: :get,
            path: ["cms/url-redirects/2026-03/%1$s", url_redirect_id],
            model: HubSpotSDK::Cms::URLMapping,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
