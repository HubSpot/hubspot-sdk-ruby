# typed: strong

module HubspotSDK
  module Resources
    class AppWebhooks
      sig do
        params(
          app_id: Integer,
          inputs:
            T::Array[
              HubspotSDK::AppWebhooks::SubscriptionBatchUpdateRequest::OrHash
            ],
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(HubspotSDK::AppWebhooks::BatchResponseSubscriptionResponse)
      end
      def batch_update_subscriptions(app_id, inputs:, request_options: {})
      end

      sig do
        params(
          app_id: Integer,
          active: T::Boolean,
          event_type:
            HubspotSDK::AppWebhooks::SubscriptionCreateRequest::EventType::OrSymbol,
          event_type_name: String,
          object_type_id: String,
          property_name: String,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(HubspotSDK::AppWebhooks::SubscriptionResponse)
      end
      def create_subscription(
        app_id,
        # Determines if the subscription is active or paused. Defaults to false.
        active:,
        # Type of event to listen for. Can be one of `create`, `delete`,
        # `deletedForPrivacy`, or `propertyChange`.
        event_type:,
        event_type_name: nil,
        object_type_id: nil,
        # The internal name of the property to monitor for changes. Only applies when
        # `eventType` is `propertyChange`.
        property_name: nil,
        request_options: {}
      )
      end

      sig do
        params(
          app_id: Integer,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).void
      end
      def delete_settings(app_id, request_options: {})
      end

      sig do
        params(
          subscription_id: Integer,
          app_id: Integer,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).void
      end
      def delete_subscription(subscription_id, app_id:, request_options: {})
      end

      sig do
        params(
          app_id: Integer,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(HubspotSDK::Crm::Extensions::SettingsResponse)
      end
      def get_settings(app_id, request_options: {})
      end

      sig do
        params(
          subscription_id: Integer,
          app_id: Integer,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(HubspotSDK::AppWebhooks::SubscriptionResponse)
      end
      def get_subscription(subscription_id, app_id:, request_options: {})
      end

      sig do
        params(
          app_id: Integer,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(HubspotSDK::AppWebhooks::SubscriptionListResponse)
      end
      def list_subscriptions(app_id, request_options: {})
      end

      sig do
        params(
          app_id: Integer,
          target_url: String,
          throttling: HubspotSDK::AppWebhooks::ThrottlingSettings::OrHash,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(HubspotSDK::Crm::Extensions::SettingsResponse)
      end
      def update_settings(
        app_id,
        # A publicly available URL for HubSpot to call where event payloads will be
        # delivered.
        target_url:,
        throttling:,
        request_options: {}
      )
      end

      sig do
        params(
          subscription_id: Integer,
          app_id: Integer,
          active: T::Boolean,
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(HubspotSDK::AppWebhooks::SubscriptionResponse)
      end
      def update_subscription(
        # Path param
        subscription_id,
        # Path param
        app_id:,
        # Body param: Determines if the subscription is active or paused.
        active: nil,
        request_options: {}
      )
      end

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
