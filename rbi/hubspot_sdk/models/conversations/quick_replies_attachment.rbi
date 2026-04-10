# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class QuickRepliesAttachment < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::QuickRepliesAttachment,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Conversations::QuickReply]) }
        attr_accessor :quick_replies

        sig do
          returns(
            HubSpotSDK::Conversations::QuickRepliesAttachment::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            quick_replies:
              T::Array[HubSpotSDK::Conversations::QuickReply::OrHash],
            type:
              HubSpotSDK::Conversations::QuickRepliesAttachment::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(quick_replies:, type:)
        end

        sig do
          override.returns(
            {
              quick_replies: T::Array[HubSpotSDK::Conversations::QuickReply],
              type:
                HubSpotSDK::Conversations::QuickRepliesAttachment::Type::OrSymbol
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
                HubSpotSDK::Conversations::QuickRepliesAttachment::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUICK_REPLIES =
            T.let(
              :QUICK_REPLIES,
              HubSpotSDK::Conversations::QuickRepliesAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::QuickRepliesAttachment::Type::TaggedSymbol
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
