# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicQuickReplies < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicQuickReplies,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :allow_multi_select

        sig { returns(T::Boolean) }
        attr_accessor :allow_user_input

        sig { returns(T::Array[HubSpotSDK::Conversations::QuickReply]) }
        attr_accessor :quick_replies

        sig do
          returns(
            HubSpotSDK::Conversations::PublicQuickReplies::Type::TaggedSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            allow_multi_select: T::Boolean,
            allow_user_input: T::Boolean,
            quick_replies:
              T::Array[HubSpotSDK::Conversations::QuickReply::OrHash],
            type: HubSpotSDK::Conversations::PublicQuickReplies::Type::OrSymbol
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
              quick_replies: T::Array[HubSpotSDK::Conversations::QuickReply],
              type:
                HubSpotSDK::Conversations::PublicQuickReplies::Type::TaggedSymbol
            }
          )
        end
        def to_hash
        end

        module Type
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Conversations::PublicQuickReplies::Type)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          QUICK_REPLIES =
            T.let(
              :QUICK_REPLIES,
              HubSpotSDK::Conversations::PublicQuickReplies::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Conversations::PublicQuickReplies::Type::TaggedSymbol
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
