# typed: strong

module HubspotSDK
  module Resources
    class Events
      sig { returns(HubspotSDK::Resources::Events::EventDefinitions) }
      attr_reader :event_definitions

      sig { returns(HubspotSDK::Resources::Events::Send) }
      attr_reader :send_

      # Retrieve instances of event completion data. For example, retrieve all event
      # completions associated with a specific contact.
      sig do
        params(
          id: T::Array[String],
          after: String,
          before: String,
          event_type: String,
          limit: Integer,
          object_id_: Integer,
          object_property:
            HubspotSDK::Events::EventListParams::ObjectProperty::OrHash,
          object_type: String,
          occurred_after: Time,
          occurred_before: Time,
          property: HubspotSDK::Events::EventListParams::Property::OrHash,
          sort: T::Array[String],
          request_options: HubspotSDK::RequestOptions::OrHash
        ).returns(
          HubspotSDK::Internal::Page[HubspotSDK::Events::ExternalUnifiedEvent]
        )
      end
      def list(
        # ID of an event instance. IDs are 1:1 with event instances. If you provide this
        # filter and additional filters, the other filters must match the values on the
        # event instance to yield results.
        id: nil,
        # The paging cursor token of the last successfully read resource will be returned
        # as the `paging.next.after` JSON property of a paged response containing more
        # results.
        after: nil,
        before: nil,
        # The event type name. You can retrieve available event types using the
        # [event types endpoint](#get-%2Fevents%2Fv3%2Fevents%2Fevent-types).
        event_type: nil,
        # The maximum number of results to display per page.
        limit: nil,
        # The ID of the CRM Object to filter event instances on. When including this
        # parameter, you must also include the `objectType` parameter.
        object_id_: nil,
        object_property: nil,
        # The type of CRM object to filter event instances on (e.g., `contact`). To
        # retrieve event data for a specific CRM record, include the additional `objectId`
        # query parameter (below).
        object_type: nil,
        # Filter for event data that occurred after a specific datetime.
        occurred_after: nil,
        # Filter for event data that occurred before a specific datetime.
        occurred_before: nil,
        property: nil,
        # Sort direction based on the timestamp of the event instance, `ASCENDING` or
        # `DESCENDING`.
        sort: nil,
        request_options: {}
      )
      end

      # This endpoint returns a list of event type names which are visible to you. You
      # may use these event type names to query the API for specific event instances of
      # a desired type.
      #
      # Note: the `get_types` method is only supported in the Python SDK version
      # `12.0.0-beta.1` or later.
      sig do
        params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
          HubspotSDK::Events::VisibleExternalEventTypeNames
        )
      end
      def list_event_types(request_options: {})
      end

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
