# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      module SubscriptionUpsertRequest
        extend HubspotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest,
              HubspotSDK::Webhooks::AssociationSubscriptionUpsertRequest,
              HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest,
              HubspotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest
            )
          end

        sig do
          override.returns(
            T::Array[HubspotSDK::Webhooks::SubscriptionUpsertRequest::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
