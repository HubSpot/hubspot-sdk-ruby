# typed: strong

module HubSpotSDK
  module Models
    class AppLifecycleEventSubscriptionUpsertRequest < HubSpotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(
            HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest,
            HubSpotSDK::Internal::AnyHash
          )
        end

      sig { returns(String) }
      attr_accessor :event_type_id

      sig { returns(T::Array[String]) }
      attr_accessor :properties

      sig do
        returns(
          HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::OrSymbol
        )
      end
      attr_accessor :subscription_type

      sig do
        params(
          event_type_id: String,
          properties: T::Array[String],
          subscription_type:
            HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::OrSymbol
        ).returns(T.attached_class)
      end
      def self.new(event_type_id:, properties:, subscription_type:)
      end

      sig do
        override.returns(
          {
            event_type_id: String,
            properties: T::Array[String],
            subscription_type:
              HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::OrSymbol
          }
        )
      end
      def to_hash
      end

      module SubscriptionType
        extend HubSpotSDK::Internal::Type::Enum

        TaggedSymbol =
          T.type_alias do
            T.all(
              Symbol,
              HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType
            )
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        APP_LIFECYCLE_EVENT =
          T.let(
            :APP_LIFECYCLE_EVENT,
            HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
