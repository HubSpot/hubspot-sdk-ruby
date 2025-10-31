# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class SystemActor < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::SystemActor,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(HubspotSDK::Conversations::SystemActor::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig do
          params(
            id: String,
            type: HubspotSDK::Conversations::SystemActor::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(id:, type:)
        end

        sig do
          override.returns(
            {
              id: String,
              type: HubspotSDK::Conversations::SystemActor::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::SystemActor::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          SYSTEM =
            T.let(
              :SYSTEM,
              HubspotSDK::Conversations::SystemActor::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::SystemActor::Type::TaggedSymbol
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
