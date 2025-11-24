# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class MessageCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::MessageCreateParams,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T.any(
              HubspotSDK::Conversations::PublicConversationsMessageEgg,
              HubspotSDK::Conversations::PublicCommentEgg
            )
          )
        end
        attr_accessor :public_message_egg

        sig do
          params(
            public_message_egg:
              T.any(
                HubspotSDK::Conversations::PublicConversationsMessageEgg::OrHash,
                HubspotSDK::Conversations::PublicCommentEgg::OrHash
              ),
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T.attached_class)
        end
        def self.new(public_message_egg:, request_options: {})
        end

        sig do
          override.returns(
            {
              public_message_egg:
                T.any(
                  HubspotSDK::Conversations::PublicConversationsMessageEgg,
                  HubspotSDK::Conversations::PublicCommentEgg
                ),
              request_options: HubspotSDK::RequestOptions
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
