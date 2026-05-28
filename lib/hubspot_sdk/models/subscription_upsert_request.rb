# frozen_string_literal: true

module HubSpotSDK
  module Models
    module SubscriptionUpsertRequest
      extend HubSpotSDK::Internal::Type::Union

      discriminator :subscriptionType

      variant :OBJECT, -> { HubSpotSDK::ObjectSubscriptionUpsertRequest }

      variant :ASSOCIATION, -> { HubSpotSDK::AssociationSubscriptionUpsertRequest }

      variant :APP_LIFECYCLE_EVENT, -> { HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest }

      variant :LIST_MEMBERSHIP, -> { HubSpotSDK::ListMembershipSubscriptionUpsertRequest }

      variant :GDPR_PRIVACY_DELETION, -> { HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest }

      # @!method self.variants
      #   @return [Array(HubSpotSDK::Models::ObjectSubscriptionUpsertRequest, HubSpotSDK::Models::AssociationSubscriptionUpsertRequest, HubSpotSDK::Models::AppLifecycleEventSubscriptionUpsertRequest, HubSpotSDK::Models::ListMembershipSubscriptionUpsertRequest, HubSpotSDK::Models::GdprPrivacyDeletionSubscriptionUpsertRequest)]
    end
  end
end
