# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class ExtractMostRecentEmailReplyHTML < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML::Operator::OrSymbol
          )
        end
        attr_accessor :operator

        sig { returns(T.nilable(T::Array[T.anything])) }
        attr_reader :inputs

        sig { params(inputs: T::Array[T.anything]).void }
        attr_writer :inputs

        sig { returns(T.nilable(String)) }
        attr_reader :property_name

        sig { params(property_name: String).void }
        attr_writer :property_name

        sig { returns(T.nilable(String)) }
        attr_reader :value

        sig { params(value: String).void }
        attr_writer :value

        sig do
          params(
            operator:
              HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML::Operator::OrSymbol,
            inputs: T::Array[T.anything],
            property_name: String,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(operator:, inputs: nil, property_name: nil, value: nil)
        end

        sig do
          override.returns(
            {
              operator:
                HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML::Operator::OrSymbol,
              inputs: T::Array[T.anything],
              property_name: String,
              value: String
            }
          )
        end
        def to_hash
        end

        module Operator
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML::Operator
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EXTRACT_MOST_RECENT_EMAIL_REPLY_HTML =
            T.let(
              :EXTRACT_MOST_RECENT_EMAIL_REPLY_HTML,
              HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML::Operator::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Cms::ExtractMostRecentEmailReplyHTML::Operator::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
