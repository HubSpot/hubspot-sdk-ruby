# typed: strong

module HubspotSDK
  module Resources
    class Events
      class Occurrences
        # Retrieve event occurrences for the specified time frame. This endpoint allows
        # filtering by various parameters such as object type, event type, and occurrence
        # time. It supports pagination and sorting of results.
        sig do
          params(
            id: T::Array[String],
            after: String,
            before: String,
            event_type: String,
            limit: Integer,
            object_id_: Integer,
            object_property:
              HubspotSDK::Events::OccurrenceListParams::ObjectProperty::OrHash,
            object_type: String,
            occurred_after: Time,
            occurred_before: Time,
            properties: T::Array[String],
            property:
              HubspotSDK::Events::OccurrenceListParams::Property::OrHash,
            sort: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[HubspotSDK::Events::ExternalUnifiedEvent]
          )
        end
        def list(
          # An array of event IDs to filter by.
          id: nil,
          # A cursor token for pagination. Use the value from the previous response's
          # paging.next.after field.
          after: nil,
          # A cursor token to retrieve results before a specific point.
          before: nil,
          # The type of event to filter by.
          event_type: nil,
          # The maximum number of results to display per page.
          limit: nil,
          # The unique identifier of the object associated with the events.
          object_id_: nil,
          object_property: nil,
          # The type of object associated with the events.
          object_type: nil,
          # Filter events that occurred after this date-time.
          occurred_after: nil,
          # Filter events that occurred before this date-time.
          occurred_before: nil,
          # An array of property names to include in the response.
          properties: nil,
          property: nil,
          # An array of fields to sort the results by.
          sort: nil,
          request_options: {}
        )
        end

        # Retrieve a list of visible external event type names for the specified event
        # occurrences in March 2026. This endpoint is useful for identifying the types of
        # events that are available for analysis or reporting within your HubSpot account.
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
end
