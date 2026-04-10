# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class UnsupportedContentAttachment < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::UnsupportedContentAttachment,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Conversations::UnsupportedContentAttachment::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            type:
              HubSpotSDK::Conversations::UnsupportedContentAttachment::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type:)
        end

        sig do
          override.returns(
            {
              type:
                HubSpotSDK::Conversations::UnsupportedContentAttachment::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Conversations::UnsupportedContentAttachment::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNSUPPORTED_CONTENT =
            T.let(
              :UNSUPPORTED_CONTENT,
              HubSpotSDK::Conversations::UnsupportedContentAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::UnsupportedContentAttachment::Type::TaggedSymbol
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
