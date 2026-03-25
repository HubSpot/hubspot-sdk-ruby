# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class URLRedirects
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::URLRedirectCreateParams} for more details.
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
        # @param is_match_full_url [Boolean] Whether the routePrefix should match on the entire URL, including the domain.
        #
        # @param is_match_query_string [Boolean] Whether the routePrefix should match on the entire URL path, including the query
        #
        # @param is_only_after_not_found [Boolean] Whether the URL redirect mapping should apply only if a live page on the URL isn
        #
        # @param is_pattern [Boolean] Whether the routePrefix should match based on pattern.
        #
        # @param is_protocol_agnostic [Boolean] Whether the routePrefix should match both HTTP and HTTPS protocols.
        #
        # @param is_trailing_slash_optional [Boolean] Whether a trailing slash will be ignored.
        #
        # @param precedence [Integer] Used to prioritize URL redirection. If a given URL matches more than one redirec
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::URLMapping]
        #
        # @see HubspotSDK::Models::Cms::URLRedirectCreateParams
        def create(params)
          parsed, options = HubspotSDK::Cms::URLRedirectCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "cms/url-redirects/2026-03",
            body: parsed,
            model: HubspotSDK::Cms::URLMapping,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::URLRedirectUpdateParams} for more details.
        #
        # Update the details of an existing URL redirect in your HubSpot account. This
        # operation allows you to modify properties such as the destination URL, route
        # prefix, and other redirect settings. Use this endpoint to ensure your URL
        # redirects are up-to-date and functioning as intended.
        #
        # @overload update(url_redirect_id, id:, created:, destination:, is_match_full_url:, is_match_query_string:, is_only_after_not_found:, is_pattern:, is_protocol_agnostic:, is_trailing_slash_optional:, precedence:, redirect_style:, route_prefix:, updated:, request_options: {})
        #
        # @param url_redirect_id [String] The unique identifier of the URL redirect to update.
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
        # @return [HubspotSDK::Models::Cms::URLMapping]
        #
        # @see HubspotSDK::Models::Cms::URLRedirectUpdateParams
        def update(url_redirect_id, params)
          parsed, options = HubspotSDK::Cms::URLRedirectUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["cms/url-redirects/2026-03/%1$s", url_redirect_id],
            body: parsed,
            model: HubspotSDK::Cms::URLMapping,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::URLRedirectListParams} for more details.
        #
        # Retrieve a list of URL redirects configured in your HubSpot account. This
        # endpoint allows you to filter redirects based on their creation or update
        # timestamps, and sort the results. It supports pagination and can include
        # archived redirects if specified.
        #
        # @overload list(after: nil, archived: nil, created_after: nil, created_at: nil, created_before: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
        #
        # @param after [String] A cursor token for pagination. Use the value from the previous response's paging
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param created_after [Time] Filter redirects created after a specific timestamp. Format must be date-time.
        #
        # @param created_at [Time] Filter redirects by their exact creation timestamp. Format must be date-time.
        #
        # @param created_before [Time] Filter redirects created before a specific timestamp. Format must be date-time.
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param sort [Array<String>] Specify the order in which to sort the results. Accepts an array of strings.
        #
        # @param updated_after [Time] Filter redirects updated after a specific timestamp. Format must be date-time.
        #
        # @param updated_at [Time] Filter redirects by their exact update timestamp. Format must be date-time.
        #
        # @param updated_before [Time] Filter redirects updated before a specific timestamp. Format must be date-time.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::URLMapping>]
        #
        # @see HubspotSDK::Models::Cms::URLRedirectListParams
        def list(params = {})
          parsed, options = HubspotSDK::Cms::URLRedirectListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Cms::URLMapping,
            options: options
          )
        end

        # Delete a specific URL redirect in your HubSpot account using its unique
        # identifier. This operation is useful for removing outdated or incorrect URL
        # redirects, ensuring that your URL mappings remain current and accurate.
        #
        # @overload delete(url_redirect_id, request_options: {})
        #
        # @param url_redirect_id [String] The unique identifier of the URL redirect to delete.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::URLRedirectDeleteParams
        def delete(url_redirect_id, params = {})
          @client.request(
            method: :delete,
            path: ["cms/url-redirects/2026-03/%1$s", url_redirect_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Retrieve detailed information about a specific URL redirect in your HubSpot
        # account using its unique identifier. This endpoint is useful for obtaining the
        # configuration and properties of a URL redirect, such as its destination, route
        # prefix, and other settings.
        #
        # @overload get(url_redirect_id, request_options: {})
        #
        # @param url_redirect_id [String] The unique identifier of the URL redirect to retrieve.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::URLMapping]
        #
        # @see HubspotSDK::Models::Cms::URLRedirectGetParams
        def get(url_redirect_id, params = {})
          @client.request(
            method: :get,
            path: ["cms/url-redirects/2026-03/%1$s", url_redirect_id],
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
