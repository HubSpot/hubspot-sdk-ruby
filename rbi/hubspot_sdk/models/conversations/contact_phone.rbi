# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class ContactPhone < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::ContactPhone,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :phone

        sig do
          returns(
            T.nilable(HubSpotSDK::Conversations::ContactPhone::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: HubSpotSDK::Conversations::ContactPhone::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            phone: String,
            type: HubSpotSDK::Conversations::ContactPhone::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(phone:, type: nil)
        end

        sig do
          override.returns(
            {
              phone: String,
              type: HubSpotSDK::Conversations::ContactPhone::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Conversations::ContactPhone::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CELL =
            T.let(
              :CELL,
              HubSpotSDK::Conversations::ContactPhone::Type::TaggedSymbol
            )
          HOME =
            T.let(
              :HOME,
              HubSpotSDK::Conversations::ContactPhone::Type::TaggedSymbol
            )
          MAIN =
            T.let(
              :MAIN,
              HubSpotSDK::Conversations::ContactPhone::Type::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubSpotSDK::Conversations::ContactPhone::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::ContactPhone::Type::TaggedSymbol
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
