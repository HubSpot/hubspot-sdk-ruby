# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      module SubscriptionUpsertRequest
        extend HubSpotSDK::Internal::Type::Union

        Variants =
          T.type_alias do
            T.any(
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest,
              HubSpotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest
            )
          end

        sig do
          override.returns(
            T::Array[HubSpotSDK::Webhooks::SubscriptionUpsertRequest::Variants]
          )
        end
        def self.variants
        end
      end
    end
  end
end
