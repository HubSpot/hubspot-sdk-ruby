# typed: strong

module HubSpotSDK
  module Resources
    class Webhooks
      # Batch create event subscriptions for the specified app.
      sig do
        params(
          app_id: Integer,
          inputs:
            T::Array[
              HubSpotSDK::Webhooks::SubscriptionBatchUpdateRequest::OrHash
            ],
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseSubscriptionResponse)
      end
      def create_batch_event_subscriptions(
        # The identifier for the app.
        app_id,
        # An array of SubscriptionBatchUpdateRequest objects, each representing a
        # subscription to be updated. This property is required.
        inputs:,
        request_options: {}
      )
      end

      # Create a batch of CRM object snapshots in HubSpot. This endpoint is used to
      # capture the current state of specified CRM objects for later reference or
      # analysis. It requires a JSON payload containing the details of the CRM objects
      # to snapshot. This operation is exempt from daily and ten-secondly rate limits.
      sig do
        params(
          snapshot_requests:
            T::Array[HubSpotSDK::CrmObjectSnapshotRequest::OrHash],
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::CrmObjectSnapshotBatchResponse)
      end
      def create_crm_snapshots(
        # An array of CrmObjectSnapshotRequest objects, each representing a request to
        # create a snapshot for a specific CRM object. This property is required.
        snapshot_requests:,
        request_options: {}
      )
      end

      # Create new event subscription for the specified app.
      sig do
        params(
          app_id: Integer,
          active: T::Boolean,
          event_type:
            HubSpotSDK::Webhooks::SubscriptionCreateRequest::EventType::OrSymbol,
          event_type_name: String,
          object_type_id: String,
          property_name: String,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SubscriptionResponse)
      end
      def create_event_subscription(
        # The identifier for the app.
        app_id,
        # A boolean indicating whether the subscription is active.
        active:,
        # A string representing the type of event to subscribe to. Valid values include
        # various property changes, creations, deletions, merges, restorations,
        # association changes, and event completions.
        event_type:,
        # A string providing a human-readable name for the event type.
        event_type_name: nil,
        # A string representing the ID of the object type associated with the
        # subscription.
        object_type_id: nil,
        # A string indicating the specific property name related to the event type, if
        # applicable.
        property_name: nil,
        request_options: {}
      )
      end

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
      def create_journal_subscription(
        subscription_upsert_request:,
        request_options: {}
      )
      end

      # Create a new filter for a specific webhook subscription in the HubSpot account.
      # This endpoint allows you to define conditions that determine when a webhook
      # should be triggered. The filter is associated with a subscription identified by
      # its ID, and the request must include the filter details.
      sig do
        params(
          filter: HubSpotSDK::Filter::OrHash,
          subscription_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::FilterCreateResponse)
      end
      def create_subscription_filter(
        # Defines a single condition for searching CRM objects, specifying the property to
        # filter on, the operator to use (such as equals, greater than, or contains), and
        # the value(s) to compare against.
        filter:,
        # The unique identifier of the subscription to which the filter will be applied.
        # It is an integer formatted as int64.
        subscription_id:,
        request_options: {}
      )
      end

      # Delete an existing event subscription by ID.
      sig do
        params(
          subscription_id: Integer,
          app_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).void
      end
      def delete_event_subscription(
        # The identifier for the subscription.
        subscription_id,
        # The identifier for the app.
        app_id:,
        request_options: {}
      )
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
      def delete_journal_subscription(
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
      def delete_journal_subscription_for_portal(
        # The unique identifier of the portal for which the webhook journal subscription
        # is to be deleted.
        portal_id,
        request_options: {}
      )
      end

      # Delete the webhook settings for the specified app. Event subscriptions will not
      # be deleted, but will be paused until another webhook is created.
      sig do
        params(
          app_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).void
      end
      def delete_settings(
        # The identifier for the app.
        app_id,
        request_options: {}
      )
      end

      # Remove a specific filter from the webhooks journal subscriptions. This operation
      # is useful for managing and cleaning up filters that are no longer needed. Once
      # deleted, the filter cannot be recovered.
      sig do
        params(
          filter_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).void
      end
      def delete_subscription_filter(
        # The unique identifier of the filter to delete.
        filter_id,
        request_options: {}
      )
      end

      # Retrieve the earliest batch of webhook journal entries for a specified count.
      # This endpoint is useful for accessing historical webhook data in batches,
      # allowing you to process or analyze older entries. The number of entries
      # retrieved is determined by the count parameter.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
      end
      def get_earliest_journal_batch(
        # The number of earliest journal entries to retrieve. This must be an integer with
        # a minimum value of 1.
        count,
        # The ID of the portal installation. This is an integer value that specifies which
        # portal's data to access.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the earliest entry from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the first recorded webhook event in the
      # journal, which can be helpful for auditing or debugging purposes.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_earliest_journal_entry(
        # The ID of the portal installation to filter the journal entries by. This is an
        # integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the earliest batch of webhook journal entries. This endpoint is useful
      # for accessing the oldest available data in the webhook journal, allowing users
      # to process or analyze historical webhook events. The number of entries to fetch
      # is specified by the 'count' path parameter.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
      end
      def get_earliest_local_journal_batch(
        # The number of earliest webhook journal entries to retrieve. This is a required
        # integer parameter with a minimum value of 1.
        count,
        # The ID of the portal installation to filter the webhook journal entries. This is
        # an optional integer parameter.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the earliest webhook journal entries for the specified portal. This
      # endpoint can be used to access the oldest records available in the webhook
      # journal, which may be useful for auditing or historical analysis.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_earliest_local_journal_entry(
        # The ID of the portal for which to retrieve the earliest webhook journal entries.
        # This parameter is optional and should be an integer.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve a specific event subscription by ID.
      sig do
        params(
          subscription_id: Integer,
          app_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SubscriptionResponse)
      end
      def get_event_subscription(
        # The identifier for the subscription.
        subscription_id,
        # The identifier for the app.
        app_id:,
        request_options: {}
      )
      end

      # Execute a batch read operation on the webhooks journal for the specified date,
      # 2026-03. This endpoint allows you to retrieve multiple entries from the webhooks
      # journal in a single request, which can be useful for processing large amounts of
      # data efficiently. Ensure that the request body is provided in the required
      # format.
      sig do
        params(
          inputs: T::Array[String],
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
      end
      def get_journal_batch_by_request(
        # Body param: Strings to input.
        inputs:,
        # Query param: An integer representing the ID of the portal installation for which
        # the webhooks journal data should be retrieved.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve a batch of webhook journal entries starting from a specified offset.
      # This endpoint allows you to fetch a defined number of entries, which can be
      # useful for processing large datasets in manageable chunks.
      sig do
        params(
          count: Integer,
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
      end
      def get_journal_batch_from_offset(
        # Path param: The number of journal entries to retrieve. This must be an integer
        # with a minimum value of 1.
        count,
        # Path param: The starting point for fetching the journal entries. This is a
        # string value.
        offset:,
        # Query param: The ID of the portal installation. This is an integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the status of a specific webhook journal entry using its unique status
      # ID. This endpoint provides detailed information about the status, including
      # whether it is pending, in progress, completed, failed, or expired. It is useful
      # for monitoring and managing the state of webhook journal entries.
      sig do
        params(
          status_id: String,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::SnapshotStatusResponse)
      end
      def get_journal_status(
        # The unique identifier (UUID) of the status to retrieve.
        status_id,
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
      def get_journal_subscription(
        # The unique identifier of the subscription to retrieve.
        subscription_id,
        request_options: {}
      )
      end

      # Retrieve the latest batch of webhook journal entries up to the specified count.
      # This endpoint is useful for fetching recent webhook data for analysis or
      # processing. The count parameter determines the maximum number of entries to
      # return.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
      end
      def get_latest_journal_batch(
        # The maximum number of journal entries to retrieve. This is a required integer
        # parameter with a minimum value of 1.
        count,
        # The ID of the portal installation. This is an integer value used to specify the
        # portal context for the request.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the latest entries from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the most recent webhook events and their
      # statuses, allowing you to monitor and debug webhook activity effectively.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_latest_journal_entry(
        # The unique identifier of the portal installation for which to retrieve the
        # latest journal entries. This parameter is optional and should be an integer.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the latest batch of webhook journal entries. This endpoint allows you
      # to specify the number of entries to fetch, providing a way to access the most
      # recent webhook events processed by your HubSpot account.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
      end
      def get_latest_local_journal_batch(
        # The number of journal entries to retrieve. Must be an integer with a minimum
        # value of 1.
        count,
        # The ID of the portal where the webhook journal is installed. This parameter is
        # optional and used to specify the target portal.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the latest entries from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the most recent webhook events that have
      # been logged, allowing for real-time monitoring or debugging of webhook
      # activities.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_latest_local_journal_entry(
        # The ID of the portal for which to retrieve the latest journal entries. This is
        # an integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Execute a batch read operation on the webhooks journal. This endpoint allows you
      # to retrieve a batch of webhook journal entries by providing the necessary input
      # data. It is useful for processing multiple records in a single request,
      # streamlining data retrieval tasks.
      sig do
        params(
          inputs: T::Array[String],
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
      end
      def get_local_journal_batch_by_request(
        # Body param: Strings to input.
        inputs:,
        # Query param: The ID of the portal where the webhooks are installed. This
        # parameter is optional and is used to specify the target portal for the
        # operation.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve a batch of webhook journal entries starting from a specified offset.
      # This endpoint is useful for paginating through large sets of webhook data. The
      # number of entries returned is determined by the 'count' parameter.
      sig do
        params(
          count: Integer,
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::BatchResponseJournalFetchResponse)
      end
      def get_local_journal_batch_from_offset(
        # Path param: The number of journal entries to retrieve in this batch. Must be an
        # integer with a minimum value of 1.
        count,
        # Path param: The starting point for the batch retrieval, specified as a string.
        offset:,
        # Query param: The ID of the portal where the webhooks are installed. This is an
        # optional parameter.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the status of a specific webhook journal entry using its unique status
      # ID. This endpoint is useful for monitoring the progress or outcome of webhook
      # journal entries, allowing you to check if an entry is pending, in progress,
      # completed, failed, or expired.
      sig do
        params(
          status_id: String,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::SnapshotStatusResponse)
      end
      def get_local_journal_status(
        # The unique identifier of the status to retrieve. It should be in UUID format.
        status_id,
        request_options: {}
      )
      end

      # Retrieve the next set of entries from the webhooks journal starting from a
      # specified offset. This endpoint is useful for paginating through journal entries
      # to process or analyze webhook events sequentially.
      sig do
        params(
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_next_journal_entries(
        # The offset string indicating the starting point for retrieving the next set of
        # journal entries.
        offset,
        # The ID of the portal where the webhooks are installed. This is an integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the next set of webhook journal entries starting from a specified
      # offset. This endpoint is useful for paginating through large sets of webhook
      # data, allowing you to continue from where a previous request left off.
      sig do
        params(
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_next_local_journal_entries(
        # The starting point for retrieving the next set of webhook journal entries. This
        # is a string value that represents the current position in the journal.
        offset,
        # The ID of the portal installation to filter the webhook journal entries. This is
        # an integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the webhook settings for the specified app, including the webhook’s
      # target URL, throttle configuration, and create/update date.
      sig do
        params(
          app_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SettingsResponse)
      end
      def get_settings(
        # The identifier for the app.
        app_id,
        request_options: {}
      )
      end

      # Retrieve a specific filter associated with a webhook journal subscription. This
      # endpoint allows you to access the details of the filter identified by the
      # filterId, which is useful for managing and understanding the conditions applied
      # to webhook events.
      sig do
        params(
          filter_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::FilterResponse)
      end
      def get_subscription_filter(
        # The unique identifier of the filter to retrieve. It is an integer value.
        filter_id,
        request_options: {}
      )
      end

      # Retrieve event subscriptions for the specified app.
      sig do
        params(
          app_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SubscriptionListResponse)
      end
      def list_event_subscriptions(
        # The identifier for the app.
        app_id,
        request_options: {}
      )
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
      def list_journal_subscriptions(request_options: {})
      end

      # Retrieve the filters associated with a specific webhook subscription. This
      # endpoint allows you to view the filters applied to a subscription, which can
      # help in managing and understanding the conditions set for webhook events.
      sig do
        params(
          subscription_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(T::Array[HubSpotSDK::FilterResponse])
      end
      def list_subscription_filters(
        # The unique identifier of the subscription for which to retrieve filters. This is
        # an integer value.
        subscription_id,
        request_options: {}
      )
      end

      # Update an existing event subscription by ID.
      sig do
        params(
          subscription_id: Integer,
          app_id: Integer,
          active: T::Boolean,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SubscriptionResponse)
      end
      def update_event_subscription(
        # Path param: The identifier for the subscription.
        subscription_id,
        # Path param: The identifier for the app.
        app_id:,
        # Body param: A boolean indicating whether the subscription is active. If true,
        # the subscription is active; if false, it is inactive.
        active: nil,
        request_options: {}
      )
      end

      # Update webhook settings for the specified app.
      sig do
        params(
          app_id: Integer,
          target_url: String,
          throttling: HubSpotSDK::Webhooks::ThrottlingSettings::OrHash,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SettingsResponse)
      end
      def update_settings(
        # The identifier for the app.
        app_id,
        # The URL to which webhook events will be sent. It is a string.
        target_url:,
        throttling:,
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
