# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class EmailActor < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::EmailActor,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :email

        sig do
          returns(HubspotSDK::Conversations::EmailActor::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig do
          params(
            id: String,
            email: String,
            type: HubspotSDK::Conversations::EmailActor::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, email:, type:)
        end

        sig do
          override.returns(
            {
              id: String,
              email: String,
              type: HubspotSDK::Conversations::EmailActor::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::EmailActor::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          EMAIL =
            T.let(
              :EMAIL,
              HubspotSDK::Conversations::EmailActor::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::EmailActor::Type::TaggedSymbol
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
