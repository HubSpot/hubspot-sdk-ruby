# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class Subscriptions
        # @return [HubSpotSDK::Resources::WebhooksJournal::Subscriptions::Filters]
        attr_reader :filters

        # Create a new subscription in the Webhooks Journal for the specified version.
        # This endpoint allows you to define the subscription details by providing the
        # necessary information in the request body. It supports various types of
        # subscriptions, including object, association, event, app lifecycle event, list
        # membership, and GDPR privacy deletion. Ensure that all required fields are
        # included in the request to successfully create a subscription.
        #
        # @overload create(subscription_upsert_request:, request_options: {})
        #
        # @param subscription_upsert_request [HubSpotSDK::Models::ObjectSubscriptionUpsertRequest, HubSpotSDK::Models::AssociationSubscriptionUpsertRequest, HubSpotSDK::Models::AppLifecycleEventSubscriptionUpsertRequest, HubSpotSDK::Models::ListMembershipSubscriptionUpsertRequest, HubSpotSDK::Models::GdprPrivacyDeletionSubscriptionUpsertRequest]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::SubscriptionCreateParams
        def create(params)
          parsed, options = HubSpotSDK::WebhooksJournal::SubscriptionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "webhooks-journal/subscriptions/2026-03",
            body: parsed[:subscription_upsert_request],
            model: HubSpotSDK::WebhooksJournal::SubscriptionResponse,
            options: options
          )
        end

        # Retrieve a list of webhook journal subscriptions for the specified version. This
        # endpoint allows you to view all active subscriptions without pagination. It is
        # useful for monitoring and managing webhook subscriptions in your HubSpot
        # account.
        #
        # @overload list(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::WebhooksJournal::CollectionResponseSubscriptionResponseNoPaging]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::SubscriptionListParams
        def list(params = {})
          @client.request(
            method: :get,
            path: "webhooks-journal/subscriptions/2026-03",
            model: HubSpotSDK::WebhooksJournal::CollectionResponseSubscriptionResponseNoPaging,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::WebhooksJournal::SubscriptionDeleteParams} for more
        # details.
        #
        # Delete a specific webhook journal subscription using its unique identifier. This
        # operation is useful for managing and cleaning up subscriptions that are no
        # longer needed in your HubSpot account.
        #
        # @overload delete(subscription_id, request_options: {})
        #
        # @param subscription_id [Integer] The unique identifier of the subscription to delete. It must be provided as an i
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::SubscriptionDeleteParams
        def delete(subscription_id, params = {})
          @client.request(
            method: :delete,
            path: ["webhooks-journal/subscriptions/2026-03/%1$s", subscription_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::WebhooksJournal::SubscriptionDeleteForPortalParams} for
        # more details.
        #
        # Delete a webhook journal subscription for a specific portal. This operation
        # removes the subscription associated with the given portalId, ensuring that no
        # further webhook events are sent for this portal. Use this endpoint to manage and
        # clean up subscriptions that are no longer needed.
        #
        # @overload delete_for_portal(portal_id, request_options: {})
        #
        # @param portal_id [Integer] The unique identifier of the portal for which the webhook journal subscription i
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::SubscriptionDeleteForPortalParams
        def delete_for_portal(portal_id, params = {})
          @client.request(
            method: :delete,
            path: ["webhooks-journal/subscriptions/2026-03/portals/%1$s", portal_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Retrieve details of a specific webhook subscription using its unique identifier.
        # This endpoint is useful for obtaining information about a particular
        # subscription, such as its actions, object type, and associated properties.
        #
        # @overload get(subscription_id, request_options: {})
        #
        # @param subscription_id [Integer] The unique identifier of the subscription to retrieve.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse]
        #
        # @see HubSpotSDK::Models::WebhooksJournal::SubscriptionGetParams
        def get(subscription_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks-journal/subscriptions/2026-03/%1$s", subscription_id],
            model: HubSpotSDK::WebhooksJournal::SubscriptionResponse,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @filters = HubSpotSDK::Resources::WebhooksJournal::Subscriptions::Filters.new(client: client)
        end
      end
    end
  end
end
