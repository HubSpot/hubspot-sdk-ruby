# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ContactEmail < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ContactEmail,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :email

        sig do
          returns(
            T.nilable(HubspotSDK::Conversations::ContactEmail::Type::OrSymbol)
          )
        end
        attr_reader :type

        sig do
          params(
            type: HubspotSDK::Conversations::ContactEmail::Type::OrSymbol
          ).void
        end
        attr_writer :type

        sig do
          params(
            email: String,
            type: HubspotSDK::Conversations::ContactEmail::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(email:, type: nil)
        end

        sig do
          override.returns(
            {
              email: String,
              type: HubspotSDK::Conversations::ContactEmail::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::ContactEmail::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HOME =
            T.let(
              :HOME,
              HubspotSDK::Conversations::ContactEmail::Type::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubspotSDK::Conversations::ContactEmail::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::ContactEmail::Type::TaggedSymbol
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
