# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class URLMappings
        # Create a new URL mapping in your HubSpot account. This endpoint allows you to
        # define URL redirections and mappings, which can be useful for managing site
        # navigation and SEO. The request body must include all required properties of the
        # UrlMapping schema.
        sig do
          params(
            id: Integer,
            cdn_purge_embargo_time: Integer,
            content_group_id: Integer,
            cos_object_type:
              HubSpotSDK::Cms::URLMappingsURLMapping::CosObjectType::OrSymbol,
            created: Integer,
            created_by_id: Integer,
            deleted_at: Integer,
            destination: String,
            internally_created: T::Boolean,
            is_active: T::Boolean,
            is_match_full_url: T::Boolean,
            is_match_query_string: T::Boolean,
            is_only_after_not_found: T::Boolean,
            is_pattern: T::Boolean,
            is_protocol_agnostic: T::Boolean,
            is_regex: T::Boolean,
            is_trailing_slash_optional: T::Boolean,
            label: String,
            name: String,
            note: String,
            portal_id: Integer,
            precedence: Integer,
            redirect_style: Integer,
            route_prefix: String,
            updated: Integer,
            updated_by_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def create(
          # The unique identifier for the URL mapping, represented as a 64-bit integer.
          id:,
          # A Unix timestamp in milliseconds indicating the embargo time for CDN purge
          # related to the URL mapping.
          cdn_purge_embargo_time:,
          # A 64-bit integer representing the content group associated with the URL mapping.
          content_group_id:,
          # A string representing the type of content object associated with the URL
          # mapping. Valid values include various content types such as 'CONTENT', 'LAYOUT',
          # 'FILE', etc.
          cos_object_type:,
          # A Unix timestamp in milliseconds indicating when the URL mapping was created.
          created:,
          # The identifier of the user who created the URL mapping.
          created_by_id:,
          # A Unix timestamp in milliseconds indicating when the URL mapping was deleted.
          deleted_at:,
          # The destination URL to which the routePrefix is redirected.
          destination:,
          # A boolean indicating if the URL mapping was created internally by the system.
          internally_created:,
          # A boolean indicating if the URL mapping is currently active.
          is_active:,
          # A boolean indicating if the full URL should be matched.
          is_match_full_url:,
          # A boolean indicating if the query string should be matched.
          is_match_query_string:,
          # A boolean indicating if the mapping should only be applied after a 404 Not Found
          # response.
          is_only_after_not_found:,
          # A boolean indicating if the routePrefix is a pattern.
          is_pattern:,
          # A boolean indicating if the mapping should ignore the URL protocol (http/https).
          is_protocol_agnostic:,
          # A boolean indicating if the routePrefix should be treated as a regular
          # expression.
          is_regex:,
          # A boolean indicating if the trailing slash in the URL is optional.
          is_trailing_slash_optional:,
          # A label for the URL mapping.
          label:,
          # The name of the URL mapping.
          name:,
          # A string containing notes about the URL mapping.
          note:,
          # The identifier for the HubSpot portal associated with this URL mapping.
          portal_id:,
          # An integer representing the precedence of the URL mapping, used to determine
          # order of evaluation.
          precedence:,
          # An integer representing the style of redirection used.
          redirect_style:,
          # The prefix of the URL path that is being mapped.
          route_prefix:,
          # A Unix timestamp in milliseconds indicating when the URL mapping was last
          # updated.
          updated:,
          # The identifier of the user who last updated the URL mapping.
          updated_by_id:,
          request_options: {}
        )
        end

        # Retrieve a list of URL mappings from the HubSpot account. This endpoint provides
        # access to URL mapping configurations, which can be used to manage and redirect
        # URLs within the HubSpot CMS. It is useful for understanding how URLs are
        # structured and redirected in your content management setup.
        sig do
          params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
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
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(id, request_options: {})
        end

        # Retrieve a specific URL mapping by its unique identifier. This endpoint is
        # useful for obtaining details about a particular URL mapping configuration within
        # your HubSpot account. It requires the ID of the URL mapping as a path parameter.
        sig do
          params(
            id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get(id, request_options: {})
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
