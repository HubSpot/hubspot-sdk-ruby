# typed: strong

module HubSpotSDK
  module Models
    module SubscriptionUpsertRequest
      extend HubSpotSDK::Internal::Type::Union

      Variants =
        T.type_alias do
          T.any(
            HubSpotSDK::ObjectSubscriptionUpsertRequest,
            HubSpotSDK::AssociationSubscriptionUpsertRequest,
            HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest,
            HubSpotSDK::ListMembershipSubscriptionUpsertRequest,
            HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest
          )
        end

      sig do
        override.returns(
          T::Array[HubSpotSDK::SubscriptionUpsertRequest::Variants]
        )
      end
      def self.variants
      end
    end
  end
end
