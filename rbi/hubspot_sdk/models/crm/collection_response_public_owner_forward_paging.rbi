# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePublicOwnerForwardPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponsePublicOwnerForwardPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::PublicOwner]) }
        attr_accessor :results

        sig { returns(T.nilable(HubspotSDK::ForwardPaging)) }
        attr_reader :paging

        sig { params(paging: HubspotSDK::ForwardPaging::OrHash).void }
        attr_writer :paging

        sig do
          params(
            results: T::Array[HubspotSDK::Crm::PublicOwner::OrHash],
            paging: HubspotSDK::ForwardPaging::OrHash
          ).returns(T.attached_class)
        end
        def self.new(results:, paging: nil)
        end

        sig do
          override.returns(
            {
              results: T::Array[HubspotSDK::Crm::PublicOwner],
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
