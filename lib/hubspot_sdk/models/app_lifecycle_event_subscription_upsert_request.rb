# frozen_string_literal: true

module HubSpotSDK
  module Models
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
      #   @return [Symbol, HubSpotSDK::Models::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType]
      required :subscription_type,
               enum: -> { HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType },
               api_name: :subscriptionType

      # @!method initialize(event_type_id:, properties:, subscription_type:)
      #   @param event_type_id [String]
      #   @param properties [Array<String>]
      #   @param subscription_type [Symbol, HubSpotSDK::Models::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType]

      # @see HubSpotSDK::Models::AppLifecycleEventSubscriptionUpsertRequest#subscription_type
      module SubscriptionType
        extend HubSpotSDK::Internal::Type::Enum

        APP_LIFECYCLE_EVENT = :APP_LIFECYCLE_EVENT

        # @!method self.values
        #   @return [Array<Symbol>]
      end
    end
  end
end
