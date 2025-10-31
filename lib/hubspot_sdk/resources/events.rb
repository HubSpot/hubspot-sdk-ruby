# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Events
      # @return [HubspotSDK::Resources::Events::EventDefinitions]
      attr_reader :event_definitions

      # @return [HubspotSDK::Resources::Events::Send]
      attr_reader :send_

      # Some parameter documentations has been truncated, see
      # {HubspotSDK::Models::Events::EventListParams} for more details.
      #
      # Retrieve instances of event completion data. For example, retrieve all event
      # completions associated with a specific contact.
      #
      # @overload list(id: nil, after: nil, before: nil, event_type: nil, limit: nil, object_id_: nil, object_property: nil, object_type: nil, occurred_after: nil, occurred_before: nil, property: nil, sort: nil, request_options: {})
      #
      # @param id [Array<String>] ID of an event instance. IDs are 1:1 with event instances. If you provide this f
      #
      # @param after [String] The paging cursor token of the last successfully read resource will be returned
      #
      # @param before [String] Pagination cursor for backward navigation. Retrieves events occurring before the
      #
      # @param event_type [String] The event type name. You can retrieve available event types using the [event typ
      #
      # @param limit [Integer] The maximum number of results to display per page.
      #
      # @param object_id_ [Integer] The ID of the CRM Object to filter event instances on. When including this param
      #
      # @param object_property [HubspotSDK::Models::Events::EventListParams::ObjectProperty]
      #
      # @param object_type [String] The type of CRM object to filter event instances on (e.g., `contact`). To retrie
      #
      # @param occurred_after [Time] Filter for event data that occurred after a specific datetime.
      #
      # @param occurred_before [Time] Filter for event data that occurred before a specific datetime.
      #
      # @param property [HubspotSDK::Models::Events::EventListParams::Property]
      #
      # @param sort [Array<String>] Sort direction based on the timestamp of the event instance, `ASCENDING` or `DES
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Events::ExternalUnifiedEvent>]
      #
      # @see HubspotSDK::Models::Events::EventListParams
      def list(params = {})
        parsed, options = HubspotSDK::Events::EventListParams.dump_request(params)
        @client.request(
          method: :get,
          path: "events/v3/events/",
          query: parsed.transform_keys(
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

      # This endpoint returns a list of event type names which are visible to you. You
      # may use these event type names to query the API for specific event instances of
      # a desired type.
      #
      # Note: the `get_types` method is only supported in the Python SDK version
      # `12.0.0-beta.1` or later.
      #
      # @overload list_event_types(request_options: {})
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::Events::VisibleExternalEventTypeNames]
      #
      # @see HubspotSDK::Models::Events::EventListEventTypesParams
      def list_event_types(params = {})
        @client.request(
          method: :get,
          path: "events/v3/events/event-types",
          model: HubspotSDK::Events::VisibleExternalEventTypeNames,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @event_definitions = HubspotSDK::Resources::Events::EventDefinitions.new(client: client)
        @send_ = HubspotSDK::Resources::Events::Send.new(client: client)
      end
    end
  end
end
