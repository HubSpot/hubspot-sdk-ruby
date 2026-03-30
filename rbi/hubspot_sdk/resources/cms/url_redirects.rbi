# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class URLRedirects
        # Create a new URL redirect in your HubSpot account. This endpoint allows you to
        # define a new URL mapping that redirects traffic from a specified route to a
        # destination URL. This is useful for managing URL changes, handling outdated
        # links, or creating short links.
        sig do
          params(
            destination: String,
            redirect_style: Integer,
            route_prefix: String,
            is_match_full_url: T::Boolean,
            is_match_query_string: T::Boolean,
            is_only_after_not_found: T::Boolean,
            is_pattern: T::Boolean,
            is_protocol_agnostic: T::Boolean,
            is_trailing_slash_optional: T::Boolean,
            precedence: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::URLMapping)
        end
        def create(
          # The destination URL, where the target URL should be redirected if it matches the
          # `routePrefix`.
          destination:,
          # The type of redirect to create. Options include: 301 (permanent), 302
          # (temporary), or 305 (proxy). Find more details
          # [here](https://knowledge.hubspot.com/cos-general/how-to-redirect-a-hubspot-page).
          redirect_style:,
          # The target incoming URL, path, or pattern to match for redirection.
          route_prefix:,
          # Whether the `routePrefix` should match on the entire URL, including the domain.
          is_match_full_url: nil,
          # Whether the `routePrefix` should match on the entire URL path, including the
          # query string.
          is_match_query_string: nil,
          # Whether the URL redirect mapping should apply only if a live page on the URL
          # isn't found. If False, the URL redirect mapping will take precedence over any
          # existing page.
          is_only_after_not_found: nil,
          # Whether the `routePrefix` should match based on pattern.
          is_pattern: nil,
          # Whether the `routePrefix` should match both HTTP and HTTPS protocols.
          is_protocol_agnostic: nil,
          # Whether a trailing slash will be ignored.
          is_trailing_slash_optional: nil,
          # Used to prioritize URL redirection. If a given URL matches more than one
          # redirect, the one with the **lower** precedence will be used.
          precedence: nil,
          request_options: {}
        )
        end

        # Updates the settings for an existing URL redirect.
        sig do
          params(
            url_redirect_id: String,
            id: String,
            created: Time,
            destination: String,
            is_match_full_url: T::Boolean,
            is_match_query_string: T::Boolean,
            is_only_after_not_found: T::Boolean,
            is_pattern: T::Boolean,
            is_protocol_agnostic: T::Boolean,
            is_trailing_slash_optional: T::Boolean,
            precedence: Integer,
            redirect_style: Integer,
            route_prefix: String,
            updated: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::URLMapping)
        end
        def update(
          url_redirect_id,
          # The unique ID of this URL redirect.
          id:,
          # The date and time when the URL mapping was initially created.
          created:,
          # The destination URL, where the target URL should be redirected if it matches the
          # `routePrefix`.
          destination:,
          # Whether the `routePrefix` should match on the entire URL, including the domain.
          is_match_full_url:,
          # Whether the `routePrefix` should match on the entire URL path, including the
          # query string.
          is_match_query_string:,
          # Whether the URL redirect mapping should apply only if a live page on the URL
          # isn't found. If False, the URL redirect mapping will take precedence over any
          # existing page.
          is_only_after_not_found:,
          # Whether the `routePrefix` should match based on pattern.
          is_pattern:,
          # Whether the `routePrefix` should match both HTTP and HTTPS protocols.
          is_protocol_agnostic:,
          # Whether a trailing slash will be ignored.
          is_trailing_slash_optional:,
          # Used to prioritize URL redirection. If a given URL matches more than one
          # redirect, the one with the **lower** precedence will be used.
          precedence:,
          # The type of redirect to create. Options include: 301 (permanent), 302
          # (temporary), or 305 (proxy). Find more details
          # [here](https://knowledge.hubspot.com/cos-general/how-to-redirect-a-hubspot-page).
          redirect_style:,
          # The target incoming URL, path, or pattern to match for redirection.
          route_prefix:,
          # The date and time when the URL mapping was last modified.
          updated:,
          request_options: {}
        )
        end

        # Retrieve a list of URL redirects configured in your HubSpot account. This
        # endpoint allows you to filter redirects based on their creation or update
        # timestamps, and sort the results. It supports pagination and can include
        # archived redirects if specified.
        sig do
          params(
            after: String,
            archived: T::Boolean,
            created_after: Time,
            created_at: Time,
            created_before: Time,
            limit: Integer,
            sort: T::Array[String],
            updated_after: Time,
            updated_at: Time,
            updated_before: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Internal::Page[HubspotSDK::Cms::URLMapping])
        end
        def list(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          # Whether to return only results that have been archived.
          archived: nil,
          created_after: nil,
          created_at: nil,
          created_before: nil,
          # The maximum number of results to display per page.
          limit: nil,
          sort: nil,
          updated_after: nil,
          updated_at: nil,
          updated_before: nil,
          request_options: {}
        )
        end

        # Delete one existing redirect, so it is no longer mapped.
        sig do
          params(
            url_redirect_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(url_redirect_id, request_options: {})
        end

        # Returns the details for a single existing URL redirect by ID.
        sig do
          params(
            url_redirect_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::URLMapping)
        end
        def get(url_redirect_id, request_options: {})
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
