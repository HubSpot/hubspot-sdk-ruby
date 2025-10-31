# typed: strong

module HubspotSDK
  module Models
    module Conversations
      module PublicMessageEgg
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicConversationsMessageEgg,
              HubspotSDK::Conversations::PublicCommentEgg
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Conversations::PublicMessageEgg::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
