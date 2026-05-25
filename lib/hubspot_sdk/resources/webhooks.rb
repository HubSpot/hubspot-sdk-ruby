# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Webhooks
      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookCreateBatchEventSubscriptionsParams} for
      # more details.
      #
      # Batch create event subscriptions for the specified app.
      #
      # @overload create_batch_event_subscriptions(app_id, inputs:, request_options: {})
      #
      # @param app_id [Integer] The identifier for the app.
      #
      # @param inputs [Array<HubSpotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest>] An array of SubscriptionBatchUpdateRequest objects, each representing a subscrip
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateBatchEventSubscriptionsParams
      def create_batch_event_subscriptions(app_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateBatchEventSubscriptionsParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["webhooks/2026-03/%1$s/subscriptions/batch/update", app_id],
          body: parsed,
          model: HubSpotSDK::Webhooks::BatchResponseSubscriptionResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookCreateCrmSnapshotsParams} for more
      # details.
      #
      # Create a batch of CRM object snapshots in HubSpot. This endpoint is used to
      # capture the current state of specified CRM objects for later reference or
      # analysis. It requires a JSON payload containing the details of the CRM objects
      # to snapshot. This operation is exempt from daily and ten-secondly rate limits.
      #
      # @overload create_crm_snapshots(snapshot_requests:, request_options: {})
      #
      # @param snapshot_requests [Array<HubSpotSDK::Models::CrmObjectSnapshotRequest>] An array of CrmObjectSnapshotRequest objects, each representing a request to cre
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::CrmObjectSnapshotBatchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateCrmSnapshotsParams
      def create_crm_snapshots(params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateCrmSnapshotsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks-journal/snapshots/2026-03/crm",
          body: parsed,
          model: HubSpotSDK::CrmObjectSnapshotBatchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookCreateEventSubscriptionParams} for more
      # details.
      #
      # Create new event subscription for the specified app.
      #
      # @overload create_event_subscription(app_id, active:, event_type:, event_type_name: nil, object_type_id: nil, property_name: nil, request_options: {})
      #
      # @param app_id [Integer] The identifier for the app.
      #
      # @param active [Boolean] A boolean indicating whether the subscription is active.
      #
      # @param event_type [Symbol, HubSpotSDK::Models::Webhooks::SubscriptionCreateRequest::EventType] A string representing the type of event to subscribe to. Valid values include va
      #
      # @param event_type_name [String] A string providing a human-readable name for the event type.
      #
      # @param object_type_id [String] A string representing the ID of the object type associated with the subscription
      #
      # @param property_name [String] A string indicating the specific property name related to the event type, if app
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SubscriptionResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateEventSubscriptionParams
      def create_event_subscription(app_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateEventSubscriptionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["webhooks/2026-03/%1$s/subscriptions", app_id],
          body: parsed,
          model: HubSpotSDK::Webhooks::SubscriptionResponse,
          options: options
        )
      end

      # Create a new subscription in the Webhooks Journal for the specified version.
      # This endpoint allows you to define the subscription details by providing the
      # necessary information in the request body. It supports various types of
      # subscriptions, including object, association, event, app lifecycle event, list
      # membership, and GDPR privacy deletion. Ensure that all required fields are
      # included in the request to successfully create a subscription.
      #
      # @overload create_journal_subscription(subscription_upsert_request:, request_options: {})
      #
      # @param subscription_upsert_request [HubSpotSDK::Models::ObjectSubscriptionUpsertRequest, HubSpotSDK::Models::AssociationSubscriptionUpsertRequest, HubSpotSDK::Models::AppLifecycleEventSubscriptionUpsertRequest, HubSpotSDK::Models::ListMembershipSubscriptionUpsertRequest, HubSpotSDK::Models::GdprPrivacyDeletionSubscriptionUpsertRequest]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateJournalSubscriptionParams
      def create_journal_subscription(params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateJournalSubscriptionParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks-journal/subscriptions/2026-03",
          body: parsed[:subscription_upsert_request],
          model: HubSpotSDK::WebhooksJournal::SubscriptionResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookCreateSubscriptionFilterParams} for more
      # details.
      #
      # Create a new filter for a specific webhook subscription in the HubSpot account.
      # This endpoint allows you to define conditions that determine when a webhook
      # should be triggered. The filter is associated with a subscription identified by
      # its ID, and the request must include the filter details.
      #
      # @overload create_subscription_filter(filter:, subscription_id:, request_options: {})
      #
      # @param filter [HubSpotSDK::Models::Filter] Defines a single condition for searching CRM objects, specifying the property to
      #
      # @param subscription_id [Integer] The unique identifier of the subscription to which the filter will be applied. I
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::FilterCreateResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateSubscriptionFilterParams
      def create_subscription_filter(params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateSubscriptionFilterParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks-journal/subscriptions/2026-03/filters",
          body: parsed,
          model: HubSpotSDK::FilterCreateResponse,
          options: options
        )
      end

      # Delete an existing event subscription by ID.
      #
      # @overload delete_event_subscription(subscription_id, app_id:, request_options: {})
      #
      # @param subscription_id [Integer] The identifier for the subscription.
      #
      # @param app_id [Integer] The identifier for the app.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookDeleteEventSubscriptionParams
      def delete_event_subscription(subscription_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookDeleteEventSubscriptionParams.dump_request(params)
        app_id =
          parsed.delete(:app_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :delete,
          path: ["webhooks/2026-03/%1$s/subscriptions/%2$s", app_id, subscription_id],
          model: NilClass,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookDeleteJournalSubscriptionParams} for more
      # details.
      #
      # Delete a specific webhook journal subscription using its unique identifier. This
      # operation is useful for managing and cleaning up subscriptions that are no
      # longer needed in your HubSpot account.
      #
      # @overload delete_journal_subscription(subscription_id, request_options: {})
      #
      # @param subscription_id [Integer] The unique identifier of the subscription to delete. It must be provided as an i
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookDeleteJournalSubscriptionParams
      def delete_journal_subscription(subscription_id, params = {})
        @client.request(
          method: :delete,
          path: ["webhooks-journal/subscriptions/2026-03/%1$s", subscription_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookDeleteJournalSubscriptionForPortalParams}
      # for more details.
      #
      # Delete a webhook journal subscription for a specific portal. This operation
      # removes the subscription associated with the given portalId, ensuring that no
      # further webhook events are sent for this portal. Use this endpoint to manage and
      # clean up subscriptions that are no longer needed.
      #
      # @overload delete_journal_subscription_for_portal(portal_id, request_options: {})
      #
      # @param portal_id [Integer] The unique identifier of the portal for which the webhook journal subscription i
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookDeleteJournalSubscriptionForPortalParams
      def delete_journal_subscription_for_portal(portal_id, params = {})
        @client.request(
          method: :delete,
          path: ["webhooks-journal/subscriptions/2026-03/portals/%1$s", portal_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Delete the webhook settings for the specified app. Event subscriptions will not
      # be deleted, but will be paused until another webhook is created.
      #
      # @overload delete_settings(app_id, request_options: {})
      #
      # @param app_id [Integer] The identifier for the app.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookDeleteSettingsParams
      def delete_settings(app_id, params = {})
        @client.request(
          method: :delete,
          path: ["webhooks/2026-03/%1$s/settings", app_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Remove a specific filter from the webhooks journal subscriptions. This operation
      # is useful for managing and cleaning up filters that are no longer needed. Once
      # deleted, the filter cannot be recovered.
      #
      # @overload delete_subscription_filter(filter_id, request_options: {})
      #
      # @param filter_id [Integer] The unique identifier of the filter to delete.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookDeleteSubscriptionFilterParams
      def delete_subscription_filter(filter_id, params = {})
        @client.request(
          method: :delete,
          path: ["webhooks-journal/subscriptions/2026-03/filters/%1$s", filter_id],
          model: NilClass,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetEarliestJournalBatchParams} for more
      # details.
      #
      # Retrieve the earliest batch of webhook journal entries for a specified count.
      # This endpoint is useful for accessing historical webhook data in batches,
      # allowing you to process or analyze older entries. The number of entries
      # retrieved is determined by the count parameter.
      #
      # @overload get_earliest_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] The number of earliest journal entries to retrieve. This must be an integer with
      #
      # @param install_portal_id [Integer] The ID of the portal installation. This is an integer value that specifies which
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetEarliestJournalBatchParams
      def get_earliest_journal_batch(count, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetEarliestJournalBatchParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal/2026-03/batch/earliest/%1$s", count],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          model: HubSpotSDK::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetEarliestJournalEntryParams} for more
      # details.
      #
      # Retrieve the earliest entry from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the first recorded webhook event in the
      # journal, which can be helpful for auditing or debugging purposes.
      #
      # @overload get_earliest_journal_entry(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer] The ID of the portal installation to filter the journal entries by. This is an i
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetEarliestJournalEntryParams
      def get_earliest_journal_entry(params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetEarliestJournalEntryParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "webhooks-journal/journal/2026-03/earliest",
          query: query.transform_keys(install_portal_id: "installPortalId"),
          headers: {"accept" => "*/*"},
          model: StringIO,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetEarliestLocalJournalBatchParams} for
      # more details.
      #
      # Retrieve the earliest batch of webhook journal entries. This endpoint is useful
      # for accessing the oldest available data in the webhook journal, allowing users
      # to process or analyze historical webhook events. The number of entries to fetch
      # is specified by the 'count' path parameter.
      #
      # @overload get_earliest_local_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] The number of earliest webhook journal entries to retrieve. This is a required i
      #
      # @param install_portal_id [Integer] The ID of the portal installation to filter the webhook journal entries. This is
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetEarliestLocalJournalBatchParams
      def get_earliest_local_journal_batch(count, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetEarliestLocalJournalBatchParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal-local/2026-03/batch/earliest/%1$s", count],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          model: HubSpotSDK::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetEarliestLocalJournalEntryParams} for
      # more details.
      #
      # Retrieve the earliest webhook journal entries for the specified portal. This
      # endpoint can be used to access the oldest records available in the webhook
      # journal, which may be useful for auditing or historical analysis.
      #
      # @overload get_earliest_local_journal_entry(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer] The ID of the portal for which to retrieve the earliest webhook journal entries.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetEarliestLocalJournalEntryParams
      def get_earliest_local_journal_entry(params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetEarliestLocalJournalEntryParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "webhooks-journal/journal-local/2026-03/earliest",
          query: query.transform_keys(install_portal_id: "installPortalId"),
          headers: {"accept" => "*/*"},
          model: StringIO,
          options: options
        )
      end

      # Retrieve a specific event subscription by ID.
      #
      # @overload get_event_subscription(subscription_id, app_id:, request_options: {})
      #
      # @param subscription_id [Integer] The identifier for the subscription.
      #
      # @param app_id [Integer] The identifier for the app.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SubscriptionResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetEventSubscriptionParams
      def get_event_subscription(subscription_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookGetEventSubscriptionParams.dump_request(params)
        app_id =
          parsed.delete(:app_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["webhooks/2026-03/%1$s/subscriptions/%2$s", app_id, subscription_id],
          model: HubSpotSDK::Webhooks::SubscriptionResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetJournalBatchByRequestParams} for more
      # details.
      #
      # Execute a batch read operation on the webhooks journal for the specified date,
      # 2026-03. This endpoint allows you to retrieve multiple entries from the webhooks
      # journal in a single request, which can be useful for processing large amounts of
      # data efficiently. Ensure that the request body is provided in the required
      # format.
      #
      # @overload get_journal_batch_by_request(inputs:, install_portal_id: nil, request_options: {})
      #
      # @param inputs [Array<String>] Body param: Strings to input.
      #
      # @param install_portal_id [Integer] Query param: An integer representing the ID of the portal installation for which
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetJournalBatchByRequestParams
      def get_journal_batch_by_request(params)
        query_params = [:install_portal_id]
        parsed, options = HubSpotSDK::Webhooks::WebhookGetJournalBatchByRequestParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: "webhooks-journal/journal/2026-03/batch/read",
          query: query.transform_keys(install_portal_id: "installPortalId"),
          body: parsed.except(*query_params),
          model: HubSpotSDK::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetJournalBatchFromOffsetParams} for more
      # details.
      #
      # Retrieve a batch of webhook journal entries starting from a specified offset.
      # This endpoint allows you to fetch a defined number of entries, which can be
      # useful for processing large datasets in manageable chunks.
      #
      # @overload get_journal_batch_from_offset(count, offset:, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] Path param: The number of journal entries to retrieve. This must be an integer w
      #
      # @param offset [String] Path param: The starting point for fetching the journal entries. This is a strin
      #
      # @param install_portal_id [Integer] Query param: The ID of the portal installation. This is an integer value.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetJournalBatchFromOffsetParams
      def get_journal_batch_from_offset(count, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookGetJournalBatchFromOffsetParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        offset =
          parsed.delete(:offset) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal/2026-03/batch/%1$s/next/%2$s", offset, count],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          model: HubSpotSDK::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Retrieve the status of a specific webhook journal entry using its unique status
      # ID. This endpoint provides detailed information about the status, including
      # whether it is pending, in progress, completed, failed, or expired. It is useful
      # for monitoring and managing the state of webhook journal entries.
      #
      # @overload get_journal_status(status_id, request_options: {})
      #
      # @param status_id [String] The unique identifier (UUID) of the status to retrieve.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::SnapshotStatusResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetJournalStatusParams
      def get_journal_status(status_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal/2026-03/status/%1$s", status_id],
          model: HubSpotSDK::SnapshotStatusResponse,
          options: params[:request_options]
        )
      end

      # Retrieve details of a specific webhook subscription using its unique identifier.
      # This endpoint is useful for obtaining information about a particular
      # subscription, such as its actions, object type, and associated properties.
      #
      # @overload get_journal_subscription(subscription_id, request_options: {})
      #
      # @param subscription_id [Integer] The unique identifier of the subscription to retrieve.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::WebhooksJournal::SubscriptionResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetJournalSubscriptionParams
      def get_journal_subscription(subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/subscriptions/2026-03/%1$s", subscription_id],
          model: HubSpotSDK::WebhooksJournal::SubscriptionResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLatestJournalBatchParams} for more
      # details.
      #
      # Retrieve the latest batch of webhook journal entries up to the specified count.
      # This endpoint is useful for fetching recent webhook data for analysis or
      # processing. The count parameter determines the maximum number of entries to
      # return.
      #
      # @overload get_latest_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] The maximum number of journal entries to retrieve. This is a required integer pa
      #
      # @param install_portal_id [Integer] The ID of the portal installation. This is an integer value used to specify the
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLatestJournalBatchParams
      def get_latest_journal_batch(count, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLatestJournalBatchParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal/2026-03/batch/latest/%1$s", count],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          model: HubSpotSDK::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLatestJournalEntryParams} for more
      # details.
      #
      # Retrieve the latest entries from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the most recent webhook events and their
      # statuses, allowing you to monitor and debug webhook activity effectively.
      #
      # @overload get_latest_journal_entry(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer] The unique identifier of the portal installation for which to retrieve the lates
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLatestJournalEntryParams
      def get_latest_journal_entry(params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLatestJournalEntryParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "webhooks-journal/journal/2026-03/latest",
          query: query.transform_keys(install_portal_id: "installPortalId"),
          headers: {"accept" => "*/*"},
          model: StringIO,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLatestLocalJournalBatchParams} for more
      # details.
      #
      # Retrieve the latest batch of webhook journal entries. This endpoint allows you
      # to specify the number of entries to fetch, providing a way to access the most
      # recent webhook events processed by your HubSpot account.
      #
      # @overload get_latest_local_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] The number of journal entries to retrieve. Must be an integer with a minimum val
      #
      # @param install_portal_id [Integer] The ID of the portal where the webhook journal is installed. This parameter is o
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLatestLocalJournalBatchParams
      def get_latest_local_journal_batch(count, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLatestLocalJournalBatchParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal-local/2026-03/batch/latest/%1$s", count],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          model: HubSpotSDK::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLatestLocalJournalEntryParams} for more
      # details.
      #
      # Retrieve the latest entries from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the most recent webhook events that have
      # been logged, allowing for real-time monitoring or debugging of webhook
      # activities.
      #
      # @overload get_latest_local_journal_entry(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer] The ID of the portal for which to retrieve the latest journal entries. This is a
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLatestLocalJournalEntryParams
      def get_latest_local_journal_entry(params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLatestLocalJournalEntryParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: "webhooks-journal/journal-local/2026-03/latest",
          query: query.transform_keys(install_portal_id: "installPortalId"),
          headers: {"accept" => "*/*"},
          model: StringIO,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalBatchByRequestParams} for
      # more details.
      #
      # Execute a batch read operation on the webhooks journal. This endpoint allows you
      # to retrieve a batch of webhook journal entries by providing the necessary input
      # data. It is useful for processing multiple records in a single request,
      # streamlining data retrieval tasks.
      #
      # @overload get_local_journal_batch_by_request(inputs:, install_portal_id: nil, request_options: {})
      #
      # @param inputs [Array<String>] Body param: Strings to input.
      #
      # @param install_portal_id [Integer] Query param: The ID of the portal where the webhooks are installed. This paramet
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalBatchByRequestParams
      def get_local_journal_batch_by_request(params)
        query_params = [:install_portal_id]
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLocalJournalBatchByRequestParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
        @client.request(
          method: :post,
          path: "webhooks-journal/journal-local/2026-03/batch/read",
          query: query.transform_keys(install_portal_id: "installPortalId"),
          body: parsed.except(*query_params),
          model: HubSpotSDK::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalBatchFromOffsetParams} for
      # more details.
      #
      # Retrieve a batch of webhook journal entries starting from a specified offset.
      # This endpoint is useful for paginating through large sets of webhook data. The
      # number of entries returned is determined by the 'count' parameter.
      #
      # @overload get_local_journal_batch_from_offset(count, offset:, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] Path param: The number of journal entries to retrieve in this batch. Must be an
      #
      # @param offset [String] Path param: The starting point for the batch retrieval, specified as a string.
      #
      # @param install_portal_id [Integer] Query param: The ID of the portal where the webhooks are installed. This is an o
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalBatchFromOffsetParams
      def get_local_journal_batch_from_offset(count, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLocalJournalBatchFromOffsetParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        offset =
          parsed.delete(:offset) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal-local/2026-03/batch/%1$s/next/%2$s", offset, count],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          model: HubSpotSDK::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Retrieve the status of a specific webhook journal entry using its unique status
      # ID. This endpoint is useful for monitoring the progress or outcome of webhook
      # journal entries, allowing you to check if an entry is pending, in progress,
      # completed, failed, or expired.
      #
      # @overload get_local_journal_status(status_id, request_options: {})
      #
      # @param status_id [String] The unique identifier of the status to retrieve. It should be in UUID format.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::SnapshotStatusResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalStatusParams
      def get_local_journal_status(status_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal-local/2026-03/status/%1$s", status_id],
          model: HubSpotSDK::SnapshotStatusResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetNextJournalEntriesParams} for more
      # details.
      #
      # Retrieve the next set of entries from the webhooks journal starting from a
      # specified offset. This endpoint is useful for paginating through journal entries
      # to process or analyze webhook events sequentially.
      #
      # @overload get_next_journal_entries(offset, install_portal_id: nil, request_options: {})
      #
      # @param offset [String] The offset string indicating the starting point for retrieving the next set of j
      #
      # @param install_portal_id [Integer] The ID of the portal where the webhooks are installed. This is an integer value.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetNextJournalEntriesParams
      def get_next_journal_entries(offset, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetNextJournalEntriesParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal/2026-03/offset/%1$s/next", offset],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          headers: {"accept" => "*/*"},
          model: StringIO,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetNextLocalJournalEntriesParams} for more
      # details.
      #
      # Retrieve the next set of webhook journal entries starting from a specified
      # offset. This endpoint is useful for paginating through large sets of webhook
      # data, allowing you to continue from where a previous request left off.
      #
      # @overload get_next_local_journal_entries(offset, install_portal_id: nil, request_options: {})
      #
      # @param offset [String] The starting point for retrieving the next set of webhook journal entries. This
      #
      # @param install_portal_id [Integer] The ID of the portal installation to filter the webhook journal entries. This is
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetNextLocalJournalEntriesParams
      def get_next_local_journal_entries(offset, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetNextLocalJournalEntriesParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal-local/2026-03/offset/%1$s/next", offset],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          headers: {"accept" => "*/*"},
          model: StringIO,
          options: options
        )
      end

      # Retrieve the webhook settings for the specified app, including the webhook’s
      # target URL, throttle configuration, and create/update date.
      #
      # @overload get_settings(app_id, request_options: {})
      #
      # @param app_id [Integer] The identifier for the app.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SettingsResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetSettingsParams
      def get_settings(app_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks/2026-03/%1$s/settings", app_id],
          model: HubSpotSDK::Webhooks::SettingsResponse,
          options: params[:request_options]
        )
      end

      # Retrieve a specific filter associated with a webhook journal subscription. This
      # endpoint allows you to access the details of the filter identified by the
      # filterId, which is useful for managing and understanding the conditions applied
      # to webhook events.
      #
      # @overload get_subscription_filter(filter_id, request_options: {})
      #
      # @param filter_id [Integer] The unique identifier of the filter to retrieve. It is an integer value.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::FilterResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetSubscriptionFilterParams
      def get_subscription_filter(filter_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/subscriptions/2026-03/filters/%1$s", filter_id],
          model: HubSpotSDK::FilterResponse,
          options: params[:request_options]
        )
      end

      # Retrieve event subscriptions for the specified app.
      #
      # @overload list_event_subscriptions(app_id, request_options: {})
      #
      # @param app_id [Integer] The identifier for the app.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SubscriptionListResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookListEventSubscriptionsParams
      def list_event_subscriptions(app_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks/2026-03/%1$s/subscriptions", app_id],
          model: HubSpotSDK::Webhooks::SubscriptionListResponse,
          options: params[:request_options]
        )
      end

      # Retrieve a list of webhook journal subscriptions for the specified version. This
      # endpoint allows you to view all active subscriptions without pagination. It is
      # useful for monitoring and managing webhook subscriptions in your HubSpot
      # account.
      #
      # @overload list_journal_subscriptions(request_options: {})
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::WebhooksJournal::CollectionResponseSubscriptionResponseNoPaging]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookListJournalSubscriptionsParams
      def list_journal_subscriptions(params = {})
        @client.request(
          method: :get,
          path: "webhooks-journal/subscriptions/2026-03",
          model: HubSpotSDK::WebhooksJournal::CollectionResponseSubscriptionResponseNoPaging,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookListSubscriptionFiltersParams} for more
      # details.
      #
      # Retrieve the filters associated with a specific webhook subscription. This
      # endpoint allows you to view the filters applied to a subscription, which can
      # help in managing and understanding the conditions set for webhook events.
      #
      # @overload list_subscription_filters(subscription_id, request_options: {})
      #
      # @param subscription_id [Integer] The unique identifier of the subscription for which to retrieve filters. This is
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<HubSpotSDK::Models::FilterResponse>]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookListSubscriptionFiltersParams
      def list_subscription_filters(subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/subscriptions/2026-03/filters/subscription/%1$s", subscription_id],
          model: HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::FilterResponse],
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookUpdateEventSubscriptionParams} for more
      # details.
      #
      # Update an existing event subscription by ID.
      #
      # @overload update_event_subscription(subscription_id, app_id:, active: nil, request_options: {})
      #
      # @param subscription_id [Integer] Path param: The identifier for the subscription.
      #
      # @param app_id [Integer] Path param: The identifier for the app.
      #
      # @param active [Boolean] Body param: A boolean indicating whether the subscription is active. If true, th
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SubscriptionResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookUpdateEventSubscriptionParams
      def update_event_subscription(subscription_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookUpdateEventSubscriptionParams.dump_request(params)
        app_id =
          parsed.delete(:app_id) do
            raise ArgumentError.new("missing required path argument #{_1}")
          end
        @client.request(
          method: :patch,
          path: ["webhooks/2026-03/%1$s/subscriptions/%2$s", app_id, subscription_id],
          body: parsed,
          model: HubSpotSDK::Webhooks::SubscriptionResponse,
          options: options
        )
      end

      # Update webhook settings for the specified app.
      #
      # @overload update_settings(app_id, target_url:, throttling:, request_options: {})
      #
      # @param app_id [Integer] The identifier for the app.
      #
      # @param target_url [String] The URL to which webhook events will be sent. It is a string.
      #
      # @param throttling [HubSpotSDK::Models::Webhooks::ThrottlingSettings]
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SettingsResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookUpdateSettingsParams
      def update_settings(app_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookUpdateSettingsParams.dump_request(params)
        @client.request(
          method: :put,
          path: ["webhooks/2026-03/%1$s/settings", app_id],
          body: parsed,
          model: HubSpotSDK::Webhooks::SettingsResponse,
          options: options
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
