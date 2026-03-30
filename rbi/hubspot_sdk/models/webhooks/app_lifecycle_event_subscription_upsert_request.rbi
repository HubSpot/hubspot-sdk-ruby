# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      class AppLifecycleEventSubscriptionUpsertRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :event_type_id

        sig { returns(T::Array[String]) }
        attr_accessor :properties

        sig do
          returns(
            HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::OrSymbol
          )
        end
        attr_accessor :subscription_type

        sig do
          params(
            event_type_id: String,
            properties: T::Array[String],
            subscription_type:
              HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::OrSymbol
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
                HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::OrSymbol
            }
          )
        end
        def to_hash
        end

        module SubscriptionType
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          OBJECT =
            T.let(
              :OBJECT,
              HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          ASSOCIATION =
            T.let(
              :ASSOCIATION,
              HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          EVENT =
            T.let(
              :EVENT,
              HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          APP_LIFECYCLE_EVENT =
            T.let(
              :APP_LIFECYCLE_EVENT,
              HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )
          LIST_MEMBERSHIP =
            T.let(
              :LIST_MEMBERSHIP,
              HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::SubscriptionType::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
