# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Events
        # @return [HubspotSDK::Resources::Marketing::Events::Attendance]
        attr_reader :attendance

        # @return [HubspotSDK::Resources::Marketing::Events::Events]
        attr_reader :events

        # @return [HubspotSDK::Resources::Marketing::Events::ListAssociations]
        attr_reader :list_associations

        # @return [HubspotSDK::Resources::Marketing::Events::Participations]
        attr_reader :participations

        # @return [HubspotSDK::Resources::Marketing::Events::Settings]
        attr_reader :settings

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventCreateParams} for more details.
        #
        # @overload create(custom_properties:, event_name:, event_organizer:, external_account_id:, external_event_id:, end_date_time: nil, event_cancelled: nil, event_completed: nil, event_description: nil, event_type: nil, event_url: nil, start_date_time: nil, request_options: {})
        #
        # @param custom_properties [Array<HubspotSDK::Models::PropertyValue>] A list of PropertyValues. These can be whatever kind of property names and value
        #
        # @param event_name [String] The name of the marketing event.
        #
        # @param event_organizer [String] The name of the organizer of the marketing event.
        #
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event
        #
        # @param external_event_id [String] The id of the marketing event in the external event application.
        #
        # @param end_date_time [Time] The end date and time of the marketing event.
        #
        # @param event_cancelled [Boolean] Indicates if the marketing event has been cancelled. Defaults to `false`
        #
        # @param event_completed [Boolean] Indicates if the marketing event has been completed. Defaults to `false`
        #
        # @param event_description [String] The description of the marketing event.
        #
        # @param event_type [String] Describes what type of event this is. For example: `WEBINAR`, `CONFERENCE`, `WO
        #
        # @param event_url [String] A URL in the external event application where the marketing event can be managed
        #
        # @param start_date_time [Time] The start date and time of the marketing event.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventDefaultResponse]
        #
        # @see HubspotSDK::Models::Marketing::EventCreateParams
        def create(params)
          parsed, options = HubspotSDK::Marketing::EventCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/marketing-events/2026-03/events",
            body: parsed,
            model: HubspotSDK::Marketing::MarketingEventDefaultResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventUpdateParams} for more details.
        #
        # @overload update(object_id_, custom_properties:, end_date_time: nil, event_cancelled: nil, event_description: nil, event_name: nil, event_organizer: nil, event_type: nil, event_url: nil, start_date_time: nil, request_options: {})
        #
        # @param object_id_ [String] The internal id of the marketing event in HubSpot.
        #
        # @param custom_properties [Array<HubspotSDK::Models::PropertyValue>]
        #
        # @param end_date_time [Time] The end date and time of the marketing event
        #
        # @param event_cancelled [Boolean] Indicates if the marketing event has been cancelled
        #
        # @param event_description [String] The description of the marketing event
        #
        # @param event_name [String] The name of the marketing event
        #
        # @param event_organizer [String] The name of the organizer of the marketing event
        #
        # @param event_type [String] The type of the marketing event
        #
        # @param event_url [String] A URL in the external event application where the marketing event can be managed
        #
        # @param start_date_time [Time] The start date and time of the marketing event
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventPublicDefaultResponseV2]
        #
        # @see HubspotSDK::Models::Marketing::EventUpdateParams
        def update(object_id_, params)
          parsed, options = HubspotSDK::Marketing::EventUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["marketing/marketing-events/2026-03/%1$s", object_id_],
            body: parsed,
            model: HubspotSDK::Marketing::MarketingEventPublicDefaultResponseV2,
            options: options
          )
        end

        # @overload delete(object_id_, request_options: {})
        #
        # @param object_id_ [String] The internal id of the marketing event in HubSpot.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::EventDeleteParams
        def delete(object_id_, params = {})
          @client.request(
            method: :delete,
            path: ["marketing/marketing-events/2026-03/%1$s", object_id_],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @overload delete_batch(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventPublicObjectIDDeleteRequest>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Marketing::EventDeleteBatchParams
        def delete_batch(params)
          parsed, options = HubspotSDK::Marketing::EventDeleteBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/marketing-events/2026-03/batch/archive",
            headers: {"accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # @overload delete_batch_by_external_event_id(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventExternalUniqueIdentifier>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Marketing::EventDeleteBatchByExternalEventIDParams
        def delete_batch_by_external_event_id(params)
          parsed, options = HubspotSDK::Marketing::EventDeleteBatchByExternalEventIDParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/marketing-events/2026-03/events/delete",
            headers: {"accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # @overload delete_by_external_event_id(external_event_id, external_account_id:, request_options: {})
        #
        # @param external_event_id [String]
        # @param external_account_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::EventDeleteByExternalEventIDParams
        def delete_by_external_event_id(external_event_id, params)
          parsed, options = HubspotSDK::Marketing::EventDeleteByExternalEventIDParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :delete,
            path: ["marketing/marketing-events/2026-03/events/%1$s", external_event_id],
            query: query.transform_keys(external_account_id: "externalAccountId"),
            model: NilClass,
            options: options
          )
        end

        # @overload get(object_id_, request_options: {})
        #
        # @param object_id_ [String] The internal id of the marketing event in HubSpot.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventPublicReadResponseV2]
        #
        # @see HubspotSDK::Models::Marketing::EventGetParams
        def get(object_id_, params = {})
          @client.request(
            method: :get,
            path: ["marketing/marketing-events/2026-03/%1$s", object_id_],
            model: HubspotSDK::Marketing::MarketingEventPublicReadResponseV2,
            options: params[:request_options]
          )
        end

        # @overload get_by_external_event_id(external_event_id, external_account_id:, request_options: {})
        #
        # @param external_event_id [String]
        # @param external_account_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventPublicReadResponse]
        #
        # @see HubspotSDK::Models::Marketing::EventGetByExternalEventIDParams
        def get_by_external_event_id(external_event_id, params)
          parsed, options = HubspotSDK::Marketing::EventGetByExternalEventIDParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["marketing/marketing-events/2026-03/events/%1$s", external_event_id],
            query: query.transform_keys(external_account_id: "externalAccountId"),
            model: HubspotSDK::Marketing::MarketingEventPublicReadResponse,
            options: options
          )
        end

        # @overload search_by_external_event_id(q:, request_options: {})
        #
        # @param q [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::CollectionResponseSearchPublicResponseWrapperNoPaging]
        #
        # @see HubspotSDK::Models::Marketing::EventSearchByExternalEventIDParams
        def search_by_external_event_id(params)
          parsed, options = HubspotSDK::Marketing::EventSearchByExternalEventIDParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "marketing/marketing-events/2026-03/events/search",
            query: query,
            model: HubspotSDK::Marketing::CollectionResponseSearchPublicResponseWrapperNoPaging,
            options: options
          )
        end

        # @overload search_identifiers_by_external_event_id(external_event_id, request_options: {})
        #
        # @param external_event_id [String] The id of the marketing event in the external event application.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::CollectionResponseWithTotalMarketingEventIdentifiersResponse]
        #
        # @see HubspotSDK::Models::Marketing::EventSearchIdentifiersByExternalEventIDParams
        def search_identifiers_by_external_event_id(external_event_id, params = {})
          @client.request(
            method: :get,
            path: ["marketing/marketing-events/2026-03/%1$s/identifiers", external_event_id],
            model: HubspotSDK::Marketing::CollectionResponseWithTotalMarketingEventIdentifiersResponse,
            options: params[:request_options]
          )
        end

        # @overload update_batch(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventPublicUpdateRequestFullV2>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2]
        #
        # @see HubspotSDK::Models::Marketing::EventUpdateBatchParams
        def update_batch(params)
          parsed, options = HubspotSDK::Marketing::EventUpdateBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/marketing-events/2026-03/batch/update",
            body: parsed,
            model: HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventUpdateByExternalEventIDParams} for more
        # details.
        #
        # @overload update_by_external_event_id(external_event_id, external_account_id:, custom_properties:, end_date_time: nil, event_cancelled: nil, event_completed: nil, event_description: nil, event_name: nil, event_organizer: nil, event_type: nil, event_url: nil, start_date_time: nil, request_options: {})
        #
        # @param external_event_id [String] Path param
        #
        # @param external_account_id [String] Query param
        #
        # @param custom_properties [Array<HubspotSDK::Models::PropertyValue>] Body param: A list of PropertyValues. These can be whatever kind of property nam
        #
        # @param end_date_time [Time] Body param: The end date and time of the marketing event.
        #
        # @param event_cancelled [Boolean] Body param: Indicates if the marketing event has been cancelled. Defaults to `fa
        #
        # @param event_completed [Boolean] Body param: Indicates if the marketing event has been completed. Defaults to `fa
        #
        # @param event_description [String] Body param: The description of the marketing event.
        #
        # @param event_name [String] Body param: The name of the marketing event.
        #
        # @param event_organizer [String] Body param: The name of the organizer of the marketing event.
        #
        # @param event_type [String] Body param: Describes what type of event this is. For example: `WEBINAR`, `CONF
        #
        # @param event_url [String] Body param: A URL in the external event application where the marketing event ca
        #
        # @param start_date_time [Time] Body param: The start date and time of the marketing event.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventPublicDefaultResponse]
        #
        # @see HubspotSDK::Models::Marketing::EventUpdateByExternalEventIDParams
        def update_by_external_event_id(external_event_id, params)
          query_params = [:external_account_id]
          parsed, options = HubspotSDK::Marketing::EventUpdateByExternalEventIDParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
          @client.request(
            method: :patch,
            path: ["marketing/marketing-events/2026-03/events/%1$s", external_event_id],
            query: query.transform_keys(external_account_id: "externalAccountId"),
            body: parsed.except(*query_params),
            model: HubspotSDK::Marketing::MarketingEventPublicDefaultResponse,
            options: options
          )
        end

        # @overload upsert_batch(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventCreateRequestParams>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::BatchResponseMarketingEventPublicDefaultResponse]
        #
        # @see HubspotSDK::Models::Marketing::EventUpsertBatchParams
        def upsert_batch(params)
          parsed, options = HubspotSDK::Marketing::EventUpsertBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/marketing-events/2026-03/events/upsert",
            body: parsed,
            model: HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventUpsertByExternalEventIDParams} for more
        # details.
        #
        # @overload upsert_by_external_event_id(path_external_event_id, custom_properties:, event_name:, event_organizer:, external_account_id:, body_external_event_id:, end_date_time: nil, event_cancelled: nil, event_completed: nil, event_description: nil, event_type: nil, event_url: nil, start_date_time: nil, request_options: {})
        #
        # @param path_external_event_id [String]
        #
        # @param custom_properties [Array<HubspotSDK::Models::PropertyValue>] A list of PropertyValues. These can be whatever kind of property names and value
        #
        # @param event_name [String] The name of the marketing event.
        #
        # @param event_organizer [String] The name of the organizer of the marketing event.
        #
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event
        #
        # @param body_external_event_id [String] The id of the marketing event in the external event application.
        #
        # @param end_date_time [Time] The end date and time of the marketing event.
        #
        # @param event_cancelled [Boolean] Indicates if the marketing event has been cancelled. Defaults to `false`
        #
        # @param event_completed [Boolean] Indicates if the marketing event has been completed. Defaults to `false`
        #
        # @param event_description [String] The description of the marketing event.
        #
        # @param event_type [String] Describes what type of event this is. For example: `WEBINAR`, `CONFERENCE`, `WO
        #
        # @param event_url [String] A URL in the external event application where the marketing event can be managed
        #
        # @param start_date_time [Time] The start date and time of the marketing event.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventPublicDefaultResponse]
        #
        # @see HubspotSDK::Models::Marketing::EventUpsertByExternalEventIDParams
        def upsert_by_external_event_id(path_external_event_id, params)
          parsed, options = HubspotSDK::Marketing::EventUpsertByExternalEventIDParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["marketing/marketing-events/2026-03/events/%1$s", path_external_event_id],
            body: parsed,
            model: HubspotSDK::Marketing::MarketingEventPublicDefaultResponse,
            options: options
          )
        end

        # @overload upsert_subscriber_state_by_email(subscriber_state, external_event_id:, external_account_id:, inputs:, request_options: {})
        #
        # @param subscriber_state [String] Path param
        #
        # @param external_event_id [String] Path param
        #
        # @param external_account_id [String] Query param
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventEmailSubscriber>] Body param: List of marketing event details to create or update
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Marketing::EventUpsertSubscriberStateByEmailParams
        def upsert_subscriber_state_by_email(subscriber_state, params)
          query_params = [:external_account_id]
          parsed, options = HubspotSDK::Marketing::EventUpsertSubscriberStateByEmailParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
          external_event_id =
            parsed.delete(:external_event_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: [
              "marketing/marketing-events/2026-03/events/%1$s/%2$s/email-upsert",
              external_event_id,
              subscriber_state
            ],
            query: query.transform_keys(external_account_id: "externalAccountId"),
            headers: {"accept" => "*/*"},
            body: parsed.except(*query_params),
            model: StringIO,
            options: options
          )
        end

        # @overload upsert_subscriber_state_by_id(subscriber_state, external_event_id:, external_account_id:, inputs:, request_options: {})
        #
        # @param subscriber_state [String] Path param
        #
        # @param external_event_id [String] Path param
        #
        # @param external_account_id [String] Query param
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventSubscriber>] Body param: List of HubSpot contacts to subscribe to the marketing event
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Marketing::EventUpsertSubscriberStateByIDParams
        def upsert_subscriber_state_by_id(subscriber_state, params)
          query_params = [:external_account_id]
          parsed, options = HubspotSDK::Marketing::EventUpsertSubscriberStateByIDParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed.slice(*query_params))
          external_event_id =
            parsed.delete(:external_event_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: [
              "marketing/marketing-events/2026-03/events/%1$s/%2$s/upsert",
              external_event_id,
              subscriber_state
            ],
            query: query.transform_keys(external_account_id: "externalAccountId"),
            headers: {"accept" => "*/*"},
            body: parsed.except(*query_params),
            model: StringIO,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @attendance = HubspotSDK::Resources::Marketing::Events::Attendance.new(client: client)
          @events = HubspotSDK::Resources::Marketing::Events::Events.new(client: client)
          @list_associations = HubspotSDK::Resources::Marketing::Events::ListAssociations.new(client: client)
          @participations = HubspotSDK::Resources::Marketing::Events::Participations.new(client: client)
          @settings = HubspotSDK::Resources::Marketing::Events::Settings.new(client: client)
        end
      end
    end
  end
end
