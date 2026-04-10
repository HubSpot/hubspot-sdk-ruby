# typed: strong

module HubSpotSDK
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
              HubSpotSDK::Events::OccurrenceListParams::ObjectProperty::OrHash,
            object_type: String,
            occurred_after: Time,
            occurred_before: Time,
            properties: T::Array[String],
            property:
              HubSpotSDK::Events::OccurrenceListParams::Property::OrHash,
            sort: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::Internal::Page[HubSpotSDK::Events::ExternalUnifiedEvent]
          )
        end
        def list(
          id: nil,
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          event_type: nil,
          # The maximum number of results to display per page.
          limit: nil,
          object_id_: nil,
          object_property: nil,
          object_type: nil,
          occurred_after: nil,
          occurred_before: nil,
          properties: nil,
          property: nil,
          sort: nil,
          request_options: {}
        )
        end

        # Retrieve a list of event type names. You may use these event types to query the
        # API for event occurrences of a desired type.
        #
        # Note: the `get_types` method is only supported in the Python SDK version
        # `12.0.0-beta.1` or later.
        sig do
          params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
            HubSpotSDK::Events::VisibleExternalEventTypeNames
          )
        end
        def list_event_types(request_options: {})
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
