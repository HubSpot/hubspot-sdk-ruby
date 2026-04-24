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

      # Create a batch of CRM object snapshots for the specified portal. This endpoint
      # allows you to capture the state of CRM objects at a specific point in time,
      # which can be useful for auditing or historical analysis. The request requires a
      # list of CRM object snapshot requests, each specifying the portal ID, object ID,
      # object type ID, and properties to include in the snapshot.
      sig do
        params(
          snapshot_requests:
            T::Array[HubSpotSDK::Webhooks::CrmObjectSnapshotRequest::OrHash],
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::CrmObjectSnapshotBatchResponse)
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

      # Create a new webhook subscription for the specified portal in the HubSpot
      # account. This endpoint allows you to define the subscription details, including
      # the types of events you want to subscribe to. The request body must include the
      # necessary subscription information as defined by the SubscriptionUpsertRequest
      # schema.
      sig do
        params(
          subscription_upsert_request:
            T.any(
              HubSpotSDK::Webhooks::ObjectSubscriptionUpsertRequest::OrHash,
              HubSpotSDK::Webhooks::AssociationSubscriptionUpsertRequest::OrHash,
              HubSpotSDK::Webhooks::AppLifecycleEventSubscriptionUpsertRequest::OrHash,
              HubSpotSDK::Webhooks::ListMembershipSubscriptionUpsertRequest::OrHash,
              HubSpotSDK::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest::OrHash
            ),
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SubscriptionResponse1)
      end
      def create_journal_subscription(
        subscription_upsert_request:,
        request_options: {}
      )
      end

      # Create a new filter for a webhook subscription in your HubSpot account. This
      # endpoint allows you to define specific conditions that a webhook event must meet
      # to trigger the subscription. It is useful for managing and customizing the
      # behavior of webhook subscriptions based on specific criteria.
      sig do
        params(
          filter: HubSpotSDK::Webhooks::Filter::OrHash,
          subscription_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::FilterCreateResponse)
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
      # longer needed or relevant.
      sig do
        params(
          subscription_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).void
      end
      def delete_journal_subscription(
        # The unique identifier of the subscription to delete.
        subscription_id,
        request_options: {}
      )
      end

      # Delete a webhook journal subscription for a specific portal. This operation
      # removes the subscription associated with the given portalId, and no content is
      # returned upon successful deletion.
      sig do
        params(
          portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).void
      end
      def delete_journal_subscription_for_portal(
        # The unique identifier of the portal whose webhook journal subscription is to be
        # deleted.
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

      # Delete a specific filter associated with a webhook journal subscription. This
      # operation is useful for managing and cleaning up filters that are no longer
      # needed in your subscription setup. The endpoint requires the unique identifier
      # of the filter to be deleted.
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

      # Retrieve the earliest batch of webhook journal entries up to the specified
      # count. This endpoint is useful for fetching historical webhook data in batches,
      # allowing you to process or analyze the earliest entries first.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_earliest_journal_batch(
        # The maximum number of journal entries to retrieve in the batch. This must be an
        # integer with a minimum value of 1.
        count,
        # The ID of the portal installation to filter the webhook journal entries by. This
        # is an integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the earliest entry from the webhooks journal for the specified version.
      # This endpoint is useful for accessing the oldest records available in the
      # journal, which can be helpful for auditing or historical data analysis.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_earliest_journal_entry(
        # The ID of the portal installation to filter the journal entries. It is an
        # integer.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the earliest batch of webhook journal entries based on the specified
      # count. This endpoint is useful for fetching a specific number of the earliest
      # entries in the webhook journal for analysis or processing.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_earliest_local_journal_batch(
        # The number of earliest entries to retrieve from the webhook journal. Must be an
        # integer with a minimum value of 1.
        count,
        # The ID of the portal where the webhooks are installed. This is an integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the earliest entry from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the oldest records in the journal, which
      # can be helpful for auditing or tracking purposes.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_earliest_local_journal_entry(
        # The ID of the portal installation to filter the journal entries by. This
        # parameter is optional and should be an integer.
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

      # Perform a batch read operation on the webhooks journal for the specified date.
      # This endpoint allows you to retrieve multiple entries from the webhooks journal
      # in a single request, which can be useful for processing large amounts of data
      # efficiently.
      sig do
        params(
          inputs: T::Array[String],
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_journal_batch_by_request(
        # Body param: Strings to input.
        inputs:,
        # Query param: The ID of the portal where the webhooks are installed. This is an
        # integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve a batch of webhook journal entries starting from a specified offset.
      # This endpoint allows you to fetch a specified number of entries, making it
      # useful for paginating through large sets of webhook journal data.
      sig do
        params(
          count: Integer,
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_journal_batch_from_offset(
        # Path param: The number of journal entries to fetch in the batch. This is an
        # integer value with a minimum of 1.
        count,
        # Path param: The starting point for fetching the next batch of journal entries.
        # This is a string value that indicates the offset position.
        offset:,
        # Query param: The ID of the portal installation. This is an integer value used to
        # specify the portal context for the request.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the status of a specific webhook journal entry using its status ID.
      # This endpoint is useful for checking the current state of a webhook process,
      # such as whether it is pending, in progress, completed, failed, or expired.
      sig do
        params(
          status_id: String,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SnapshotStatusResponse)
      end
      def get_journal_status(
        # The unique identifier (UUID) of the status to retrieve.
        status_id,
        request_options: {}
      )
      end

      # Retrieve details of a specific webhook subscription using its unique identifier.
      # This endpoint is useful for obtaining information about a particular
      # subscription's configuration and status within the HubSpot account.
      sig do
        params(
          subscription_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SubscriptionResponse1)
      end
      def get_journal_subscription(
        # The unique identifier of the subscription to retrieve. It must be an integer.
        subscription_id,
        request_options: {}
      )
      end

      # Retrieve the latest batch of webhook journal entries. This endpoint allows you
      # to specify the number of entries to fetch, providing a way to access recent
      # webhook activity within your HubSpot account.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_latest_journal_batch(
        # The number of journal entries to retrieve. This is a required integer parameter
        # with a minimum value of 1.
        count,
        # The ID of the portal installation. This is an integer value used to identify the
        # specific portal.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the latest entries from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the most recent webhook events processed
      # by your HubSpot account. It allows you to filter the results by the portal ID to
      # ensure you are retrieving data relevant to a specific installation.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_latest_journal_entry(
        # The ID of the portal installation to filter the journal entries. It is an
        # integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the latest batch of webhook journal entries. This endpoint is useful
      # for accessing the most recent data entries processed by the webhook journal. It
      # requires specifying the number of entries to retrieve.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_latest_local_journal_batch(
        # The number of journal entries to retrieve. Must be an integer with a minimum
        # value of 1.
        count,
        # The ID of the portal installation. This parameter is optional and used to filter
        # the journal entries by a specific portal.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the latest entries from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the most recent webhook events that have
      # been logged, allowing you to process or analyze them as needed.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_latest_local_journal_entry(
        # The ID of the portal for which to retrieve the latest journal entries. This
        # parameter is optional and should be an integer.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Perform a batch read operation on the webhooks journal. This endpoint allows you
      # to read multiple entries from the journal in a single request. It requires a
      # JSON request body specifying the inputs to be read. The response includes the
      # results of the batch read operation, and may return multiple statuses if there
      # are errors.
      sig do
        params(
          inputs: T::Array[String],
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_local_journal_batch_by_request(
        # Body param: Strings to input.
        inputs:,
        # Query param: The ID of the portal where the webhooks are installed. This
        # parameter is optional and is used to specify the target portal.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve a batch of webhook journal entries starting from a specified offset.
      # This endpoint allows you to fetch a defined number of entries, facilitating the
      # processing of webhook data in manageable chunks.
      sig do
        params(
          count: Integer,
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_local_journal_batch_from_offset(
        # Path param: The number of journal entries to retrieve. This is an integer value
        # with a minimum of 1.
        count,
        # Path param: The starting point for fetching the batch of journal entries. This
        # is a string value that indicates the offset position.
        offset:,
        # Query param: The ID of the portal installation. This is an integer value used to
        # specify the portal context for the request.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the status of a specific webhook journal entry using its unique status
      # ID. This endpoint is useful for monitoring the progress or completion of webhook
      # processing tasks.
      sig do
        params(
          status_id: String,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SnapshotStatusResponse)
      end
      def get_local_journal_status(
        # The unique identifier (UUID) of the status to retrieve.
        status_id,
        request_options: {}
      )
      end

      # Retrieve the next batch of webhook journal entries starting from a specified
      # offset. This endpoint is useful for paginating through large sets of webhook
      # data, allowing you to continue fetching entries from where you last left off.
      sig do
        params(
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_next_journal_entries(
        # The offset from which to start retrieving the next batch of webhook journal
        # entries. This parameter is required and identifies the starting point for the
        # batch retrieval.
        offset,
        # The ID of the portal installation to filter the webhook journal entries. This is
        # an optional parameter.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the next set of webhook journal entries starting from a specified
      # offset. This endpoint is useful for paginating through webhook journal data in a
      # sequential manner, allowing you to fetch entries beyond a given point.
      sig do
        params(
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_next_local_journal_entries(
        # The starting point for retrieving the next set of journal entries. This is a
        # string value.
        offset,
        # The ID of the portal where the webhook is installed. This is an integer value.
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

      # Retrieve details of a specific filter associated with a webhook subscription in
      # the HubSpot account. This endpoint is useful for accessing the configuration and
      # conditions of a filter by its unique identifier.
      sig do
        params(
          filter_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::FilterResponse)
      end
      def get_subscription_filter(
        # The unique identifier of the filter to retrieve.
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

      # Retrieve a list of webhook journal subscriptions for the specified API version.
      # This endpoint provides details about each subscription, including actions,
      # object types, and associated properties. It is useful for managing and reviewing
      # current webhook subscriptions.
      sig do
        params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
          HubSpotSDK::Webhooks::CollectionResponseSubscriptionResponseNoPaging
        )
      end
      def list_journal_subscriptions(request_options: {})
      end

      # Retrieve the filters associated with a specific webhook subscription in the
      # HubSpot account. This endpoint is useful for obtaining detailed information
      # about the filters applied to a given subscription, identified by its
      # subscription ID.
      sig do
        params(
          subscription_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(T::Array[HubSpotSDK::Webhooks::FilterResponse])
      end
      def list_subscription_filters(
        # The unique identifier of the subscription for which to retrieve filters.
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
