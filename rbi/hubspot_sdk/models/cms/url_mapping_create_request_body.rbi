# typed: strong

module HubspotSDK
  module Models
    module Cms
      class URLMappingCreateRequestBody < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::URLMappingCreateRequestBody,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :destination

        sig { returns(Integer) }
        attr_accessor :redirect_style

        sig { returns(String) }
        attr_accessor :route_prefix

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_match_full_url

        sig { params(is_match_full_url: T::Boolean).void }
        attr_writer :is_match_full_url

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_match_query_string

        sig { params(is_match_query_string: T::Boolean).void }
        attr_writer :is_match_query_string

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_only_after_not_found

        sig { params(is_only_after_not_found: T::Boolean).void }
        attr_writer :is_only_after_not_found

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_pattern

        sig { params(is_pattern: T::Boolean).void }
        attr_writer :is_pattern

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_protocol_agnostic

        sig { params(is_protocol_agnostic: T::Boolean).void }
        attr_writer :is_protocol_agnostic

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_trailing_slash_optional

        sig { params(is_trailing_slash_optional: T::Boolean).void }
        attr_writer :is_trailing_slash_optional

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
          destination:,
          redirect_style:,
          route_prefix:,
          is_match_full_url: nil,
          is_match_query_string: nil,
          is_only_after_not_found: nil,
          is_pattern: nil,
          is_protocol_agnostic: nil,
          is_trailing_slash_optional: nil,
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
