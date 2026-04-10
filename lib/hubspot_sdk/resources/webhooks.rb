# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Webhooks
      # @overload create_crm_snapshot(snapshot_requests:, request_options: {})
      #
      # @param snapshot_requests [Array<HubSpotSDK::Models::Webhooks::CrmObjectSnapshotRequest>]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::CrmObjectSnapshotBatchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateCrmSnapshotParams
      def create_crm_snapshot(params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateCrmSnapshotParams.dump_request(params)
        @client.request(
          method: :post,
          path: "webhooks-journal/snapshots/2026-03/crm",
          body: parsed,
          model: HubSpotSDK::Webhooks::CrmObjectSnapshotBatchResponse,
          options: options
        )
      end

      # @overload create_journal_subscription(subscription_upsert_request:, request_options: {})
      #
      # @param subscription_upsert_request [HubSpotSDK::Models::Webhooks::ObjectSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::AssociationSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::AppLifecycleEventSubscriptionUpsertRequest, HubSpotSDK::Models::Webhooks::ListMembershipSubscriptionUpsertRequest]
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
      # {HubSpotSDK::Models::Webhooks::WebhookCreateSubscriptionParams} for more
      # details.
      #
      # Create new event subscription for the specified app.
      #
      # @overload create_subscription(app_id, active:, event_type:, event_type_name: nil, object_type_id: nil, property_name: nil, request_options: {})
      #
      # @param app_id [Integer]
      #
      # @param active [Boolean] Determines if the subscription is active or paused. Defaults to false.
      #
      # @param event_type [Symbol, HubSpotSDK::Models::Webhooks::SubscriptionCreateRequest::EventType] Type of event to listen for. Can be one of `create`, `delete`, `deletedForPrivac
      #
      # @param event_type_name [String] The name of the event to listen for. This is used with custom objects to specify
      #
      # @param object_type_id [String] The ID of the object type for the subscription. This can be a standard CRM objec
      #
      # @param property_name [String] The internal name of the property to monitor for changes. Only applies when `eve
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SubscriptionResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateSubscriptionParams
      def create_subscription(app_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateSubscriptionParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["webhooks/2026-03/%1$s/subscriptions", app_id],
          body: parsed,
          model: HubSpotSDK::Webhooks::SubscriptionResponse,
          options: options
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookCreateSubscriptionFilterParams} for more
      # details.
      #
      # @overload create_subscription_filter(filter:, subscription_id:, request_options: {})
      #
      # @param filter [HubSpotSDK::Models::Webhooks::Filter] Defines a single condition for searching CRM objects, specifying the property to
      #
      # @param subscription_id [Integer]
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

      # Batch create event subscriptions for the specified app.
      #
      # @overload create_subscriptions_batch(app_id, inputs:, request_options: {})
      #
      # @param app_id [Integer]
      # @param inputs [Array<HubSpotSDK::Models::Webhooks::SubscriptionBatchUpdateRequest>]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookCreateSubscriptionsBatchParams
      def create_subscriptions_batch(app_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookCreateSubscriptionsBatchParams.dump_request(params)
        @client.request(
          method: :post,
          path: ["webhooks/2026-03/%1$s/subscriptions/batch/update", app_id],
          body: parsed,
          model: HubSpotSDK::Webhooks::BatchResponseSubscriptionResponse,
          options: options
        )
      end

      # @overload delete_journal_subscription(subscription_id, request_options: {})
      #
      # @param subscription_id [Integer]
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

      # @overload delete_portal_subscriptions(portal_id, request_options: {})
      #
      # @param portal_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookDeletePortalSubscriptionsParams
      def delete_portal_subscriptions(portal_id, params = {})
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
      # @param app_id [Integer]
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

      # Delete an existing event subscription by ID.
      #
      # @overload delete_subscription(subscription_id, app_id:, request_options: {})
      #
      # @param subscription_id [Integer]
      # @param app_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [nil]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookDeleteSubscriptionParams
      def delete_subscription(subscription_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookDeleteSubscriptionParams.dump_request(params)
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

      # @overload delete_subscription_filter(filter_id, request_options: {})
      #
      # @param filter_id [Integer]
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

      # @overload get_earliest_journal(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetEarliestJournalParams
      def get_earliest_journal(params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetEarliestJournalParams.dump_request(params)
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

      # @overload get_earliest_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer]
      # @param install_portal_id [Integer]
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

      # @overload get_earliest_local_journal(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetEarliestLocalJournalParams
      def get_earliest_local_journal(params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetEarliestLocalJournalParams.dump_request(params)
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

      # @overload get_earliest_local_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer]
      # @param install_portal_id [Integer]
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

      # @overload get_journal_batch(inputs:, install_portal_id: nil, request_options: {})
      #
      # @param inputs [Array<String>] Body param: Strings to input.
      #
      # @param install_portal_id [Integer] Query param
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetJournalBatchParams
      def get_journal_batch(params)
        query_params = [:install_portal_id]
        parsed, options = HubSpotSDK::Webhooks::WebhookGetJournalBatchParams.dump_request(params)
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

      # @overload get_journal_batch_after_offset(count, offset:, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] Path param
      #
      # @param offset [String] Path param
      #
      # @param install_portal_id [Integer] Query param
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetJournalBatchAfterOffsetParams
      def get_journal_batch_after_offset(count, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookGetJournalBatchAfterOffsetParams.dump_request(params)
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

      # @overload get_journal_status(status_id, request_options: {})
      #
      # @param status_id [String]
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

      # @overload get_latest_journal(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLatestJournalParams
      def get_latest_journal(params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLatestJournalParams.dump_request(params)
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

      # @overload get_latest_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer]
      # @param install_portal_id [Integer]
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

      # @overload get_latest_local_journal(install_portal_id: nil, request_options: {})
      #
      # @param install_portal_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLatestLocalJournalParams
      def get_latest_local_journal(params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLatestLocalJournalParams.dump_request(params)
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

      # @overload get_latest_local_journal_batch(count, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer]
      # @param install_portal_id [Integer]
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

      # @overload get_local_journal_batch(inputs:, install_portal_id: nil, request_options: {})
      #
      # @param inputs [Array<String>] Body param: Strings to input.
      #
      # @param install_portal_id [Integer] Query param
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalBatchParams
      def get_local_journal_batch(params)
        query_params = [:install_portal_id]
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLocalJournalBatchParams.dump_request(params)
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

      # @overload get_local_journal_batch_after_offset(count, offset:, install_portal_id: nil, request_options: {})
      #
      # @param count [Integer] Path param
      #
      # @param offset [String] Path param
      #
      # @param install_portal_id [Integer] Query param
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetLocalJournalBatchAfterOffsetParams
      def get_local_journal_batch_after_offset(count, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookGetLocalJournalBatchAfterOffsetParams.dump_request(params)
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

      # @overload get_local_journal_status(status_id, request_options: {})
      #
      # @param status_id [String]
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

      # @overload get_next_journal_after_offset(offset, install_portal_id: nil, request_options: {})
      #
      # @param offset [String]
      # @param install_portal_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetNextJournalAfterOffsetParams
      def get_next_journal_after_offset(offset, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetNextJournalAfterOffsetParams.dump_request(params)
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

      # @overload get_next_local_journal_after_offset(offset, install_portal_id: nil, request_options: {})
      #
      # @param offset [String]
      # @param install_portal_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [StringIO]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetNextLocalJournalAfterOffsetParams
      def get_next_local_journal_after_offset(offset, params = {})
        parsed, options = HubSpotSDK::Webhooks::WebhookGetNextLocalJournalAfterOffsetParams.dump_request(params)
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
      # @param app_id [Integer]
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

      # Retrieve a specific event subscription by ID.
      #
      # @overload get_subscription(subscription_id, app_id:, request_options: {})
      #
      # @param subscription_id [Integer]
      # @param app_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SubscriptionResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetSubscriptionParams
      def get_subscription(subscription_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookGetSubscriptionParams.dump_request(params)
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

      # @overload get_subscription_filter(filter_id, request_options: {})
      #
      # @param filter_id [Integer]
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

      # @overload get_subscription_filters(subscription_id, request_options: {})
      #
      # @param subscription_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [Array<HubSpotSDK::Models::Webhooks::FilterResponse>]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookGetSubscriptionFiltersParams
      def get_subscription_filters(subscription_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks-journal/subscriptions/2026-03/filters/subscription/%1$s", subscription_id],
          model: HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::FilterResponse],
          options: params[:request_options]
        )
      end

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

      # Retrieve event subscriptions for the specified app.
      #
      # @overload list_subscriptions(app_id, request_options: {})
      #
      # @param app_id [Integer]
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SubscriptionListResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookListSubscriptionsParams
      def list_subscriptions(app_id, params = {})
        @client.request(
          method: :get,
          path: ["webhooks/2026-03/%1$s/subscriptions", app_id],
          model: HubSpotSDK::Webhooks::SubscriptionListResponse,
          options: params[:request_options]
        )
      end

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookUpdateSettingsParams} for more details.
      #
      # Update webhook settings for the specified app.
      #
      # @overload update_settings(app_id, target_url:, throttling:, request_options: {})
      #
      # @param app_id [Integer]
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

      # Some parameter documentations has been truncated, see
      # {HubSpotSDK::Models::Webhooks::WebhookUpdateSubscriptionParams} for more
      # details.
      #
      # Update an existing event subscription by ID.
      #
      # @overload update_subscription(subscription_id, app_id:, active: nil, request_options: {})
      #
      # @param subscription_id [Integer] Path param
      #
      # @param app_id [Integer] Path param
      #
      # @param active [Boolean] Body param: Whether to activate or pause the webhook subscription. If true, the
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Webhooks::SubscriptionResponse]
      #
      # @see HubSpotSDK::Models::Webhooks::WebhookUpdateSubscriptionParams
      def update_subscription(subscription_id, params)
        parsed, options = HubSpotSDK::Webhooks::WebhookUpdateSubscriptionParams.dump_request(params)
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

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
      end
    end
  end
end
