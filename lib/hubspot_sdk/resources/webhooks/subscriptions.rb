# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Webhooks
      class Subscriptions
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Webhooks::SubscriptionCreateParams} for more details.
        #
        # Create new event subscription for the specified app.
        #
        # @overload create(app_id, event_type:, active: nil, object_type_id: nil, property_name: nil, request_options: {})
        #
        # @param app_id [Integer] The ID of the app.
        #
        # @param event_type [Symbol, HubspotSDK::Models::Webhooks::SubscriptionCreateRequest::EventType] Type of event to listen for. Can be one of `create`, `delete`, `deletedForPrivac
        #
        # @param active [Boolean] Determines if the subscription is active or paused. Defaults to false.
        #
        # @param object_type_id [String]
        #
        # @param property_name [String] The internal name of the property to monitor for changes. Only applies when `eve
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SubscriptionResponse]
        #
        # @see HubspotSDK::Models::Webhooks::SubscriptionCreateParams
        def create(app_id, params)
          parsed, options = HubspotSDK::Webhooks::SubscriptionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["webhooks/v3/%1$s/subscriptions", app_id],
            body: parsed,
            model: HubspotSDK::Webhooks::SubscriptionResponse,
            options: options
          )
        end

        # Update an existing event subscription by ID.
        #
        # @overload update(subscription_id, app_id:, active: nil, request_options: {})
        #
        # @param subscription_id [Integer] Path param: The ID of the event subscription.
        #
        # @param app_id [Integer] Path param: The ID of the app.
        #
        # @param active [Boolean] Body param: Determines if the subscription is active or paused.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SubscriptionResponse]
        #
        # @see HubspotSDK::Models::Webhooks::SubscriptionUpdateParams
        def update(subscription_id, params)
          parsed, options = HubspotSDK::Webhooks::SubscriptionUpdateParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["webhooks/v3/%1$s/subscriptions/%2$s", app_id, subscription_id],
            body: parsed,
            model: HubspotSDK::Webhooks::SubscriptionResponse,
            options: options
          )
        end

        # Retrieve event subscriptions for the specified app.
        #
        # @overload list(app_id, request_options: {})
        #
        # @param app_id [Integer] The ID of the app.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SubscriptionListResponse]
        #
        # @see HubspotSDK::Models::Webhooks::SubscriptionListParams
        def list(app_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks/v3/%1$s/subscriptions", app_id],
            model: HubspotSDK::Webhooks::SubscriptionListResponse,
            options: params[:request_options]
          )
        end

        # Delete an existing event subscription by ID.
        #
        # @overload delete(subscription_id, app_id:, request_options: {})
        #
        # @param subscription_id [Integer] The ID of the event subscription.
        #
        # @param app_id [Integer] The ID of the app.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Webhooks::SubscriptionDeleteParams
        def delete(subscription_id, params)
          parsed, options = HubspotSDK::Webhooks::SubscriptionDeleteParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["webhooks/v3/%1$s/subscriptions/%2$s", app_id, subscription_id],
            model: NilClass,
            options: options
          )
        end

        # Retrieve a specific event subscription by ID.
        #
        # @overload get(subscription_id, app_id:, request_options: {})
        #
        # @param subscription_id [Integer] The ID of the event subscription.
        #
        # @param app_id [Integer] The ID of the app.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SubscriptionResponse]
        #
        # @see HubspotSDK::Models::Webhooks::SubscriptionGetParams
        def get(subscription_id, params)
          parsed, options = HubspotSDK::Webhooks::SubscriptionGetParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["webhooks/v3/%1$s/subscriptions/%2$s", app_id, subscription_id],
            model: HubspotSDK::Webhooks::SubscriptionResponse,
            options: options
          )
        end

        # Batch create event subscriptions for the specified app.
        #
        # @overload update_batch(app_id, inputs:, request_options: {})
        #
        # @param app_id [Integer] The ID of the app.
        #
        # @param inputs [Array<HubspotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest>]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::BatchResponseSubscriptionResponse]
        #
        # @see HubspotSDK::Models::Webhooks::SubscriptionUpdateBatchParams
        def update_batch(app_id, params)
          parsed, options = HubspotSDK::Webhooks::SubscriptionUpdateBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["webhooks/v3/%1$s/subscriptions/batch/update", app_id],
            body: parsed,
            model: HubspotSDK::Webhooks::BatchResponseSubscriptionResponse,
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
end
