# frozen_string_literal: true

module HubSpotSDK
  module Models
    module SubscriptionUpsertRequest
      extend HubSpotSDK::Internal::Type::Union

      variant -> { HubSpotSDK::ObjectSubscriptionUpsertRequest }

      variant -> { HubSpotSDK::AssociationSubscriptionUpsertRequest }

      variant -> { HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest }

      variant -> { HubSpotSDK::ListMembershipSubscriptionUpsertRequest }

      variant -> { HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest }

      # @!method self.variants
      #   @return [Array(HubSpotSDK::Models::ObjectSubscriptionUpsertRequest, HubSpotSDK::Models::AssociationSubscriptionUpsertRequest, HubSpotSDK::Models::AppLifecycleEventSubscriptionUpsertRequest, HubSpotSDK::Models::ListMembershipSubscriptionUpsertRequest, HubSpotSDK::Models::GdprPrivacyDeletionSubscriptionUpsertRequest)]
    end
  end
end
