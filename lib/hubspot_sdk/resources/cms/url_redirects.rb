# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class URLRedirects
        # Creates and configures a new URL redirect.
        #
        # @overload create(destination:, redirect_style:, route_prefix:, is_match_full_url: nil, is_match_query_string: nil, is_only_after_not_found: nil, is_pattern: nil, is_protocol_agnostic: nil, is_trailing_slash_optional: nil, precedence: nil, request_options: {})
        #
        # @param destination [String]
        # @param redirect_style [Integer]
        # @param route_prefix [String]
        # @param is_match_full_url [Boolean]
        # @param is_match_query_string [Boolean]
        # @param is_only_after_not_found [Boolean]
        # @param is_pattern [Boolean]
        # @param is_protocol_agnostic [Boolean]
        # @param is_trailing_slash_optional [Boolean]
        # @param precedence [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::URLMapping]
        #
        # @see HubspotSDK::Models::Cms::URLRedirectCreateParams
        def create(params)
          parsed, options = HubspotSDK::Cms::URLRedirectCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "cms/v3/url-redirects/",
            body: parsed,
            model: HubspotSDK::Cms::URLMapping,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::URLRedirectUpdateParams} for more details.
        #
        # Updates the settings for an existing URL redirect.
        #
        # @overload update(url_redirect_id, id:, destination:, is_match_full_url:, is_match_query_string:, is_only_after_not_found:, is_pattern:, is_protocol_agnostic:, is_trailing_slash_optional:, precedence:, redirect_style:, route_prefix:, created: nil, updated: nil, request_options: {})
        #
        # @param url_redirect_id [String]
        #
        # @param id [String] The unique ID of this URL redirect.
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
        # @param created [Time]
        #
        # @param updated [Time]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::URLMapping]
        #
        # @see HubspotSDK::Models::Cms::URLRedirectUpdateParams
        def update(url_redirect_id, params)
          parsed, options = HubspotSDK::Cms::URLRedirectUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["cms/v3/url-redirects/%1$s", url_redirect_id],
            body: parsed,
            model: HubspotSDK::Cms::URLMapping,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::URLRedirectListParams} for more details.
        #
        # Returns all existing URL redirects. Results can be limited and filtered by
        # creation or updated date.
        #
        # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param created_after [Time] Only return redirects created after this date.
        #
        # @param created_at [Time] Only return redirects created on exactly this date.
        #
        # @param created_before [Time] Only return redirects created before this date.
        #
        # @param limit [Integer] Maximum number of result per page
        #
        # @param sort [Array<String>]
        #
        # @param updated_after [Time] Only return redirects last updated after this date.
        #
        # @param updated_at [Time] Only return redirects last updated on exactly this date.
        #
        # @param updated_before [Time] Only return redirects last updated before this date.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::URLMapping>]
        #
        # @see HubspotSDK::Models::Cms::URLRedirectListParams
        def list(params = {})
          parsed, options = HubspotSDK::Cms::URLRedirectListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "cms/v3/url-redirects/",
            query: parsed.transform_keys(
              created_after: "createdAfter",
              created_at: "createdAt",
              created_before: "createdBefore",
              updated_after: "updatedAfter",
              updated_at: "updatedAt",
              updated_before: "updatedBefore"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Cms::URLMapping,
            options: options
          )
        end

        # Delete one existing redirect, so it is no longer mapped.
        #
        # @overload delete(url_redirect_id, request_options: {})
        #
        # @param url_redirect_id [String] The ID of the target redirect.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::URLRedirectDeleteParams
        def delete(url_redirect_id, params = {})
          @client.request(
            method: :delete,
            path: ["cms/v3/url-redirects/%1$s", url_redirect_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Returns the details for a single existing URL redirect by ID.
        #
        # @overload get(url_redirect_id, request_options: {})
        #
        # @param url_redirect_id [String] The ID of the target redirect.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::URLMapping]
        #
        # @see HubspotSDK::Models::Cms::URLRedirectGetParams
        def get(url_redirect_id, params = {})
          @client.request(
            method: :get,
            path: ["cms/v3/url-redirects/%1$s", url_redirect_id],
            model: HubspotSDK::Cms::URLMapping,
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
