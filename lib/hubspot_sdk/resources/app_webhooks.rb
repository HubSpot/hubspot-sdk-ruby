# frozen_string_literal: true

module HubspotSDK
  module Resources
    class AppWebhooks
      # @overload batch_update_subscriptions(app_id, inputs:, request_options: {})
      #
      # @param app_id [Integer]
      # @param inputs [Array<HubspotSDK::Models::AppWebhooks::SubscriptionBatchUpdateRequest>]
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::AppWebhooks::BatchResponseSubscriptionResponse]
      #
      # @see HubspotSDK::Models::AppWebhooks::AppWebhookBatchUpdateSubscriptionsParams
      def batch_update_subscriptions(app_id, params)
        parsed, options = HubspotSDK::AppWebhooks::AppWebhookBatchUpdateSubscriptionsParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["app-webhooks/2026-03/%1$s/subscriptions/batch/update", app_id],
          body: parsed,
          model: HubspotSDK::AppWebhooks::BatchResponseSubscriptionResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::AppWebhooks::AppWebhookCreateSubscriptionParams} for more
      # details.
      #
      # @overload create_subscription(app_id, active:, event_type:, event_type_name: nil, object_type_id: nil, property_name: nil, request_options: {})
      #
      # @param app_id [Integer]
      #
      # @param active [Boolean] Determines if the subscription is active or paused. Defaults to false.
      #
      # @param event_type [Symbol, HubspotSDK::Models::AppWebhooks::SubscriptionCreateRequest::EventType] Type of event to listen for. Can be one of `create`, `delete`, `deletedForPrivac
      #
      # @param event_type_name [String]
      #
      # @param object_type_id [String]
      #
      # @param property_name [String] The internal name of the property to monitor for changes. Only applies when `eve
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::AppWebhooks::SubscriptionResponse]
      #
      # @see HubspotSDK::Models::AppWebhooks::AppWebhookCreateSubscriptionParams
      def create_subscription(app_id, params)
        parsed, options = HubspotSDK::AppWebhooks::AppWebhookCreateSubscriptionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["app-webhooks/2026-03/%1$s/subscriptions", app_id],
          body: parsed,
          model: HubspotSDK::AppWebhooks::SubscriptionResponse,
          options: options
        )
      end

      # @overload delete_settings(app_id, request_options: {})
      #
      # @param app_id [Integer]
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see HubspotSDK::Models::AppWebhooks::AppWebhookDeleteSettingsParams
      def delete_settings(app_id, params = {})
        @client.request(
          method: :delete,
          path: ["app-webhooks/2026-03/%1$s/settings", app_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # @overload delete_subscription(subscription_id, app_id:, request_options: {})
      #
      # @param subscription_id [Integer]
      # @param app_id [Integer]
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see HubspotSDK::Models::AppWebhooks::AppWebhookDeleteSubscriptionParams
      def delete_subscription(subscription_id, params)
        parsed, options = HubspotSDK::AppWebhooks::AppWebhookDeleteSubscriptionParams.dump_request(params)
        app_id =
          parsed.delete(:app_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["app-webhooks/2026-03/%1$s/subscriptions/%2$s", app_id, subscription_id],
          model: NilClass,
          options: options
        )
      end

      # @overload get_settings(app_id, request_options: {})
      #
      # @param app_id [Integer]
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::Crm::Extensions::SettingsResponse]
      #
      # @see HubspotSDK::Models::AppWebhooks::AppWebhookGetSettingsParams
      def get_settings(app_id, params = {})
        @client.request(
          method: :get,
          path: ["app-webhooks/2026-03/%1$s/settings", app_id],
          model: HubspotSDK::Crm::Extensions::SettingsResponse,
          options: params[:request_options]
        )
      end

      # @overload get_subscription(subscription_id, app_id:, request_options: {})
      #
      # @param subscription_id [Integer]
      # @param app_id [Integer]
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::AppWebhooks::SubscriptionResponse]
      #
      # @see HubspotSDK::Models::AppWebhooks::AppWebhookGetSubscriptionParams
      def get_subscription(subscription_id, params)
        parsed, options = HubspotSDK::AppWebhooks::AppWebhookGetSubscriptionParams.dump_request(params)
        app_id =
          parsed.delete(:app_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["app-webhooks/2026-03/%1$s/subscriptions/%2$s", app_id, subscription_id],
          model: HubspotSDK::AppWebhooks::SubscriptionResponse,
          options: options
        )
      end

      # @overload list_subscriptions(app_id, request_options: {})
      #
      # @param app_id [Integer]
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::AppWebhooks::SubscriptionListResponse]
      #
      # @see HubspotSDK::Models::AppWebhooks::AppWebhookListSubscriptionsParams
      def list_subscriptions(app_id, params = {})
        @client.request(
          method: :get,
          path: ["app-webhooks/2026-03/%1$s/subscriptions", app_id],
          model: HubspotSDK::AppWebhooks::SubscriptionListResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::AppWebhooks::AppWebhookUpdateSettingsParams} for more
      # details.
      #
      # @overload update_settings(app_id, target_url:, throttling:, request_options: {})
      #
      # @param app_id [Integer]
      #
      # @param target_url [String] A publicly available URL for HubSpot to call where event payloads will be delive
      #
      # @param throttling [HubspotSDK::Models::AppWebhooks::ThrottlingSettings]
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::Crm::Extensions::SettingsResponse]
      #
      # @see HubspotSDK::Models::AppWebhooks::AppWebhookUpdateSettingsParams
      def update_settings(app_id, params)
        parsed, options = HubspotSDK::AppWebhooks::AppWebhookUpdateSettingsParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["app-webhooks/2026-03/%1$s/settings", app_id],
          body: parsed,
          model: HubspotSDK::Crm::Extensions::SettingsResponse,
          options: options
        )
      end

      # @overload update_subscription(subscription_id, app_id:, active: nil, request_options: {})
      #
      # @param subscription_id [Integer] Path param
      #
      # @param app_id [Integer] Path param
      #
      # @param active [Boolean] Body param: Determines if the subscription is active or paused.
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::AppWebhooks::SubscriptionResponse]
      #
      # @see HubspotSDK::Models::AppWebhooks::AppWebhookUpdateSubscriptionParams
      def update_subscription(subscription_id, params)
        parsed, options = HubspotSDK::AppWebhooks::AppWebhookUpdateSubscriptionParams.dump_request(params)
        app_id =
          parsed.delete(:app_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["app-webhooks/2026-03/%1$s/subscriptions/%2$s", app_id, subscription_id],
          body: parsed,
          model: HubspotSDK::AppWebhooks::SubscriptionResponse,
          options: options
        )
      end

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
