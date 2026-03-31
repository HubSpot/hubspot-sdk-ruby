# typed: strong

module HubspotSDK
  module Resources
    class Webhooks
      class Webhooks
        sig { returns(HubspotSDK::Resources::Webhooks::Webhooks::Batch) }
        attr_reader :batch

        sig do
          params(
            snapshot_requests:
              T::Array[HubspotSDK::Webhooks::CrmObjectSnapshotRequest::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::CrmObjectSnapshotBatchResponse)
        end
        def create_crm_snapshot(snapshot_requests:, request_options: {})
        end

        sig do
          params(
            filter: HubspotSDK::Webhooks::Filter::OrHash,
            subscription_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::FilterCreateResponse)
        end
        def create_filter(
          # Defines a single condition for searching CRM objects, specifying the property to
          # filter on, the operator to use (such as equals, greater than, or contains), and
          # the value(s) to compare against.
          filter:,
          subscription_id:,
          request_options: {}
        )
        end

        sig do
          params(
            subscription_upsert_request:
              T.any(
                HubspotSDK::Webhooks::ObjectSubscriptionUpsertRequest::OrHash,
                HubspotSDK::Webhooks::AssociationSubscriptionUpsertRequest::OrHash,
                HubspotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::OrHash,
                HubspotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::OrHash
              ),
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SubscriptionResponse1)
        end
        def create_journal_subscription(
          subscription_upsert_request:,
          request_options: {}
        )
        end

        # Create new event subscription for the specified app.
        sig do
          params(
            app_id: Integer,
            active: T::Boolean,
            event_type:
              HubspotSDK::Webhooks::SubscriptionCreateRequest::EventType::OrSymbol,
            event_type_name: String,
            object_type_id: String,
            property_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SubscriptionResponse)
        end
        def create_subscription(
          app_id,
          # Determines if the subscription is active or paused. Defaults to false.
          active:,
          # Type of event to listen for. Can be one of `create`, `delete`,
          # `deletedForPrivacy`, or `propertyChange`.
          event_type:,
          # The name of the event to listen for. This is used with custom objects to specify
          # custom event types beyond the standard eventType enum values.
          event_type_name: nil,
          # The ID of the object type for the subscription. This can be a standard CRM
          # object (e.g., 'contact', 'company', 'deal') or a custom object ID for custom
          # object subscriptions.
          object_type_id: nil,
          # The internal name of the property to monitor for changes. Only applies when
          # `eventType` is `propertyChange`.
          property_name: nil,
          request_options: {}
        )
        end

        sig do
          params(
            filter_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_filter(filter_id, request_options: {})
        end

        sig do
          params(
            subscription_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_journal_subscription(subscription_id, request_options: {})
        end

        sig do
          params(
            portal_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_portal_subscriptions(portal_id, request_options: {})
        end

        # Delete the webhook settings for the specified app. Event subscriptions will not
        # be deleted, but will be paused until another webhook is created.
        sig do
          params(
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_settings(app_id, request_options: {})
        end

        # Delete an existing event subscription by ID.
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
            filter_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::FilterResponse)
        end
        def get_filter(filter_id, request_options: {})
        end

        sig do
          params(
            subscription_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(T::Array[HubspotSDK::Webhooks::FilterResponse])
        end
        def get_filters_by_subscription(subscription_id, request_options: {})
        end

        sig do
          params(
            install_portal_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_journal_earliest(install_portal_id: nil, request_options: {})
        end

        sig do
          params(
            install_portal_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_journal_latest(install_portal_id: nil, request_options: {})
        end

        sig do
          params(
            offset: String,
            install_portal_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_journal_next_by_offset(
          offset,
          install_portal_id: nil,
          request_options: {}
        )
        end

        sig do
          params(
            status_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SnapshotStatusResponse)
        end
        def get_journal_status(status_id, request_options: {})
        end

        sig do
          params(
            install_portal_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_local_earliest(install_portal_id: nil, request_options: {})
        end

        sig do
          params(
            install_portal_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_local_latest(install_portal_id: nil, request_options: {})
        end

        sig do
          params(
            offset: String,
            install_portal_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(StringIO)
        end
        def get_local_next_by_offset(
          offset,
          install_portal_id: nil,
          request_options: {}
        )
        end

        sig do
          params(
            status_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SnapshotStatusResponse)
        end
        def get_local_status(status_id, request_options: {})
        end

        # Retrieve the webhook settings for the specified app, including the webhook’s
        # target URL, throttle configuration, and create/update date.
        sig do
          params(
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SettingsResponse)
        end
        def get_settings(app_id, request_options: {})
        end

        # Retrieve a specific event subscription by ID.
        sig do
          params(
            subscription_id: Integer,
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SubscriptionResponse)
        end
        def get_subscription(subscription_id, app_id:, request_options: {})
        end

        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Webhooks::CollectionResponseSubscriptionResponseNoPaging
          )
        end
        def list_journal_subscriptions(request_options: {})
        end

        # Retrieve event subscriptions for the specified app.
        sig do
          params(
            app_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SubscriptionListResponse)
        end
        def list_subscriptions(app_id, request_options: {})
        end

        # Update webhook settings for the specified app.
        sig do
          params(
            app_id: Integer,
            target_url: String,
            throttling: HubspotSDK::Webhooks::ThrottlingSettings::OrHash,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SettingsResponse)
        end
        def update_settings(
          app_id,
          # A publicly available URL for Hubspot to call where event payloads will be
          # delivered. See [link-so-some-doc](#) for details about the format of these event
          # payloads.
          target_url:,
          throttling:,
          request_options: {}
        )
        end

        # Update an existing event subscription by ID.
        sig do
          params(
            subscription_id: Integer,
            app_id: Integer,
            active: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Webhooks::SubscriptionResponse)
        end
        def update_subscription(
          # Path param
          subscription_id,
          # Path param
          app_id:,
          # Body param: Whether to activate or pause the webhook subscription. If true, the
          # subscription will send webhook notifications. If false, the subscription is
          # paused and will not send notifications.
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
end
