# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicDeliveryIdentifier < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicDeliveryIdentifier,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Conversations::PublicDeliveryIdentifier::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        sig do
          params(
            type:
              HubspotSDK::Conversations::PublicDeliveryIdentifier::Type::OrSymbol,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(type:, value:)
        end

        sig do
          override.returns(
            {
              type:
                HubspotSDK::Conversations::PublicDeliveryIdentifier::Type::OrSymbol,
              value: String
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
                HubspotSDK::Conversations::PublicDeliveryIdentifier::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHANNEL_SPECIFIC_OPAQUE_ID =
            T.let(
              :CHANNEL_SPECIFIC_OPAQUE_ID,
              HubspotSDK::Conversations::PublicDeliveryIdentifier::Type::TaggedSymbol
            )
          HS_EMAIL_ADDRESS =
            T.let(
              :HS_EMAIL_ADDRESS,
              HubspotSDK::Conversations::PublicDeliveryIdentifier::Type::TaggedSymbol
            )
          HS_PHONE_NUMBER =
            T.let(
              :HS_PHONE_NUMBER,
              HubspotSDK::Conversations::PublicDeliveryIdentifier::Type::TaggedSymbol
            )
          HS_SHORT_CODE =
            T.let(
              :HS_SHORT_CODE,
              HubspotSDK::Conversations::PublicDeliveryIdentifier::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicDeliveryIdentifier::Type::TaggedSymbol
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
