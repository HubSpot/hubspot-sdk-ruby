# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicQuickReplies < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicQuickReplies,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :allow_multi_select

        sig { returns(T::Boolean) }
        attr_accessor :allow_user_input

        sig { returns(T::Array[HubspotSDK::Conversations::QuickReply]) }
        attr_accessor :quick_replies

        sig do
          returns(
            HubspotSDK::Conversations::PublicQuickReplies::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            allow_multi_select: T::Boolean,
            allow_user_input: T::Boolean,
            quick_replies:
              T::Array[HubspotSDK::Conversations::QuickReply::OrHash],
            type: HubspotSDK::Conversations::PublicQuickReplies::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          allow_multi_select:,
          allow_user_input:,
          quick_replies:,
          type:
        )
        end

        sig do
          override.returns(
            {
              allow_multi_select: T::Boolean,
              allow_user_input: T::Boolean,
              quick_replies: T::Array[HubspotSDK::Conversations::QuickReply],
              type:
                HubspotSDK::Conversations::PublicQuickReplies::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Conversations::PublicQuickReplies::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUICK_REPLIES =
            T.let(
              :QUICK_REPLIES,
              HubspotSDK::Conversations::PublicQuickReplies::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Conversations::PublicQuickReplies::Type::TaggedSymbol
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
