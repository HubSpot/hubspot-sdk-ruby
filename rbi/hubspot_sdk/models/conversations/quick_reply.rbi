# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class QuickReply < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::QuickReply,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :value

        sig do
          returns(HubspotSDK::Conversations::QuickReply::ValueType::OrSymbol)
        end
        attr_accessor :value_type

        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig do
          params(
            value: String,
            value_type:
              HubspotSDK::Conversations::QuickReply::ValueType::OrSymbol,
            label: String
          ).returns(T.attached_class)
        end
        def self.new(value:, value_type:, label: nil)
        end

        sig do
          override.returns(
            {
              value: String,
              value_type:
                HubspotSDK::Conversations::QuickReply::ValueType::OrSymbol,
              label: String
            }
          )
        end
        def to_hash
        end

        module ValueType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::QuickReply::ValueType)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          TEXT =
            T.let(
              :TEXT,
              HubspotSDK::Conversations::QuickReply::ValueType::TaggedSymbol
            )
          URL =
            T.let(
              :URL,
              HubspotSDK::Conversations::QuickReply::ValueType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::QuickReply::ValueType::TaggedSymbol
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
