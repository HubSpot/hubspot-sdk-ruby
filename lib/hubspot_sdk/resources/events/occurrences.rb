# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Events
      class Occurrences
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::OccurrenceListParams} for more details.
        #
        # Retrieve event occurrences for the specified time frame. This endpoint allows
        # filtering by various parameters such as object type, event type, and occurrence
        # time. It supports pagination and sorting of results.
        #
        # @overload list(id: nil, after: nil, before: nil, event_type: nil, limit: nil, object_id_: nil, object_property: nil, object_type: nil, occurred_after: nil, occurred_before: nil, properties: nil, property: nil, sort: nil, request_options: {})
        #
        # @param id [Array<String>] An array of event IDs to filter by.
        #
        # @param after [String] A cursor token for pagination. Use the value from the previous response's paging
        #
        # @param before [String] A cursor token to retrieve results before a specific point.
        #
        # @param event_type [String] The type of event to filter by.
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param object_id_ [Integer] The unique identifier of the object associated with the events.
        #
        # @param object_property [HubspotSDK::Models::Events::OccurrenceListParams::ObjectProperty]
        #
        # @param object_type [String] The type of object associated with the events.
        #
        # @param occurred_after [Time] Filter events that occurred after this date-time.
        #
        # @param occurred_before [Time] Filter events that occurred before this date-time.
        #
        # @param properties [Array<String>] An array of property names to include in the response.
        #
        # @param property [HubspotSDK::Models::Events::OccurrenceListParams::Property]
        #
        # @param sort [Array<String>] An array of fields to sort the results by.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Events::ExternalUnifiedEvent>]
        #
        # @see HubspotSDK::Models::Events::OccurrenceListParams
        def list(params = {})
          parsed, options = HubspotSDK::Events::OccurrenceListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "events/event-occurrences/2026-03",
            query: query.transform_keys(
              event_type: "eventType",
              object_id_: "objectId",
              object_property: "objectProperty",
              object_type: "objectType",
              occurred_after: "occurredAfter",
              occurred_before: "occurredBefore"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Events::ExternalUnifiedEvent,
            options: options
          )
        end

        # Retrieve a list of visible external event type names for the specified event
        # occurrences in March 2026. This endpoint is useful for identifying the types of
        # events that are available for analysis or reporting within your HubSpot account.
        #
        # @overload list_event_types(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::VisibleExternalEventTypeNames]
        #
        # @see HubspotSDK::Models::Events::OccurrenceListEventTypesParams
        def list_event_types(params = {})
          @client.request(
            method: :get,
            path: "events/event-occurrences/2026-03/event-types",
            model: HubspotSDK::Events::VisibleExternalEventTypeNames,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
