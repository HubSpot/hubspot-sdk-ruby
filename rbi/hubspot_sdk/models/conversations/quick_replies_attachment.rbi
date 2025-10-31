# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class QuickRepliesAttachment < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::QuickRepliesAttachment,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Conversations::QuickReply]) }
        attr_accessor :quick_replies

        sig do
          returns(
            HubspotSDK::Conversations::QuickRepliesAttachment::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            quick_replies:
              T::Array[HubspotSDK::Conversations::QuickReply::OrHash],
            type:
              HubspotSDK::Conversations::QuickRepliesAttachment::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(quick_replies:, type:)
        end

        sig do
          override.returns(
            {
              quick_replies: T::Array[HubspotSDK::Conversations::QuickReply],
              type:
                HubspotSDK::Conversations::QuickRepliesAttachment::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Conversations::QuickRepliesAttachment::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUICK_REPLIES =
            T.let(
              :QUICK_REPLIES,
              HubspotSDK::Conversations::QuickRepliesAttachment::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::QuickRepliesAttachment::Type::TaggedSymbol
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
