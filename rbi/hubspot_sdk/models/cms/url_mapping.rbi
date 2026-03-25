# typed: strong

module HubspotSDK
  module Models
    module Cms
      class URLMapping < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Cms::URLMapping, HubspotSDK::Internal::AnyHash)
          end

        # The unique ID of this URL redirect.
        sig { returns(String) }
        attr_accessor :id

        # The date and time when the URL mapping was initially created.
        sig { returns(Time) }
        attr_accessor :created

        # The destination URL, where the target URL should be redirected if it matches the
        # `routePrefix`.
        sig { returns(String) }
        attr_accessor :destination

        # Whether the `routePrefix` should match on the entire URL, including the domain.
        sig { returns(T::Boolean) }
        attr_accessor :is_match_full_url

        # Whether the `routePrefix` should match on the entire URL path, including the
        # query string.
        sig { returns(T::Boolean) }
        attr_accessor :is_match_query_string

        # Whether the URL redirect mapping should apply only if a live page on the URL
        # isn't found. If False, the URL redirect mapping will take precedence over any
        # existing page.
        sig { returns(T::Boolean) }
        attr_accessor :is_only_after_not_found

        # Whether the `routePrefix` should match based on pattern.
        sig { returns(T::Boolean) }
        attr_accessor :is_pattern

        # Whether the `routePrefix` should match both HTTP and HTTPS protocols.
        sig { returns(T::Boolean) }
        attr_accessor :is_protocol_agnostic

        # Whether a trailing slash will be ignored.
        sig { returns(T::Boolean) }
        attr_accessor :is_trailing_slash_optional

        # Used to prioritize URL redirection. If a given URL matches more than one
        # redirect, the one with the **lower** precedence will be used.
        sig { returns(Integer) }
        attr_accessor :precedence

        # The type of redirect to create. Options include: 301 (permanent), 302
        # (temporary), or 305 (proxy). Find more details
        # [here](https://knowledge.hubspot.com/cos-general/how-to-redirect-a-hubspot-page).
        sig { returns(Integer) }
        attr_accessor :redirect_style

        # The target incoming URL, path, or pattern to match for redirection.
        sig { returns(String) }
        attr_accessor :route_prefix

        # The date and time when the URL mapping was last modified.
        sig { returns(Time) }
        attr_accessor :updated

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
            updated: Time
          ).returns(T.attached_class)
        end
        def self.new(
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
          updated:
        )
        end

        sig do
          override.returns(
            {
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
              updated: Time
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
