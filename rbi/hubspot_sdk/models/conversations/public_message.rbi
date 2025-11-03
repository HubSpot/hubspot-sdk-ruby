# typed: strong

module HubspotSDK
  module Models
    module Conversations
      module PublicMessage
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ConversationsPublicConversationsMessage,
              HubspotSDK::Conversations::PublicComment,
              HubspotSDK::Conversations::PublicWelcomeMessage,
              HubspotSDK::Conversations::PublicAssignmentMessage,
              HubspotSDK::Conversations::PublicThreadStatusChange,
              HubspotSDK::Conversations::PublicThreadInboxChange
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Conversations::PublicMessage::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
