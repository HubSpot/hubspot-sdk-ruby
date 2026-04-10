# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Events
      class Occurrences
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Events::OccurrenceListParams} for more details.
        #
        # Retrieve event occurrences for the specified time frame. This endpoint allows
        # filtering by various parameters such as object type, event type, and occurrence
        # time. It supports pagination and sorting of results.
        #
        # @overload list(id: nil, after: nil, before: nil, event_type: nil, limit: nil, object_id_: nil, object_property: nil, object_type: nil, occurred_after: nil, occurred_before: nil, properties: nil, property: nil, sort: nil, request_options: {})
        #
        # @param id [Array<String>]
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param before [String]
        #
        # @param event_type [String]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param object_id_ [Integer]
        #
        # @param object_property [HubSpotSDK::Models::Events::OccurrenceListParams::ObjectProperty]
        #
        # @param object_type [String]
        #
        # @param occurred_after [Time]
        #
        # @param occurred_before [Time]
        #
        # @param properties [Array<String>]
        #
        # @param property [HubSpotSDK::Models::Events::OccurrenceListParams::Property]
        #
        # @param sort [Array<String>]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Events::ExternalUnifiedEvent>]
        #
        # @see HubSpotSDK::Models::Events::OccurrenceListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Events::OccurrenceListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
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
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Events::ExternalUnifiedEvent,
            options: options
          )
        end

        # Retrieve a list of event type names. You may use these event types to query the
        # API for event occurrences of a desired type.
        #
        # Note: the `get_types` method is only supported in the Python SDK version
        # `12.0.0-beta.1` or later.
        #
        # @overload list_event_types(request_options: {})
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Events::VisibleExternalEventTypeNames]
        #
        # @see HubSpotSDK::Models::Events::OccurrenceListEventTypesParams
        def list_event_types(params = {})
          @client.request(
            method: :get,
            path: "events/event-occurrences/2026-03/event-types",
            model: HubSpotSDK::Events::VisibleExternalEventTypeNames,
            options: params[:request_options]
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
end
