# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class Subscriptions
        class Filters
          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::WebhooksJournal::Subscriptions::FilterCreateParams} for
          # more details.
          #
          # Create a new filter for a specific webhook subscription in the HubSpot account.
          # This endpoint allows you to define conditions that determine when a webhook
          # should be triggered. The filter is associated with a subscription identified by
          # its ID, and the request must include the filter details.
          #
          # @overload create(filter:, subscription_id:, request_options: {})
          #
          # @param filter [HubSpotSDK::Models::Filter] Defines a single condition for searching CRM objects, specifying the property to
          #
          # @param subscription_id [Integer] The unique identifier of the subscription to which the filter will be applied. I
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::FilterCreateResponse]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::Subscriptions::FilterCreateParams
          def create(params)
            parsed, options = HubSpotSDK::WebhooksJournal::Subscriptions::FilterCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "webhooks-journal/subscriptions/2026-03/filters",
              body: parsed,
              model: HubSpotSDK::FilterCreateResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::WebhooksJournal::Subscriptions::FilterListParams} for more
          # details.
          #
          # Retrieve the filters associated with a specific webhook subscription. This
          # endpoint allows you to view the filters applied to a subscription, which can
          # help in managing and understanding the conditions set for webhook events.
          #
          # @overload list(subscription_id, request_options: {})
          #
          # @param subscription_id [Integer] The unique identifier of the subscription for which to retrieve filters. This is
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [Array<HubSpotSDK::Models::FilterResponse>]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::Subscriptions::FilterListParams
          def list(subscription_id, params = {})
            @client.request(
              method: :get,
              path: ["webhooks-journal/subscriptions/2026-03/filters/subscription/%1$s", subscription_id],
              model: HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::FilterResponse],
              options: params[:request_options]
            )
          end

          # Remove a specific filter from the webhooks journal subscriptions. This operation
          # is useful for managing and cleaning up filters that are no longer needed. Once
          # deleted, the filter cannot be recovered.
          #
          # @overload delete(filter_id, request_options: {})
          #
          # @param filter_id [Integer] The unique identifier of the filter to delete.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::Subscriptions::FilterDeleteParams
          def delete(filter_id, params = {})
            @client.request(
              method: :delete,
              path: ["webhooks-journal/subscriptions/2026-03/filters/%1$s", filter_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Retrieve a specific filter associated with a webhook journal subscription. This
          # endpoint allows you to access the details of the filter identified by the
          # filterId, which is useful for managing and understanding the conditions applied
          # to webhook events.
          #
          # @overload get(filter_id, request_options: {})
          #
          # @param filter_id [Integer] The unique identifier of the filter to retrieve. It is an integer value.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::FilterResponse]
          #
          # @see HubSpotSDK::Models::WebhooksJournal::Subscriptions::FilterGetParams
          def get(filter_id, params = {})
            @client.request(
              method: :get,
              path: ["webhooks-journal/subscriptions/2026-03/filters/%1$s", filter_id],
              model: HubSpotSDK::FilterResponse,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
