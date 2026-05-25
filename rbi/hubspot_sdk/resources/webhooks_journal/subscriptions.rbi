# typed: strong

module HubSpotSDK
  module Resources
    class WebhooksJournal
      class Subscriptions
        sig do
          returns(
            HubSpotSDK::Resources::WebhooksJournal::Subscriptions::Filters
          )
        end
        attr_reader :filters

        # Create a new subscription in the Webhooks Journal for the specified version.
        # This endpoint allows you to define the subscription details by providing the
        # necessary information in the request body. It supports various types of
        # subscriptions, including object, association, event, app lifecycle event, list
        # membership, and GDPR privacy deletion. Ensure that all required fields are
        # included in the request to successfully create a subscription.
        sig do
          params(
            subscription_upsert_request:
              T.any(
                HubSpotSDK::ObjectSubscriptionUpsertRequest::OrHash,
                HubSpotSDK::AssociationSubscriptionUpsertRequest::OrHash,
                HubSpotSDK::AppLifecycleEventSubscriptionUpsertRequest::OrHash,
                HubSpotSDK::ListMembershipSubscriptionUpsertRequest::OrHash,
                HubSpotSDK::GdprPrivacyDeletionSubscriptionUpsertRequest::OrHash
              ),
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::WebhooksJournal::SubscriptionResponse)
        end
        def create(subscription_upsert_request:, request_options: {})
        end

        # Retrieve a list of webhook journal subscriptions for the specified version. This
        # endpoint allows you to view all active subscriptions without pagination. It is
        # useful for monitoring and managing webhook subscriptions in your HubSpot
        # account.
        sig do
          params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
            HubSpotSDK::WebhooksJournal::CollectionResponseSubscriptionResponseNoPaging
          )
        end
        def list(request_options: {})
        end

        # Delete a specific webhook journal subscription using its unique identifier. This
        # operation is useful for managing and cleaning up subscriptions that are no
        # longer needed in your HubSpot account.
        sig do
          params(
            subscription_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The unique identifier of the subscription to delete. It must be provided as an
          # integer.
          subscription_id,
          request_options: {}
        )
        end

        # Delete a webhook journal subscription for a specific portal. This operation
        # removes the subscription associated with the given portalId, ensuring that no
        # further webhook events are sent for this portal. Use this endpoint to manage and
        # clean up subscriptions that are no longer needed.
        sig do
          params(
            portal_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_for_portal(
          # The unique identifier of the portal for which the webhook journal subscription
          # is to be deleted.
          portal_id,
          request_options: {}
        )
        end

        # Retrieve details of a specific webhook subscription using its unique identifier.
        # This endpoint is useful for obtaining information about a particular
        # subscription, such as its actions, object type, and associated properties.
        sig do
          params(
            subscription_id: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::WebhooksJournal::SubscriptionResponse)
        end
        def get(
          # The unique identifier of the subscription to retrieve.
          subscription_id,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
