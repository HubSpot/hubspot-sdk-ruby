# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Events
        # @return [HubspotSDK::Resources::Marketing::Events::Associations]
        attr_reader :associations

        # @return [HubspotSDK::Resources::Marketing::Events::Attendance]
        attr_reader :attendance

        # @return [HubspotSDK::Resources::Marketing::Events::Participations]
        attr_reader :participations

        # @return [HubspotSDK::Resources::Marketing::Events::Settings]
        attr_reader :settings

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventCreateParams} for more details.
        #
        # Creates a new marketing event in HubSpot
        #
        # @overload create(custom_properties:, event_name:, event_organizer:, external_account_id:, external_event_id:, end_date_time: nil, event_cancelled: nil, event_completed: nil, event_description: nil, event_type: nil, event_url: nil, start_date_time: nil, request_options: {})
        #
        # @param custom_properties [Array<HubspotSDK::Models::Marketing::PropertyValue>] A list of PropertyValues. These can be whatever kind of property names and value
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
        # @param event_completed [Boolean]
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
            path: "marketing/v3/marketing-events/events",
            body: parsed,
            model: HubspotSDK::Marketing::MarketingEventDefaultResponse,
            options: options
          )
        end

        # Updates the details of an existing Marketing Event identified by its objectId,
        # if it exists.
        #
        # @overload update(object_id_, custom_properties:, end_date_time: nil, event_cancelled: nil, event_description: nil, event_name: nil, event_organizer: nil, event_type: nil, event_url: nil, start_date_time: nil, request_options: {})
        #
        # @param object_id_ [String] The internal ID of the marketing event in HubSpot
        #
        # @param custom_properties [Array<HubspotSDK::Models::Marketing::PropertyValue>]
        #
        # @param end_date_time [Time]
        #
        # @param event_cancelled [Boolean]
        #
        # @param event_description [String]
        #
        # @param event_name [String]
        #
        # @param event_organizer [String]
        #
        # @param event_type [String]
        #
        # @param event_url [String]
        #
        # @param start_date_time [Time]
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
            path: ["marketing/v3/marketing-events/%1$s", object_id_],
            body: parsed,
            model: HubspotSDK::Marketing::MarketingEventPublicDefaultResponseV2,
            options: options
          )
        end

        # Returns all Marketing Events available on the portal, along with their
        # properties, regardless of whether they were created manually or through the
        # application.
        #
        # The marketing events returned by this endpoint are sorted by objectId.
        #
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
        # @see HubspotSDK::Models::Marketing::EventListParams
        def list(params = {})
          parsed, options = HubspotSDK::Marketing::EventListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "marketing/v3/marketing-events/",
            query: parsed,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Marketing::MarketingEventPublicReadResponseV2,
            options: options
          )
        end

        # Deletes the existing Marketing Event with the specified objectId, if it exists.
        #
        # @overload delete(object_id_, request_options: {})
        #
        # @param object_id_ [String] The internal ID of the marketing event in HubSpot
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::EventDeleteParams
        def delete(object_id_, params = {})
          @client.request(
            method: :delete,
            path: ["marketing/v3/marketing-events/%1$s", object_id_],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventCancelByExternalEventIDParams} for more
        # details.
        #
        # Mark a marketing event as cancelled.
        #
        # @overload cancel_by_external_event_id(external_event_id, external_account_id:, request_options: {})
        #
        # @param external_event_id [String] The id of the marketing event in the external event application
        #
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventDefaultResponse]
        #
        # @see HubspotSDK::Models::Marketing::EventCancelByExternalEventIDParams
        def cancel_by_external_event_id(external_event_id, params)
          parsed, options = HubspotSDK::Marketing::EventCancelByExternalEventIDParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["marketing/v3/marketing-events/events/%1$s/cancel", external_event_id],
            query: parsed.transform_keys(external_account_id: "externalAccountId"),
            model: HubspotSDK::Marketing::MarketingEventDefaultResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventCompleteByExternalEventIDParams} for more
        # details.
        #
        # Mark a marketing event as completed
        #
        # @overload complete_by_external_event_id(external_event_id, external_account_id:, end_date_time:, start_date_time:, request_options: {})
        #
        # @param external_event_id [String] Path param: The id of the marketing event in the external event application.
        #
        # @param external_account_id [String] Query param: The accountId that is associated with this marketing event in the e
        #
        # @param end_date_time [Time] Body param
        #
        # @param start_date_time [Time] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventDefaultResponse]
        #
        # @see HubspotSDK::Models::Marketing::EventCompleteByExternalEventIDParams
        def complete_by_external_event_id(external_event_id, params)
          parsed, options = HubspotSDK::Marketing::EventCompleteByExternalEventIDParams.dump_request(params)
          query_params = [:external_account_id]
          @client.request(
            method: :post,
            path: ["marketing/v3/marketing-events/events/%1$s/complete", external_event_id],
            query: parsed.slice(*query_params).transform_keys(external_account_id: "externalAccountId"),
            body: parsed.except(*query_params),
            model: HubspotSDK::Marketing::MarketingEventDefaultResponse,
            options: options
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
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::EventDeleteBatchParams
        def delete_batch(params)
          parsed, options = HubspotSDK::Marketing::EventDeleteBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/v3/marketing-events/batch/archive",
            body: parsed,
            model: NilClass,
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
        # @see HubspotSDK::Models::Marketing::EventDeleteBatchByExternalEventIDParams
        def delete_batch_by_external_event_id(params)
          parsed, options = HubspotSDK::Marketing::EventDeleteBatchByExternalEventIDParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/v3/marketing-events/events/delete",
            headers: {"accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventDeleteByExternalEventIDParams} for more
        # details.
        #
        # Deletes the existing Marketing Event with the specified externalAccountId,
        # externalEventId, if it exists.
        #
        # Only Marketing Events created by the same app can be deleted.
        #
        # @overload delete_by_external_event_id(external_event_id, external_account_id:, request_options: {})
        #
        # @param external_event_id [String] The id of the marketing event in the external event application
        #
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Marketing::EventDeleteByExternalEventIDParams
        def delete_by_external_event_id(external_event_id, params)
          parsed, options = HubspotSDK::Marketing::EventDeleteByExternalEventIDParams.dump_request(params)
          @client.request(
            method: :delete,
            path: ["marketing/v3/marketing-events/events/%1$s", external_event_id],
            query: parsed.transform_keys(external_account_id: "externalAccountId"),
            model: NilClass,
            options: options
          )
        end

        # Returns the details of a Marketing Event with the specified objectId, if it
        # exists.
        #
        # @overload get(object_id_, request_options: {})
        #
        # @param object_id_ [String] The internal ID of the marketing event in HubSpot
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventPublicReadResponseV2]
        #
        # @see HubspotSDK::Models::Marketing::EventGetParams
        def get(object_id_, params = {})
          @client.request(
            method: :get,
            path: ["marketing/v3/marketing-events/%1$s", object_id_],
            model: HubspotSDK::Marketing::MarketingEventPublicReadResponseV2,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventGetByExternalEventIDParams} for more
        # details.
        #
        # Returns the details of a Marketing Event with the specified externalAccountId,
        # externalEventId, if it exists.
        #
        # Only Marketing Events created by the same app making the request can be
        # retrieved.
        #
        # @overload get_by_external_event_id(external_event_id, external_account_id:, request_options: {})
        #
        # @param external_event_id [String] The id of the marketing event in the external event application
        #
        # @param external_account_id [String] The accountId that is associated with this marketing event in the external event
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::MarketingEventPublicReadResponse]
        #
        # @see HubspotSDK::Models::Marketing::EventGetByExternalEventIDParams
        def get_by_external_event_id(external_event_id, params)
          parsed, options = HubspotSDK::Marketing::EventGetByExternalEventIDParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["marketing/v3/marketing-events/events/%1$s", external_event_id],
            query: parsed.transform_keys(external_account_id: "externalAccountId"),
            model: HubspotSDK::Marketing::MarketingEventPublicReadResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventSearchByExternalEventIDParams} for more
        # details.
        #
        # Retrieves Marketing Events where the externalEventId matches the value provided
        # in the request, limited to events created by the app making the request.
        #
        # Marketing Events created by other apps will not be included in the results.
        #
        # @overload search_by_external_event_id(q:, request_options: {})
        #
        # @param q [String] The id of the marketing event in the external event application (externalEventId
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Marketing::CollectionResponseSearchPublicResponseWrapperNoPaging]
        #
        # @see HubspotSDK::Models::Marketing::EventSearchByExternalEventIDParams
        def search_by_external_event_id(params)
          parsed, options = HubspotSDK::Marketing::EventSearchByExternalEventIDParams.dump_request(params)
          @client.request(
            method: :get,
            path: "marketing/v3/marketing-events/events/search",
            query: parsed,
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
        # @return [HubspotSDK::Models::Marketing::CollectionResponseWithTotalMarketingEventIdentifiersResponseNoPaging]
        #
        # @see HubspotSDK::Models::Marketing::EventSearchIdentifiersByExternalEventIDParams
        def search_identifiers_by_external_event_id(external_event_id, params = {})
          @client.request(
            method: :get,
            path: ["marketing/v3/marketing-events/%1$s/identifiers", external_event_id],
            model: HubspotSDK::Marketing::CollectionResponseWithTotalMarketingEventIdentifiersResponseNoPaging,
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
        # @see HubspotSDK::Models::Marketing::EventUpdateBatchParams
        def update_batch(params)
          parsed, options = HubspotSDK::Marketing::EventUpdateBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/v3/marketing-events/batch/update",
            body: parsed,
            model: HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventUpdateByExternalEventIDParams} for more
        # details.
        #
        # Updates the details of an existing Marketing Event identified by its
        # externalAccountId, externalEventId if it exists.
        #
        # Only Marketing Events created by the same app can be updated.
        #
        # @overload update_by_external_event_id(external_event_id, external_account_id:, custom_properties:, end_date_time: nil, event_cancelled: nil, event_completed: nil, event_description: nil, event_name: nil, event_organizer: nil, event_type: nil, event_url: nil, start_date_time: nil, request_options: {})
        #
        # @param external_event_id [String] Path param: The id of the marketing event in the external event application
        #
        # @param external_account_id [String] Query param: The accountId that is associated with this marketing event in the e
        #
        # @param custom_properties [Array<HubspotSDK::Models::Marketing::PropertyValue>] Body param: A list of PropertyValues. These can be whatever kind of property nam
        #
        # @param end_date_time [Time] Body param: The end date and time of the marketing event.
        #
        # @param event_cancelled [Boolean] Body param: Indicates if the marketing event has been cancelled. Defaults to `fa
        #
        # @param event_completed [Boolean] Body param
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
          parsed, options = HubspotSDK::Marketing::EventUpdateByExternalEventIDParams.dump_request(params)
          query_params = [:external_account_id]
          @client.request(
            method: :patch,
            path: ["marketing/v3/marketing-events/events/%1$s", external_event_id],
            query: parsed.slice(*query_params).transform_keys(external_account_id: "externalAccountId"),
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
        # @see HubspotSDK::Models::Marketing::EventUpsertBatchParams
        def upsert_batch(params)
          parsed, options = HubspotSDK::Marketing::EventUpsertBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "marketing/v3/marketing-events/events/upsert",
            body: parsed,
            model: HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventUpsertByExternalEventIDParams} for more
        # details.
        #
        # Upserts a marketing event If there is an existing marketing event with the
        # specified ID, it will be updated; otherwise a new event will be created.
        #
        # @overload upsert_by_external_event_id(path_external_event_id, custom_properties:, event_name:, event_organizer:, external_account_id:, body_external_event_id:, end_date_time: nil, event_cancelled: nil, event_completed: nil, event_description: nil, event_type: nil, event_url: nil, start_date_time: nil, request_options: {})
        #
        # @param path_external_event_id [String] The id of the marketing event in the external event application
        #
        # @param custom_properties [Array<HubspotSDK::Models::Marketing::PropertyValue>] A list of PropertyValues. These can be whatever kind of property names and value
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
        # @param event_completed [Boolean]
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
            path: ["marketing/v3/marketing-events/events/%1$s", path_external_event_id],
            body: parsed,
            model: HubspotSDK::Marketing::MarketingEventPublicDefaultResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventUpsertSubscriberStateByEmailParams} for
        # more details.
        #
        # Record a subscriber state between multiple HubSpot contacts and a marketing
        # event, using contact email addresses. Note that the contact must already exist
        # in HubSpot; a contact will not be created. The contactProperties field is used
        # only when creating a new contact. These properties will not update existing
        # contacts.
        #
        # @overload upsert_subscriber_state_by_email(subscriber_state, external_event_id:, external_account_id:, inputs:, request_options: {})
        #
        # @param subscriber_state [String] Path param: The new subscriber state for the HubSpot contacts and the specified
        #
        # @param external_event_id [String] Path param: The id of the marketing event in the external event application
        #
        # @param external_account_id [String] Query param: The accountId that is associated with this marketing event in the e
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventEmailSubscriber>] Body param: List of marketing event details to create or update
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Marketing::EventUpsertSubscriberStateByEmailParams
        def upsert_subscriber_state_by_email(subscriber_state, params)
          parsed, options = HubspotSDK::Marketing::EventUpsertSubscriberStateByEmailParams.dump_request(params)
          external_event_id =
            parsed.delete(:external_event_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          query_params = [:external_account_id]
          @client.request(
            method: :post,
            path: [
              "marketing/v3/marketing-events/events/%1$s/%2$s/email-upsert",
              external_event_id,
              subscriber_state
            ],
            query: parsed.slice(*query_params).transform_keys(external_account_id: "externalAccountId"),
            headers: {"accept" => "*/*"},
            body: parsed.except(*query_params),
            model: StringIO,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Marketing::EventUpsertSubscriberStateByIDParams} for more
        # details.
        #
        # Record a subscriber state between multiple HubSpot contacts and a marketing
        # event, using HubSpot contact IDs. Note that the contact must already exist in
        # HubSpot; a contact will not be created.
        #
        # @overload upsert_subscriber_state_by_id(subscriber_state, external_event_id:, external_account_id:, inputs:, request_options: {})
        #
        # @param subscriber_state [String] Path param: The new subscriber state for the HubSpot contacts and the specified
        #
        # @param external_event_id [String] Path param: The id of the marketing event in the external event application
        #
        # @param external_account_id [String] Query param: The accountId that is associated with this marketing event in the e
        #
        # @param inputs [Array<HubspotSDK::Models::Marketing::MarketingEventSubscriber>] Body param: List of HubSpot contacts to subscribe to the marketing event
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Marketing::EventUpsertSubscriberStateByIDParams
        def upsert_subscriber_state_by_id(subscriber_state, params)
          parsed, options = HubspotSDK::Marketing::EventUpsertSubscriberStateByIDParams.dump_request(params)
          external_event_id =
            parsed.delete(:external_event_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          query_params = [:external_account_id]
          @client.request(
            method: :post,
            path: [
              "marketing/v3/marketing-events/events/%1$s/%2$s/upsert",
              external_event_id,
              subscriber_state
            ],
            query: parsed.slice(*query_params).transform_keys(external_account_id: "externalAccountId"),
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
          @associations = HubspotSDK::Resources::Marketing::Events::Associations.new(client: client)
          @attendance = HubspotSDK::Resources::Marketing::Events::Attendance.new(client: client)
          @participations = HubspotSDK::Resources::Marketing::Events::Participations.new(client: client)
          @settings = HubspotSDK::Resources::Marketing::Events::Settings.new(client: client)
        end
      end
    end
  end
end
