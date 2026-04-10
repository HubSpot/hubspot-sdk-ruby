# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class URLMappingCreateRequestBody < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::URLMappingCreateRequestBody,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The destination URL, where the target URL should be redirected if it matches the
        # `routePrefix`.
        sig { returns(String) }
        attr_accessor :destination

        # The type of redirect to create. Options include: 301 (permanent), 302
        # (temporary), or 305 (proxy). Find more details
        # [here](https://knowledge.hubspot.com/cos-general/how-to-redirect-a-hubspot-page).
        sig { returns(Integer) }
        attr_accessor :redirect_style

        # The target incoming URL, path, or pattern to match for redirection.
        sig { returns(String) }
        attr_accessor :route_prefix

        # Whether the `routePrefix` should match on the entire URL, including the domain.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_match_full_url

        sig { params(is_match_full_url: T::Boolean).void }
        attr_writer :is_match_full_url

        # Whether the `routePrefix` should match on the entire URL path, including the
        # query string.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_match_query_string

        sig { params(is_match_query_string: T::Boolean).void }
        attr_writer :is_match_query_string

        # Whether the URL redirect mapping should apply only if a live page on the URL
        # isn't found. If False, the URL redirect mapping will take precedence over any
        # existing page.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_only_after_not_found

        sig { params(is_only_after_not_found: T::Boolean).void }
        attr_writer :is_only_after_not_found

        # Whether the `routePrefix` should match based on pattern.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_pattern

        sig { params(is_pattern: T::Boolean).void }
        attr_writer :is_pattern

        # Whether the `routePrefix` should match both HTTP and HTTPS protocols.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_protocol_agnostic

        sig { params(is_protocol_agnostic: T::Boolean).void }
        attr_writer :is_protocol_agnostic

        # Whether a trailing slash will be ignored.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_trailing_slash_optional

        sig { params(is_trailing_slash_optional: T::Boolean).void }
        attr_writer :is_trailing_slash_optional

        # Used to prioritize URL redirection. If a given URL matches more than one
        # redirect, the one with the **lower** precedence will be used.
        sig { returns(T.nilable(Integer)) }
        attr_reader :precedence

        sig { params(precedence: Integer).void }
        attr_writer :precedence

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
            precedence: Integer
          ).returns(T.attached_class)
        end
        def self.new(
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
          precedence: nil
        )
        end

        sig do
          override.returns(
            {
              destination: String,
              redirect_style: Integer,
              route_prefix: String,
              is_match_full_url: T::Boolean,
              is_match_query_string: T::Boolean,
              is_only_after_not_found: T::Boolean,
              is_pattern: T::Boolean,
              is_protocol_agnostic: T::Boolean,
              is_trailing_slash_optional: T::Boolean,
              precedence: Integer
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
