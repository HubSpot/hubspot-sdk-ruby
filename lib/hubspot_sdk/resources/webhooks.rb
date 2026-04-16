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
      # Create a batch of CRM object snapshots for a specified portal. This endpoint
      # allows you to capture the current state of CRM objects by submitting a batch
      # request with the necessary object details. It is useful for tracking changes or
      # maintaining historical records of CRM data.
      #
      # @overload create_crm_snapshots(snapshot_requests:, request_options: {})
      #
      # @param snapshot_requests [Array<HubSpotSDK::Models::Webhooks::CrmObjectSnapshotRequest>] An array of CrmObjectSnapshotRequest objects, each representing a request to cap
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::CrmObjectSnapshotBatchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateCrmSnapshotsParams
      def create_crm_snapshots(params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateCrmSnapshotsParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks-journal/snapshots/2026-03/crm",
          body: parsed,
          model: HubSpotSDK::Webhooks::CrmObjectSnapshotBatchResponse,
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
      # @param active [Boolean] A boolean indicating whether the subscription is active. This field is required.
      #
      # @param event_type [Symbol, HubSpotSDK::Models::Webhooks::SubscriptionCreateRequest::EventType] A string representing the type of event to subscribe to. Valid values include va
      #
      # @param event_type_name [String] A string that provides a human-readable name for the event type. This is optiona
      #
      # @param object_type_id [String] A string representing the identifier of the object type for which the subscripti
      #
      # @param property_name [String] A string indicating the name of the property that triggers the event. This is op
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

      # Create a new subscription in the webhooks journal for the specified version.
      # This endpoint allows you to define the subscription details, including actions
      # and object types, to manage webhook events effectively. It requires a valid
      # request body with the subscription details.
      #
      # @overload create_journal_subscription(subscription_upsert_request:, request_options: {})
      #
      # @param subscription_upsert_request [HubSpotSDK::Models::Webhooks::ObjectSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::AssociationSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::AppLifecycleEventSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::ListMembershipSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::GdprPrivacyDeletionSubscriptionUpsertRequest]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SubscriptionResponse1]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateJournalSubscriptionParams
      def create_journal_subscription(params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateJournalSubscriptionParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks-journal/subscriptions/2026-03",
          body: parsed[:subscription_upsert_request],
          model: HubSpotSDK::Webhooks::SubscriptionResponse1,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookCreateSubscriptionFilterParams} for more
      # details.
      #
      # Create a new filter for a webhook subscription in the HubSpot account. This
      # endpoint allows you to define conditions that determine when a webhook event
      # should be triggered for a specific subscription. The request body must include
      # the subscription ID and the filter details.
      #
      # @overload create_subscription_filter(filter:, subscription_id:, request_options: {})
      #
      # @param filter [HubSpotSDK::Models::Webhooks::Filter] Defines a single condition for searching CRM objects, specifying the property to
      #
      # @param subscription_id [Integer] The unique identifier of the subscription to which the filter will be applied. I
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::FilterCreateResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateSubscriptionFilterParams
      def create_subscription_filter(params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateSubscriptionFilterParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks-journal/subscriptions/2026-03/filters",
          body: parsed,
          model: HubSpotSDK::Webhooks::FilterCreateResponse,
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

      # Delete a specific webhook journal subscription using its unique identifier. This
      # operation is useful for managing and cleaning up subscriptions that are no
      # longer needed.
      #
      # @overload delete_journal_subscription(subscription_id, request_options: {})
      #
      # @param subscription_id [Integer] The unique identifier of the subscription to delete.
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
      # removes the subscription associated with the given portalId, effectively
      # stopping any webhook events from being sent to the portal.
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

      # Remove a specific filter from your webhook journal subscriptions. This operation
      # is useful when you need to clean up or modify the filters applied to your
      # webhook subscriptions. The filter identified by the filterId will be permanently
      # deleted.
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
      # Retrieve the earliest batch of webhook journal entries up to the specified
      # count. This endpoint is useful for fetching historical webhook data in batches,
      # allowing you to process or analyze them as needed.
      #
      # @overload get_earliest_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] The number of journal entries to retrieve. This must be an integer with a minimu
      #
      # @param install_portal_id [Integer] The ID of the portal installation for which to fetch the journal entries. This i
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetEarliestJournalBatchParams
      def get_earliest_journal_batch(count, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetEarliestJournalBatchParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal/2026-03/batch/earliest/%1$s", count],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          model: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetEarliestJournalEntryParams} for more
      # details.
      #
      # Retrieve the earliest entry from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the initial entries in the journal, which
      # can be helpful for debugging or auditing purposes.
      #
      # @overload get_earliest_journal_entry(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer] The ID of the portal installation to filter the journal entries. This is an inte
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
      # Retrieve the earliest batch of webhook journal entries up to a specified count.
      # This endpoint is useful for accessing the oldest records available in the
      # webhook journal, allowing you to process or analyze historical webhook data.
      #
      # @overload get_earliest_local_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] The number of webhook journal entries to retrieve. It must be an integer with a
      #
      # @param install_portal_id [Integer] The ID of the portal installation to filter the webhook journal entries. It is a
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetEarliestLocalJournalBatchParams
      def get_earliest_local_journal_batch(count, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetEarliestLocalJournalBatchParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal-local/2026-03/batch/earliest/%1$s", count],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          model: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetEarliestLocalJournalEntryParams} for
      # more details.
      #
      # Retrieve the earliest entry from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the oldest available data in the journal,
      # which can be used for historical analysis or troubleshooting.
      #
      # @overload get_earliest_local_journal_entry(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer] The ID of the portal for which to retrieve the earliest journal entry. This para
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
      # Read a batch of webhook journal entries for the specified portal. This endpoint
      # allows you to retrieve detailed information about webhook events processed by
      # your HubSpot account. It is useful for auditing and tracking webhook activity.
      #
      # @overload get_journal_batch_by_request(inputs:, install_portal_id: nil, request_options: {})
      #
      # @param inputs [Array<String>] Body param: Strings to input.
      #
      # @param install_portal_id [Integer] Query param: The ID of the portal from which to retrieve webhook journal entries
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
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
          model: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetJournalBatchFromOffsetParams} for more
      # details.
      #
      # Retrieve a batch of webhook journal entries starting from a specified offset.
      # This endpoint allows you to specify the number of entries to retrieve, helping
      # you manage and paginate through large sets of webhook data efficiently.
      #
      # @overload get_journal_batch_from_offset(count, offset:, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] Path param: The number of webhook journal entries to retrieve in the batch. This
      #
      # @param offset [String] Path param: The starting point for retrieving the batch of webhook journal entri
      #
      # @param install_portal_id [Integer] Query param: The ID of the portal installation to filter the webhook journal ent
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
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
          model: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetJournalStatusParams} for more details.
      #
      # Retrieve the status of a specific webhook journal entry using its unique status
      # ID. This endpoint is useful for monitoring the progress or outcome of a webhook
      # operation, providing insights into whether it is pending, in progress,
      # completed, failed, or expired.
      #
      # @overload get_journal_status(status_id, request_options: {})
      #
      # @param status_id [String] The unique identifier (UUID) of the webhook journal entry whose status is to be
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SnapshotStatusResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetJournalStatusParams
      def get_journal_status(status_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal/2026-03/status/%1$s", status_id],
          model: HubSpotSDK::Webhooks::SnapshotStatusResponse,
          options: params[:request_options]
        )
      end

      # Retrieve details of a specific webhook journal subscription using its unique
      # identifier. This endpoint is useful for obtaining information about a particular
      # subscription, such as its actions, object types, and associated properties.
      #
      # @overload get_journal_subscription(subscription_id, request_options: {})
      #
      # @param subscription_id [Integer] The unique identifier of the subscription to retrieve. It is an integer value.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SubscriptionResponse1]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetJournalSubscriptionParams
      def get_journal_subscription(subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/subscriptions/2026-03/%1$s", subscription_id],
          model: HubSpotSDK::Webhooks::SubscriptionResponse1,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLatestJournalBatchParams} for more
      # details.
      #
      # Retrieve the latest batch of webhook journal entries up to a specified count.
      # This endpoint is useful for fetching the most recent webhook events processed by
      # your HubSpot account. The response includes details about each event, and you
      # can specify the number of entries to retrieve.
      #
      # @overload get_latest_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] The number of journal entries to retrieve. Must be an integer with a minimum val
      #
      # @param install_portal_id [Integer] The ID of the portal installation. This parameter is optional and can be used to
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLatestJournalBatchParams
      def get_latest_journal_batch(count, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLatestJournalBatchParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal/2026-03/batch/latest/%1$s", count],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          model: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLatestJournalEntryParams} for more
      # details.
      #
      # Retrieve the latest entry from the webhooks journal for the specified portal.
      # This endpoint is useful for accessing the most recent webhook data available in
      # the journal.
      #
      # @overload get_latest_journal_entry(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer] The ID of the portal for which to retrieve the latest journal entry. It is an in
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
      # Retrieve the latest batch of webhook journal entries up to a specified count.
      # This endpoint is useful for fetching the most recent webhook events processed by
      # the system. It requires authentication and supports various security schemes.
      #
      # @overload get_latest_local_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] The number of webhook journal entries to retrieve. It must be an integer with a
      #
      # @param install_portal_id [Integer] The ID of the portal installation to filter the webhook journal entries. It is a
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLatestLocalJournalBatchParams
      def get_latest_local_journal_batch(count, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLatestLocalJournalBatchParams.dump_request(params)
        query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal-local/2026-03/batch/latest/%1$s", count],
          query: query.transform_keys(install_portal_id: "installPortalId"),
          model: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLatestLocalJournalEntryParams} for more
      # details.
      #
      # Retrieve the latest entries from the webhooks journal. This endpoint is useful
      # for accessing the most recent webhook data for analysis or troubleshooting. It
      # supports filtering by the installPortalId to narrow down results to a specific
      # portal.
      #
      # @overload get_latest_local_journal_entry(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer] An integer representing the ID of the portal to filter the webhook journal entri
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
      # Perform a batch read operation on the webhooks journal. This endpoint allows you
      # to retrieve a batch of journal entries by providing the necessary input data. It
      # is useful for processing large volumes of webhook data efficiently.
      #
      # @overload get_local_journal_batch_by_request(inputs:, install_portal_id: nil, request_options: {})
      #
      # @param inputs [Array<String>] Body param: Strings to input.
      #
      # @param install_portal_id [Integer] Query param: The ID of the portal where the webhook is installed. This parameter
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
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
          model: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalBatchFromOffsetParams} for
      # more details.
      #
      # Retrieve a batch of webhook journal entries starting from a specified offset.
      # This endpoint is useful for fetching sequential batches of data, allowing you to
      # paginate through large sets of webhook journal entries efficiently.
      #
      # @overload get_local_journal_batch_from_offset(count, offset:, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] Path param: The number of entries to retrieve in the batch. This must be an inte
      #
      # @param offset [String] Path param: The starting point for the batch retrieval. This is a string value r
      #
      # @param install_portal_id [Integer] Query param: The ID of the portal where the webhooks are installed. This is an i
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
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
          model: HubSpotSDK::Webhooks::BatchResponseJournalFetchResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalStatusParams} for more
      # details.
      #
      # Retrieve the status of a specific webhook journal entry using its unique status
      # ID. This endpoint is useful for checking the progress or result of a webhook
      # operation, such as whether it is pending, in progress, completed, failed, or
      # expired.
      #
      # @overload get_local_journal_status(status_id, request_options: {})
      #
      # @param status_id [String] The unique identifier (UUID) of the webhook journal entry whose status is to be
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SnapshotStatusResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalStatusParams
      def get_local_journal_status(status_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/journal-local/2026-03/status/%1$s", status_id],
          model: HubSpotSDK::Webhooks::SnapshotStatusResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookGetNextJournalEntriesParams} for more
      # details.
      #
      # Retrieve the next set of webhook journal entries starting from a specified
      # offset. This endpoint is useful for paginating through webhook journal entries
      # in a HubSpot account. It allows you to continue fetching entries from where the
      # last request left off, using the offset parameter.
      #
      # @overload get_next_journal_entries(offset, install_portal_id: nil, request_options: {})
      #
      # @param offset [String] The offset from which to start retrieving the next set of journal entries. This
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
      # Retrieve the next set of journal entries starting from a specified offset. This
      # endpoint is useful for paginating through webhook journal entries in a
      # sequential manner. It requires specifying the offset from which the next entries
      # should be fetched.
      #
      # @overload get_next_local_journal_entries(offset, install_portal_id: nil, request_options: {})
      #
      # @param offset [String] The offset from which the next set of journal entries should be retrieved. This
      #
      # @param install_portal_id [Integer] The ID of the portal installation to filter the journal entries by. This is an o
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
      # endpoint allows you to access detailed information about the filter identified
      # by the filterId path parameter. It is useful for managing and reviewing filter
      # configurations within your webhook subscriptions.
      #
      # @overload get_subscription_filter(filter_id, request_options: {})
      #
      # @param filter_id [Integer] The unique identifier of the filter to retrieve.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::FilterResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetSubscriptionFilterParams
      def get_subscription_filter(filter_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/subscriptions/2026-03/filters/%1$s", filter_id],
          model: HubSpotSDK::Webhooks::FilterResponse,
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
      # useful for managing and auditing webhook subscriptions in your HubSpot account.
      #
      # @overload list_journal_subscriptions(request_options: {})
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::CollectionResponseSubscriptionResponseNoPaging]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookListJournalSubscriptionsParams
      def list_journal_subscriptions(params = {})
        @client.request(
          method: :get,
          path: "webhooks-journal/subscriptions/2026-03",
          model: HubSpotSDK::Webhooks::CollectionResponseSubscriptionResponseNoPaging,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookListSubscriptionFiltersParams} for more
      # details.
      #
      # Retrieve the filters associated with a specific webhook subscription. This
      # endpoint is useful for obtaining detailed information about the filters applied
      # to a subscription, which can help in managing and understanding the data flow
      # through your webhook integrations.
      #
      # @overload list_subscription_filters(subscription_id, request_options: {})
      #
      # @param subscription_id [Integer] The unique identifier of the subscription for which filters are being retrieved.
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<HubSpotSDK::Models::Webhooks::FilterResponse>]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookListSubscriptionFiltersParams
      def list_subscription_filters(subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/subscriptions/2026-03/filters/subscription/%1$s", subscription_id],
          model: HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::FilterResponse],
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
      # @param active [Boolean] Body param: Whether to activate or pause the webhook subscription. If true, the
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

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookUpdateSettingsParams} for more details.
      #
      # Update webhook settings for the specified app.
      #
      # @overload update_settings(app_id, target_url:, throttling:, request_options: {})
      #
      # @param app_id [Integer] The identifier for the app.
      #
      # @param target_url [String] A publicly available URL for Hubspot to call where event payloads will be delive
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
