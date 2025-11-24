# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class CollectionResponsePublicThreadForwardPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::CollectionResponsePublicThreadForwardPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Conversations::PublicThread]) }
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubspotSDK::Conversations::PublicThread::OrHash],
            paging: HubspotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Conversations::PublicThread],
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
