# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class AppLifecycleEventSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute event_type_id
        #
        #   @return [String]
        required :event_type_id, String, api_name: :eventTypeId

        # @!attribute properties
        #
        #   @return [Array<String>]
        required :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute subscription_type
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType]
        required :subscription_type,
                 enum: -> {
                   HubSpotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType
                 },
                 api_name: :subscriptionType

        # @!method initialize(event_type_id:, properties:, subscription_type:)
        #   @param event_type_id [String]
        #   @param properties [Array<String>]
        #   @param subscription_type [Symbol, HubSpotSDK::Models::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType]

        # @see HubSpotSDK::Models::Webhooks::AppLifecycleEventSubscriptionUpsertRequest#subscription_type
        module SubscriptionType
          extend HubSpotSDK::Internal::Type::Enum

          OBJECT = :OBJECT
          ASSOCIATION = :ASSOCIATION
          EVENT = :EVENT
          APP_LIFECYCLE_EVENT = :APP_LIFECYCLE_EVENT
          LIST_MEMBERSHIP = :LIST_MEMBERSHIP
          GDPR_PRIVACY_DELETION = :GDPR_PRIVACY_DELETION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
