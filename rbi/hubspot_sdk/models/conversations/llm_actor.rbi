# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class LlmActor < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::LlmActor,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(HubspotSDK::Conversations::LlmActor::Type::TaggedSymbol) }
        attr_accessor :type

        sig { returns(T.nilable(String)) }
        attr_reader :avatar

        sig { params(avatar: String).void }
        attr_writer :avatar

        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            id: String,
            type: HubspotSDK::Conversations::LlmActor::Type::OrSymbol,
            avatar: String,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(id:, type:, avatar: nil, name: nil)
        end

        sig do
          override.returns(
            {
              id: String,
              type: HubspotSDK::Conversations::LlmActor::Type::TaggedSymbol,
              avatar: String,
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
              T.all(Symbol, HubspotSDK::Conversations::LlmActor::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          LLM =
            T.let(:LLM, HubspotSDK::Conversations::LlmActor::Type::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Conversations::LlmActor::Type::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
