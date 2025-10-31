# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicUnsupportedContent < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicUnsupportedContent,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Conversations::PublicUnsupportedContent::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            type:
              HubspotSDK::Conversations::PublicUnsupportedContent::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type:)
        end

        sig do
          override.returns(
            {
              type:
                HubspotSDK::Conversations::PublicUnsupportedContent::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::PublicUnsupportedContent::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNSUPPORTED_CONTENT =
            T.let(
              :UNSUPPORTED_CONTENT,
              HubspotSDK::Conversations::PublicUnsupportedContent::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicUnsupportedContent::Type::TaggedSymbol
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
