# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class CollectionResponsePublicMessageForwardPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::CollectionResponsePublicMessageForwardPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Conversations::PublicMessage::Variants])
        end
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results:
              T::Array[
                T.any(
                  HubspotSDK::Conversations::ConversationsPublicConversationsMessage::OrHash,
                  HubspotSDK::Conversations::PublicComment::OrHash,
                  HubspotSDK::Conversations::PublicWelcomeMessage::OrHash,
                  HubspotSDK::Conversations::PublicAssignmentMessage::OrHash,
                  HubspotSDK::Conversations::PublicThreadStatusChange::OrHash,
                  HubspotSDK::Conversations::PublicThreadInboxChange::OrHash
                )
              ],
            paging: HubspotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results:
                T::Array[HubspotSDK::Conversations::PublicMessage::Variants],
              paging: HubspotSDK::ForwardPaging
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
