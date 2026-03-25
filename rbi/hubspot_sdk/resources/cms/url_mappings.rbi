# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class URLMappings
        # Create a new URL mapping in your HubSpot account. This endpoint allows you to
        # define URL redirections and mappings, which can be useful for managing site
        # navigation and SEO. The request body must include all required properties of the
        # UrlMapping schema.
        sig do
          params(
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
          ).returns(StringIO)
        end
        def create(
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

        # Retrieve a list of URL mappings from the HubSpot account. This endpoint provides
        # access to URL mapping configurations, which can be used to manage and redirect
        # URLs within the HubSpot CMS. It is useful for understanding how URLs are
        # structured and redirected in your content management setup.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            StringIO
          )
        end
        def list(request_options: {})
        end

        # Delete a specific URL mapping in your HubSpot account using its unique
        # identifier. This operation will remove the URL mapping permanently, and it
        # requires appropriate write and delete permissions.
        sig do
          params(
            id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The unique identifier of the URL mapping to delete. Must be an integer.
          id,
          request_options: {}
        )
        end

        # Retrieve a specific URL mapping by its unique identifier. This endpoint is
        # useful for obtaining details about a particular URL mapping configuration within
        # your HubSpot account. It requires the ID of the URL mapping as a path parameter.
        sig do
          params(
            id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get(
          # The unique identifier of the URL mapping to retrieve. It must be an integer.
          id,
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
