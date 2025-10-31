# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class IntegratorActor < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::IntegratorActor,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(String) }
        attr_accessor :name

        sig do
          returns(
            HubspotSDK::Conversations::IntegratorActor::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :avatar

        sig { params(avatar: String).void }
        attr_writer :avatar

        sig do
          params(
            id: String,
            name: String,
            type: HubspotSDK::Conversations::IntegratorActor::Type::OrSymbol,
            avatar: String
          ).returns(T.attached_class)
        end
        def self.new(id:, name:, type:, avatar: nil)
        end

        sig do
          override.returns(
            {
              id: String,
              name: String,
              type:
                HubspotSDK::Conversations::IntegratorActor::Type::TaggedSymbol,
              avatar: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::IntegratorActor::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          INTEGRATOR =
            T.let(
              :INTEGRATOR,
              HubspotSDK::Conversations::IntegratorActor::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::IntegratorActor::Type::TaggedSymbol
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
