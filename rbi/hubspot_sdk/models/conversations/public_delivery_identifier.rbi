# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicDeliveryIdentifier < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicDeliveryIdentifier,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubSpotSDK::Conversations::PublicDeliveryIdentifier::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig { returns(String) }
        attr_accessor :value

        sig do
          params(
            type:
              HubSpotSDK::Conversations::PublicDeliveryIdentifier::Type::OrSymbol,
            value: String
          ).returns(T.attached_class)
        end
        def self.new(type:, value:)
        end

        sig do
          override.returns(
            {
              type:
                HubSpotSDK::Conversations::PublicDeliveryIdentifier::Type::OrSymbol,
              value: String
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
                HubSpotSDK::Conversations::PublicDeliveryIdentifier::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CHANNEL_SPECIFIC_OPAQUE_ID =
            T.let(
              :CHANNEL_SPECIFIC_OPAQUE_ID,
              HubSpotSDK::Conversations::PublicDeliveryIdentifier::Type::TaggedSymbol
            )
          HS_EMAIL_ADDRESS =
            T.let(
              :HS_EMAIL_ADDRESS,
              HubSpotSDK::Conversations::PublicDeliveryIdentifier::Type::TaggedSymbol
            )
          HS_PHONE_NUMBER =
            T.let(
              :HS_PHONE_NUMBER,
              HubSpotSDK::Conversations::PublicDeliveryIdentifier::Type::TaggedSymbol
            )
          HS_SHORT_CODE =
            T.let(
              :HS_SHORT_CODE,
              HubSpotSDK::Conversations::PublicDeliveryIdentifier::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicDeliveryIdentifier::Type::TaggedSymbol
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
