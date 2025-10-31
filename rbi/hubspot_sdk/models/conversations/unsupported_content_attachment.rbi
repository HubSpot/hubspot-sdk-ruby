# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class UnsupportedContentAttachment < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::UnsupportedContentAttachment,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Conversations::UnsupportedContentAttachment::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            type:
              HubspotSDK::Conversations::UnsupportedContentAttachment::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(type:)
        end

        sig do
          override.returns(
            {
              type:
                HubspotSDK::Conversations::UnsupportedContentAttachment::Type::OrSymbol
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
                HubspotSDK::Conversations::UnsupportedContentAttachment::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          UNSUPPORTED_CONTENT =
            T.let(
              :UNSUPPORTED_CONTENT,
              HubspotSDK::Conversations::UnsupportedContentAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::UnsupportedContentAttachment::Type::TaggedSymbol
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
