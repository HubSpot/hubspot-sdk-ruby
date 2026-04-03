# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class MarketingEvents
        # @return [HubspotSDK::Resources::Marketing::MarketingEvents::Attendance]
        attr_reader :attendance

        # @return [HubspotSDK::Resources::Marketing::MarketingEvents::Events]
        attr_reader :events

        # @return [HubspotSDK::Resources::Marketing::MarketingEvents::ListAssociations]
        attr_reader :list_associations

        # @return [HubspotSDK::Resources::Marketing::MarketingEvents::Participations]
        attr_reader :participations

        # @return [HubspotSDK::Resources::Marketing::MarketingEvents::Settings]
        attr_reader :settings

        # @return [HubspotSDK::Resources::Marketing::MarketingEvents::SubscriberState]
        attr_reader :subscriber_state

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::MarketingEventCreateParams} for more details.
        #
        # Creates a new marketing event in HubSpot
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
        # @see HubspotSDK::Models::Marketing::MarketingEventCreateParams
        def create(params)
          parsed, options = HubspotSDK::Marketing::MarketingEventCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/marketing-events/2026-03/events",
            body: parsed,
            model: HubspotSDK::Marketing::MarketingEventDefaultResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::MarketingEventUpdateParams} for more details.
        #
        # Updates the details of an existing Marketing Event identified by its objectId,
        # if it exists.
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
        # @see HubspotSDK::Models::Marketing::MarketingEventUpdateParams
        def update(object_id_, params)
          parsed, options = HubspotSDK::Marketing::MarketingEventUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["marketing/marketing-events/2026-03/%1$s", object_id_],
            body: parsed,
            model: HubspotSDK::Marketing::MarketingEventPublicDefaultResponseV2,
            options: options
          )
        end

        # @overload list(after: nil, limit: nil, request_options: {})
        #
        # @param after [String] The cursor indicating the position of the last retrieved item.
        #
        # @param limit [Integer] The limit for response size. The default value is 10, the max number is 100
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Marketing::MarketingEventPublicReadResponseV2>]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventListParams
        def list(params = {})
          parsed, options = HubspotSDK::Marketing::MarketingEventListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "marketing/marketing-events/2026-03",
            query: query,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Marketing::MarketingEventPublicReadResponseV2,
            options: options
          )
        end

        # Deletes the existing Marketing Event with the specified objectId, if it exists.
        #
        # @overload delete(object_id_, request_options: {})
        #
        # @param object_id_ [String] The internal id of the marketing event in HubSpot.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventDeleteParams
        def delete(object_id_, params = {})
          @client.request(
            method: :delete,
            path: ["marketing/marketing-events/2026-03/%1$s", object_id_],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Deletes multiple Marketing Events from the portal based on their objectId, if
        # they exist.
        #
        # Responses: 204: Returned if all specified Marketing Events were successfully
        # deleted. 207: Returned if some objectIds did not correspond to any existing
        # Marketing Events.
        #
        # @overload delete_batch(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventPublicObjectIDDeleteRequest>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventDeleteBatchParams
        def delete_batch(params)
          parsed, options = HubspotSDK::Marketing::MarketingEventDeleteBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/marketing-events/2026-03/batch/archive",
            headers: {"accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Deletes multiple Marketing Events based on externalAccountId, externalEventId,
        # and appId.
        #
        # Only Marketing Events created by the same apps will be deleted; events from
        # other apps cannot be removed by this endpoint.
        #
        # @overload delete_batch_by_external_event_id(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventExternalUniqueIdentifier>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventDeleteBatchByExternalEventIDParams
        def delete_batch_by_external_event_id(params)
          parsed, options =
            HubspotSDK::Marketing::MarketingEventDeleteBatchByExternalEventIDParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/marketing-events/2026-03/events/delete",
            headers: {"accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Deletes the existing Marketing Event with the specified externalAccountId,
        # externalEventId, if it exists.
        #
        # Only Marketing Events created by the same app can be deleted.
        #
        # @overload delete_by_external_event_id(external_event_id, external_account_id:, request_options: {})
        #
        # @param external_event_id [String]
        # @param external_account_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventDeleteByExternalEventIDParams
        def delete_by_external_event_id(external_event_id, params)
          parsed, options = HubspotSDK::Marketing::MarketingEventDeleteByExternalEventIDParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :delete,
            path: ["marketing/marketing-events/2026-03/events/%1$s", external_event_id],
            query: query.transform_keys(external_account_id: "externalAccountId"),
            model: NilClass,
            options: options
          )
        end

        # Returns the details of a Marketing Event with the specified objectId, if it
        # exists.
        #
        # @overload get(object_id_, request_options: {})
        #
        # @param object_id_ [String] The internal id of the marketing event in HubSpot.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventPublicReadResponseV2]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventGetParams
        def get(object_id_, params = {})
          @client.request(
            method: :get,
            path: ["marketing/marketing-events/2026-03/%1$s", object_id_],
            model: HubspotSDK::Marketing::MarketingEventPublicReadResponseV2,
            options: params[:request_options]
          )
        end

        # Returns the details of a Marketing Event with the specified externalAccountId,
        # externalEventId, if it exists.
        #
        # Only Marketing Events created by the same app making the request can be
        # retrieved.
        #
        # @overload get_by_external_event_id(external_event_id, external_account_id:, request_options: {})
        #
        # @param external_event_id [String]
        # @param external_account_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventPublicReadResponse]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventGetByExternalEventIDParams
        def get_by_external_event_id(external_event_id, params)
          parsed, options = HubspotSDK::Marketing::MarketingEventGetByExternalEventIDParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["marketing/marketing-events/2026-03/events/%1$s", external_event_id],
            query: query.transform_keys(external_account_id: "externalAccountId"),
            model: HubspotSDK::Marketing::MarketingEventPublicReadResponse,
            options: options
          )
        end

        # Retrieves Marketing Events where the externalEventId matches the value provided
        # in the request, limited to events created by the app making the request.
        #
        # Marketing Events created by other apps will not be included in the results.
        #
        # @overload search_by_external_event_id(q:, request_options: {})
        #
        # @param q [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::CollectionResponseSearchPublicResponseWrapperNoPaging]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventSearchByExternalEventIDParams
        def search_by_external_event_id(params)
          parsed, options = HubspotSDK::Marketing::MarketingEventSearchByExternalEventIDParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "marketing/marketing-events/2026-03/events/search",
            query: query,
            model: HubspotSDK::Marketing::CollectionResponseSearchPublicResponseWrapperNoPaging,
            options: options
          )
        end

        # This endpoint searches the portal for all Marketing Events whose externalEventId
        # matches the value provided in the request.
        #
        # It retrieves the objectId and additional event details for each matching
        # Marketing Event.
        #
        # Since multiple Marketing Events can have the same externalEventId, the endpoint
        # returns all matching results.
        #
        # Note: Marketing Events become searchable by externalEventId a few minutes after
        # creation.
        #
        # @overload search_identifiers_by_external_event_id(external_event_id, request_options: {})
        #
        # @param external_event_id [String] The id of the marketing event in the external event application.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::CollectionResponseWithTotalMarketingEventIdentifiersResponse]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventSearchIdentifiersByExternalEventIDParams
        def search_identifiers_by_external_event_id(external_event_id, params = {})
          @client.request(
            method: :get,
            path: ["marketing/marketing-events/2026-03/%1$s/identifiers", external_event_id],
            model: HubspotSDK::Marketing::CollectionResponseWithTotalMarketingEventIdentifiersResponse,
            options: params[:request_options]
          )
        end

        # Updates multiple Marketing Events on the portal based on their objectId, if they
        # exist.
        #
        # @overload update_batch(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventPublicUpdateRequestFullV2>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventUpdateBatchParams
        def update_batch(params)
          parsed, options = HubspotSDK::Marketing::MarketingEventUpdateBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/marketing-events/2026-03/batch/update",
            body: parsed,
            model: HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::MarketingEventUpdateByExternalEventIDParams} for
        # more details.
        #
        # Updates the details of an existing Marketing Event identified by its
        # externalAccountId, externalEventId if it exists.
        #
        # Only Marketing Events created by the same app can be updated.
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
        # @see HubspotSDK::Models::Marketing::MarketingEventUpdateByExternalEventIDParams
        def update_by_external_event_id(external_event_id, params)
          query_params = [:external_account_id]
          parsed, options = HubspotSDK::Marketing::MarketingEventUpdateByExternalEventIDParams.dump_request(params)
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

        # Upserts multiple Marketing Events. If a Marketing Event with the specified ID
        # already exists, it will be updated; otherwise, a new event will be created.
        #
        # Only Marketing Events originally created by the same app can be updated.
        #
        # @overload upsert_batch(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventCreateRequestParams>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::BatchResponseMarketingEventPublicDefaultResponse]
        #
        # @see HubspotSDK::Models::Marketing::MarketingEventUpsertBatchParams
        def upsert_batch(params)
          parsed, options = HubspotSDK::Marketing::MarketingEventUpsertBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/marketing-events/2026-03/events/upsert",
            body: parsed,
            model: HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::MarketingEventUpsertByExternalEventIDParams} for
        # more details.
        #
        # Upserts a marketing event If there is an existing marketing event with the
        # specified ID, it will be updated; otherwise a new event will be created.
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
        # @see HubspotSDK::Models::Marketing::MarketingEventUpsertByExternalEventIDParams
        def upsert_by_external_event_id(path_external_event_id, params)
          parsed, options = HubspotSDK::Marketing::MarketingEventUpsertByExternalEventIDParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["marketing/marketing-events/2026-03/events/%1$s", path_external_event_id],
            body: parsed,
            model: HubspotSDK::Marketing::MarketingEventPublicDefaultResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @attendance = HubspotSDK::Resources::Marketing::MarketingEvents::Attendance.new(client: client)
          @events = HubspotSDK::Resources::Marketing::MarketingEvents::Events.new(client: client)
          @list_associations =
            HubspotSDK::Resources::Marketing::MarketingEvents::ListAssociations.new(client: client)
          @participations = HubspotSDK::Resources::Marketing::MarketingEvents::Participations.new(client: client)
          @settings = HubspotSDK::Resources::Marketing::MarketingEvents::Settings.new(client: client)
          @subscriber_state =
            HubspotSDK::Resources::Marketing::MarketingEvents::SubscriberState.new(client: client)
        end
      end
    end
  end
end
