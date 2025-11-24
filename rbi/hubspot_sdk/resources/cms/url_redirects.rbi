# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class URLRedirects
        # Creates and configures a new URL redirect.
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
          destination:,
          redirect_style:,
          route_prefix:,
          is_match_full_url: nil,
          is_match_query_string: nil,
          is_only_after_not_found: nil,
          is_pattern: nil,
          is_protocol_agnostic: nil,
          is_trailing_slash_optional: nil,
          precedence: nil,
          request_options: {}
        )
        end

        # Updates the settings for an existing URL redirect.
        sig do
          params(
            url_redirect_id: String,
            id: String,
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
            created: Time,
            updated: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::URLMapping)
        end
        def update(
          # The ID of the target url redirect to update.
          url_redirect_id,
          # The unique ID of this URL redirect.
          id:,
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
          created: nil,
          updated: nil,
          request_options: {}
        )
        end

        # Returns all existing URL redirects. Results can be limited and filtered by
        # creation or updated date.
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
          # Only return redirects created after this date.
          created_after: nil,
          # Only return redirects created on exactly this date.
          created_at: nil,
          # Only return redirects created before this date.
          created_before: nil,
          # Maximum number of result per page
          limit: nil,
          # A query parameter to specify the order in which the URL redirects are returned.
          sort: nil,
          # Only return redirects last updated after this date.
          updated_after: nil,
          # Only return redirects last updated on exactly this date.
          updated_at: nil,
          # Only return redirects last updated before this date.
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
        def delete(
          # The ID of the target redirect.
          url_redirect_id,
          request_options: {}
        )
        end

        # Returns the details for a single existing URL redirect by ID.
        sig do
          params(
            url_redirect_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Cms::URLMapping)
        end
        def get(
          # The ID of the target redirect.
          url_redirect_id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
