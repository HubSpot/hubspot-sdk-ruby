# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Webhooks
      class Webhooks
        # @return [HubspotSDK::Resources::Webhooks::Webhooks::Batch]
        attr_reader :batch

        # @overload create_crm_snapshot(snapshot_requests:, request_options: {})
        #
        # @param snapshot_requests [Array<HubspotSDK::Models::Webhooks::CrmObjectSnapshotRequest>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::CrmObjectSnapshotBatchResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookCreateCrmSnapshotParams
        def create_crm_snapshot(params)
          parsed, options = HubspotSDK::Webhooks::WebhookCreateCrmSnapshotParams.dump_request(params)
          @client.request(
            method: :post,
            path: "webhooks-journal/snapshots/2026-03/crm",
            body: parsed,
            model: HubspotSDK::Webhooks::CrmObjectSnapshotBatchResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Webhooks::WebhookCreateFilterParams} for more details.
        #
        # @overload create_filter(filter:, subscription_id:, request_options: {})
        #
        # @param filter [HubspotSDK::Models::Webhooks::Filter] Defines a single condition for searching CRM objects, specifying the property to
        #
        # @param subscription_id [Integer]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::FilterCreateResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookCreateFilterParams
        def create_filter(params)
          parsed, options = HubspotSDK::Webhooks::WebhookCreateFilterParams.dump_request(params)
          @client.request(
            method: :post,
            path: "webhooks-journal/subscriptions/2026-03/filters",
            body: parsed,
            model: HubspotSDK::Webhooks::FilterCreateResponse,
            options: options
          )
        end

        # @overload create_journal_subscription(subscription_upsert_request:, request_options: {})
        #
        # @param subscription_upsert_request [HubspotSDK::Models::Webhooks::ObjectSubscriptionUpsertRequest, HubspotSDK::Models::Webhooks::AssociationSubscriptionUpsertRequest, HubspotSDK::Models::Webhooks::AppLifecycleEventSubscriptionUpsertRequest, HubspotSDK::Models::Webhooks::ListMembershipSubscriptionUpsertRequest]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SubscriptionResponse1]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookCreateJournalSubscriptionParams
        def create_journal_subscription(params)
          parsed, options = HubspotSDK::Webhooks::WebhookCreateJournalSubscriptionParams.dump_request(params)
          @client.request(
            method: :post,
            path: "webhooks-journal/subscriptions/2026-03",
            body: parsed[:subscription_upsert_request],
            model: HubspotSDK::Webhooks::SubscriptionResponse1,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Webhooks::WebhookCreateSubscriptionParams} for more
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
        # @param event_type [Symbol, HubspotSDK::Models::Webhooks::SubscriptionCreateRequest::EventType] Type of event to listen for. Can be one of `create`, `delete`, `deletedForPrivac
        #
        # @param event_type_name [String] The name of the event to listen for. This is used with custom objects to specify
        #
        # @param object_type_id [String] The ID of the object type for the subscription. This can be a standard CRM objec
        #
        # @param property_name [String] The internal name of the property to monitor for changes. Only applies when `eve
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SubscriptionResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookCreateSubscriptionParams
        def create_subscription(app_id, params)
          parsed, options = HubspotSDK::Webhooks::WebhookCreateSubscriptionParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["webhooks/2026-03/%1$s/subscriptions", app_id],
            body: parsed,
            model: HubspotSDK::Webhooks::SubscriptionResponse,
            options: options
          )
        end

        # @overload delete_filter(filter_id, request_options: {})
        #
        # @param filter_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookDeleteFilterParams
        def delete_filter(filter_id, params = {})
          @client.request(
            method: :delete,
            path: ["webhooks-journal/subscriptions/2026-03/filters/%1$s", filter_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @overload delete_journal_subscription(subscription_id, request_options: {})
        #
        # @param subscription_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookDeleteJournalSubscriptionParams
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookDeletePortalSubscriptionsParams
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookDeleteSettingsParams
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookDeleteSubscriptionParams
        def delete_subscription(subscription_id, params)
          parsed, options = HubspotSDK::Webhooks::WebhookDeleteSubscriptionParams.dump_request(params)
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

        # @overload get_filter(filter_id, request_options: {})
        #
        # @param filter_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::FilterResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetFilterParams
        def get_filter(filter_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks-journal/subscriptions/2026-03/filters/%1$s", filter_id],
            model: HubspotSDK::Webhooks::FilterResponse,
            options: params[:request_options]
          )
        end

        # @overload get_filters_by_subscription(subscription_id, request_options: {})
        #
        # @param subscription_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [Array<HubspotSDK::Models::Webhooks::FilterResponse>]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetFiltersBySubscriptionParams
        def get_filters_by_subscription(subscription_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks-journal/subscriptions/2026-03/filters/subscription/%1$s", subscription_id],
            model: HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::FilterResponse],
            options: params[:request_options]
          )
        end

        # @overload get_journal_earliest(install_portal_id: nil, request_options: {})
        #
        # @param install_portal_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetJournalEarliestParams
        def get_journal_earliest(params = {})
          parsed, options = HubspotSDK::Webhooks::WebhookGetJournalEarliestParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "webhooks-journal/journal/2026-03/earliest",
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # @overload get_journal_latest(install_portal_id: nil, request_options: {})
        #
        # @param install_portal_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetJournalLatestParams
        def get_journal_latest(params = {})
          parsed, options = HubspotSDK::Webhooks::WebhookGetJournalLatestParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "webhooks-journal/journal/2026-03/latest",
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # @overload get_journal_next_by_offset(offset, install_portal_id: nil, request_options: {})
        #
        # @param offset [String]
        # @param install_portal_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetJournalNextByOffsetParams
        def get_journal_next_by_offset(offset, params = {})
          parsed, options = HubspotSDK::Webhooks::WebhookGetJournalNextByOffsetParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["webhooks-journal/journal/2026-03/offset/%1$s/next", offset],
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # @overload get_journal_status(status_id, request_options: {})
        #
        # @param status_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SnapshotStatusResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetJournalStatusParams
        def get_journal_status(status_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks-journal/journal/2026-03/status/%1$s", status_id],
            model: HubspotSDK::Webhooks::SnapshotStatusResponse,
            options: params[:request_options]
          )
        end

        # @overload get_local_earliest(install_portal_id: nil, request_options: {})
        #
        # @param install_portal_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetLocalEarliestParams
        def get_local_earliest(params = {})
          parsed, options = HubspotSDK::Webhooks::WebhookGetLocalEarliestParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "webhooks-journal/journal-local/2026-03/earliest",
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # @overload get_local_latest(install_portal_id: nil, request_options: {})
        #
        # @param install_portal_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetLocalLatestParams
        def get_local_latest(params = {})
          parsed, options = HubspotSDK::Webhooks::WebhookGetLocalLatestParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "webhooks-journal/journal-local/2026-03/latest",
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # @overload get_local_next_by_offset(offset, install_portal_id: nil, request_options: {})
        #
        # @param offset [String]
        # @param install_portal_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetLocalNextByOffsetParams
        def get_local_next_by_offset(offset, params = {})
          parsed, options = HubspotSDK::Webhooks::WebhookGetLocalNextByOffsetParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["webhooks-journal/journal-local/2026-03/offset/%1$s/next", offset],
            query: query.transform_keys(install_portal_id: "installPortalId"),
            headers: {"accept" => "*/*"},
            model: StringIO,
            options: options
          )
        end

        # @overload get_local_status(status_id, request_options: {})
        #
        # @param status_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SnapshotStatusResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetLocalStatusParams
        def get_local_status(status_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks-journal/journal-local/2026-03/status/%1$s", status_id],
            model: HubspotSDK::Webhooks::SnapshotStatusResponse,
            options: params[:request_options]
          )
        end

        # Retrieve the webhook settings for the specified app, including the webhook’s
        # target URL, throttle configuration, and create/update date.
        #
        # @overload get_settings(app_id, request_options: {})
        #
        # @param app_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SettingsResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetSettingsParams
        def get_settings(app_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks/2026-03/%1$s/settings", app_id],
            model: HubspotSDK::Webhooks::SettingsResponse,
            options: params[:request_options]
          )
        end

        # Retrieve a specific event subscription by ID.
        #
        # @overload get_subscription(subscription_id, app_id:, request_options: {})
        #
        # @param subscription_id [Integer]
        # @param app_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SubscriptionResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookGetSubscriptionParams
        def get_subscription(subscription_id, params)
          parsed, options = HubspotSDK::Webhooks::WebhookGetSubscriptionParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["webhooks/2026-03/%1$s/subscriptions/%2$s", app_id, subscription_id],
            model: HubspotSDK::Webhooks::SubscriptionResponse,
            options: options
          )
        end

        # @overload list_journal_subscriptions(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::CollectionResponseSubscriptionResponseNoPaging]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookListJournalSubscriptionsParams
        def list_journal_subscriptions(params = {})
          @client.request(
            method: :get,
            path: "webhooks-journal/subscriptions/2026-03",
            model: HubspotSDK::Webhooks::CollectionResponseSubscriptionResponseNoPaging,
            options: params[:request_options]
          )
        end

        # Retrieve event subscriptions for the specified app.
        #
        # @overload list_subscriptions(app_id, request_options: {})
        #
        # @param app_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SubscriptionListResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookListSubscriptionsParams
        def list_subscriptions(app_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks/2026-03/%1$s/subscriptions", app_id],
            model: HubspotSDK::Webhooks::SubscriptionListResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Webhooks::WebhookUpdateSettingsParams} for more details.
        #
        # Update webhook settings for the specified app.
        #
        # @overload update_settings(app_id, target_url:, throttling:, request_options: {})
        #
        # @param app_id [Integer]
        #
        # @param target_url [String] A publicly available URL for Hubspot to call where event payloads will be delive
        #
        # @param throttling [HubspotSDK::Models::Webhooks::ThrottlingSettings]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SettingsResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookUpdateSettingsParams
        def update_settings(app_id, params)
          parsed, options = HubspotSDK::Webhooks::WebhookUpdateSettingsParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["webhooks/2026-03/%1$s/settings", app_id],
            body: parsed,
            model: HubspotSDK::Webhooks::SettingsResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Webhooks::WebhookUpdateSubscriptionParams} for more
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SubscriptionResponse]
        #
        # @see HubspotSDK::Models::Webhooks::WebhookUpdateSubscriptionParams
        def update_subscription(subscription_id, params)
          parsed, options = HubspotSDK::Webhooks::WebhookUpdateSubscriptionParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["webhooks/2026-03/%1$s/subscriptions/%2$s", app_id, subscription_id],
            body: parsed,
            model: HubspotSDK::Webhooks::SubscriptionResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::Webhooks::Webhooks::Batch.new(client: client)
        end
      end
    end
  end
end
