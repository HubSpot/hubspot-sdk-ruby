# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ContactPhone < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ContactPhone,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :phone

        sig do
          returns(
            T.nilable(HubspotSDK::Conversations::ContactPhone::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: HubspotSDK::Conversations::ContactPhone::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            phone: String,
            type: HubspotSDK::Conversations::ContactPhone::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(phone:, type: nil)
        end

        sig do
          override.returns(
            {
              phone: String,
              type: HubspotSDK::Conversations::ContactPhone::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::ContactPhone::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          CELL =
            T.let(
              :CELL,
              HubspotSDK::Conversations::ContactPhone::Type::TaggedSymbol
            )
          HOME =
            T.let(
              :HOME,
              HubspotSDK::Conversations::ContactPhone::Type::TaggedSymbol
            )
          MAIN =
            T.let(
              :MAIN,
              HubspotSDK::Conversations::ContactPhone::Type::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubspotSDK::Conversations::ContactPhone::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ContactPhone::Type::TaggedSymbol
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
