# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      module SubscriptionUpsertRequest
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest }

        variant -> { HubspotSDK::Webhooks::AssociationSubscriptionUpsertRequest }

        variant -> { HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest }

        variant -> { HubspotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Webhooks::ObjectSubscriptionUpsertRequest, HubspotSDK::Models::Webhooks::AssociationSubscriptionUpsertRequest, HubspotSDK::Models::Webhooks::AppLifecycleEventSubscriptionUpsertRequest, HubspotSDK::Models::Webhooks::ListMembershipSubscriptionUpsertRequest)]
      end
    end
  end
end
