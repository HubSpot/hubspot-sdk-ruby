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

      # Create a batch of CRM object snapshots for a specified portal. This endpoint
      # allows you to capture the current state of CRM objects by submitting a batch
      # request with the necessary object details. It is useful for tracking changes or
      # maintaining historical records of CRM data.
      sig do
        params(
          snapshot_requests:
            T::Array[HubSpotSDK::Webhooks::CrmObjectSnapshotRequest::OrHash],
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::CrmObjectSnapshotBatchResponse)
      end
      def create_crm_snapshots(
        # An array of CrmObjectSnapshotRequest objects, each representing a request to
        # capture a snapshot of a specific CRM object. This property is required.
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
        # A boolean indicating whether the subscription is active. This field is required.
        active:,
        # A string representing the type of event to subscribe to. Valid values include
        # various object changes such as 'contact.propertyChange', 'deal.creation', and
        # 'conversation.newMessage'.
        event_type:,
        # A string that provides a human-readable name for the event type. This is
        # optional.
        event_type_name: nil,
        # A string representing the identifier of the object type for which the
        # subscription is being created. This is optional.
        object_type_id: nil,
        # A string indicating the name of the property that triggers the event. This is
        # optional and used when subscribing to property change events.
        property_name: nil,
        request_options: {}
      )
      end

      # Create a new subscription in the webhooks journal for the specified version.
      # This endpoint allows you to define the subscription details, including actions
      # and object types, to manage webhook events effectively. It requires a valid
      # request body with the subscription details.
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

      # Create a new filter for a webhook subscription in the HubSpot account. This
      # endpoint allows you to define conditions that determine when a webhook event
      # should be triggered for a specific subscription. The request body must include
      # the subscription ID and the filter details.
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
        # It is an integer in int64 format.
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
      # longer needed.
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
      # removes the subscription associated with the given portalId, effectively
      # stopping any webhook events from being sent to the portal.
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

      # Remove a specific filter from your webhook journal subscriptions. This operation
      # is useful when you need to clean up or modify the filters applied to your
      # webhook subscriptions. The filter identified by the filterId will be permanently
      # deleted.
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
      # allowing you to process or analyze them as needed.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_earliest_journal_batch(
        # The number of journal entries to retrieve. This must be an integer with a
        # minimum value of 1.
        count,
        # The ID of the portal installation for which to fetch the journal entries. This
        # is an optional parameter.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the earliest entry from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the initial entries in the journal, which
      # can be helpful for debugging or auditing purposes.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_earliest_journal_entry(
        # The ID of the portal installation to filter the journal entries. This is an
        # integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the earliest batch of webhook journal entries up to a specified count.
      # This endpoint is useful for accessing the oldest records available in the
      # webhook journal, allowing you to process or analyze historical webhook data.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_earliest_local_journal_batch(
        # The number of webhook journal entries to retrieve. It must be an integer with a
        # minimum value of 1.
        count,
        # The ID of the portal installation to filter the webhook journal entries. It is
        # an integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the earliest entry from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the oldest available data in the journal,
      # which can be used for historical analysis or troubleshooting.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_earliest_local_journal_entry(
        # The ID of the portal for which to retrieve the earliest journal entry. This
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

      # Read a batch of webhook journal entries for the specified portal. This endpoint
      # allows you to retrieve detailed information about webhook events processed by
      # your HubSpot account. It is useful for auditing and tracking webhook activity.
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
        # Query param: The ID of the portal from which to retrieve webhook journal
        # entries. This is an integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve a batch of webhook journal entries starting from a specified offset.
      # This endpoint allows you to specify the number of entries to retrieve, helping
      # you manage and paginate through large sets of webhook data efficiently.
      sig do
        params(
          count: Integer,
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_journal_batch_from_offset(
        # Path param: The number of webhook journal entries to retrieve in the batch. This
        # parameter is required and must be an integer greater than or equal to 1.
        count,
        # Path param: The starting point for retrieving the batch of webhook journal
        # entries. This parameter is required and determines where the batch retrieval
        # begins.
        offset:,
        # Query param: The ID of the portal installation to filter the webhook journal
        # entries. This parameter is optional and is used to specify which portal's data
        # to retrieve.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the status of a specific webhook journal entry using its unique status
      # ID. This endpoint is useful for monitoring the progress or outcome of a webhook
      # operation, providing insights into whether it is pending, in progress,
      # completed, failed, or expired.
      sig do
        params(
          status_id: String,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SnapshotStatusResponse)
      end
      def get_journal_status(
        # The unique identifier (UUID) of the webhook journal entry whose status is to be
        # retrieved.
        status_id,
        request_options: {}
      )
      end

      # Retrieve details of a specific webhook journal subscription using its unique
      # identifier. This endpoint is useful for obtaining information about a particular
      # subscription, such as its actions, object types, and associated properties.
      sig do
        params(
          subscription_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SubscriptionResponse1)
      end
      def get_journal_subscription(
        # The unique identifier of the subscription to retrieve. It is an integer value.
        subscription_id,
        request_options: {}
      )
      end

      # Retrieve the latest batch of webhook journal entries up to a specified count.
      # This endpoint is useful for fetching the most recent webhook events processed by
      # your HubSpot account. The response includes details about each event, and you
      # can specify the number of entries to retrieve.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_latest_journal_batch(
        # The number of journal entries to retrieve. Must be an integer with a minimum
        # value of 1.
        count,
        # The ID of the portal installation. This parameter is optional and can be used to
        # filter results by a specific portal.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the latest entry from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the most recent webhook data available in
      # the journal.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_latest_journal_entry(
        # The ID of the portal for which to retrieve the latest journal entry. It is an
        # integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the latest batch of webhook journal entries up to a specified count.
      # This endpoint is useful for fetching the most recent webhook events processed by
      # the system. It requires authentication and supports various security schemes.
      sig do
        params(
          count: Integer,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_latest_local_journal_batch(
        # The number of webhook journal entries to retrieve. It must be an integer with a
        # minimum value of 1.
        count,
        # The ID of the portal installation to filter the webhook journal entries. It is
        # an optional integer parameter.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the latest entries from the webhooks journal. This endpoint is useful
      # for accessing the most recent webhook data for analysis or troubleshooting. It
      # supports filtering by the installPortalId to narrow down results to a specific
      # portal.
      sig do
        params(
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_latest_local_journal_entry(
        # An integer representing the ID of the portal to filter the webhook journal
        # entries.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Perform a batch read operation on the webhooks journal. This endpoint allows you
      # to retrieve a batch of journal entries by providing the necessary input data. It
      # is useful for processing large volumes of webhook data efficiently.
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
        # Query param: The ID of the portal where the webhook is installed. This parameter
        # is optional and is used to specify the portal context for the operation.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve a batch of webhook journal entries starting from a specified offset.
      # This endpoint is useful for fetching sequential batches of data, allowing you to
      # paginate through large sets of webhook journal entries efficiently.
      sig do
        params(
          count: Integer,
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse)
      end
      def get_local_journal_batch_from_offset(
        # Path param: The number of entries to retrieve in the batch. This must be an
        # integer with a minimum value of 1.
        count,
        # Path param: The starting point for the batch retrieval. This is a string value
        # representing the offset in the journal.
        offset:,
        # Query param: The ID of the portal where the webhooks are installed. This is an
        # integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the status of a specific webhook journal entry using its unique status
      # ID. This endpoint is useful for checking the progress or result of a webhook
      # operation, such as whether it is pending, in progress, completed, failed, or
      # expired.
      sig do
        params(
          status_id: String,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(HubSpotSDK::Webhooks::SnapshotStatusResponse)
      end
      def get_local_journal_status(
        # The unique identifier (UUID) of the webhook journal entry whose status is to be
        # retrieved.
        status_id,
        request_options: {}
      )
      end

      # Retrieve the next set of webhook journal entries starting from a specified
      # offset. This endpoint is useful for paginating through webhook journal entries
      # in a HubSpot account. It allows you to continue fetching entries from where the
      # last request left off, using the offset parameter.
      sig do
        params(
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_next_journal_entries(
        # The offset from which to start retrieving the next set of journal entries. This
        # is a string value.
        offset,
        # The ID of the portal where the webhooks are installed. This is an integer value.
        install_portal_id: nil,
        request_options: {}
      )
      end

      # Retrieve the next set of journal entries starting from a specified offset. This
      # endpoint is useful for paginating through webhook journal entries in a
      # sequential manner. It requires specifying the offset from which the next entries
      # should be fetched.
      sig do
        params(
          offset: String,
          install_portal_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(StringIO)
      end
      def get_next_local_journal_entries(
        # The offset from which the next set of journal entries should be retrieved. This
        # parameter is required to specify the starting point for the retrieval.
        offset,
        # The ID of the portal installation to filter the journal entries by. This is an
        # optional parameter.
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
      # endpoint allows you to access detailed information about the filter identified
      # by the filterId path parameter. It is useful for managing and reviewing filter
      # configurations within your webhook subscriptions.
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

      # Retrieve a list of webhook journal subscriptions for the specified version. This
      # endpoint allows you to view all active subscriptions without pagination. It is
      # useful for managing and auditing webhook subscriptions in your HubSpot account.
      sig do
        params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
          HubSpotSDK::Webhooks::CollectionResponseSubscriptionResponseNoPaging
        )
      end
      def list_journal_subscriptions(request_options: {})
      end

      # Retrieve the filters associated with a specific webhook subscription. This
      # endpoint is useful for obtaining detailed information about the filters applied
      # to a subscription, which can help in managing and understanding the data flow
      # through your webhook integrations.
      sig do
        params(
          subscription_id: Integer,
          request_options: HubSpotSDK::RequestOptions::OrHash
        ).returns(T::Array[HubSpotSDK::Webhooks::FilterResponse])
      end
      def list_subscription_filters(
        # The unique identifier of the subscription for which filters are being retrieved.
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
        # Body param: Whether to activate or pause the webhook subscription. If true, the
        # subscription will send webhook notifications. If false, the subscription is
        # paused and will not send notifications.
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
        # A publicly available URL for Hubspot to call where event payloads will be
        # delivered. See [link-so-some-doc](#) for details about the format of these event
        # payloads.
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
