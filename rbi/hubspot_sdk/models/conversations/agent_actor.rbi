# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class AgentActor < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::AgentActor,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig do
          returns(HubspotSDK::Conversations::AgentActor::Type::TaggedSymbol)
        end
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :avatar

        sig { params(avatar: String).void }
        attr_writer :avatar

        sig { returns(T.nilable(String)) }
        attr_reader :email

        sig { params(email: String).void }
        attr_writer :email

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            id: String,
            type: HubspotSDK::Conversations::AgentActor::Type::OrSymbol,
            avatar: String,
            email: String,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(id:, type:, avatar: nil, email: nil, name: nil)
        end

        sig do
          override.returns(
            {
              id: String,
              type: HubspotSDK::Conversations::AgentActor::Type::TaggedSymbol,
              avatar: String,
              email: String,
              name: String
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::AgentActor::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          AGENT =
            T.let(
              :AGENT,
              HubspotSDK::Conversations::AgentActor::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::AgentActor::Type::TaggedSymbol
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
