# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      module SubscriptionUpsertRequest
        extend HubSpotSDK::Internal::Type::Union

        variant -> { HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest }

        variant -> { HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest }

        variant -> { HubSpotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest }

        variant -> { HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest }

        variant -> { HubSpotSDK::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest }

        # @!method self.variants
        #   @return [Array(HubSpotSDK::Models::Webhooks::ObjectSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::AssociationSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::AppLifecycleEventSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::ListMembershipSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest)]
      end
    end
  end
end
