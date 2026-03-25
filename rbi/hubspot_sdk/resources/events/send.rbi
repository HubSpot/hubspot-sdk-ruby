# typed: strong

module HubspotSDK
  module Resources
    class Events
      class Send
        sig do
          params(
            include_default_properties: T::Boolean,
            label: String,
            property_definitions:
              T::Array[
                HubspotSDK::Events::ExternalBehavioralEventPropertyCreate::OrHash
              ],
            custom_matching_id:
              HubspotSDK::Events::ExternalObjectResolutionMappingRequest::OrHash,
            description: String,
            name: String,
            primary_object: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Events::ExternalBehavioralEventTypeDefinition)
        end
        def create_event_definition(
          include_default_properties:,
          # Human readable label for the event for display in HubSpot's UI.
          label:,
          # List of custom properties on event
          property_definitions:,
          custom_matching_id: nil,
          # A description of the event that will be shown as help text in HubSpot.
          description: nil,
          # Internal event name, which must be used when referencing the event from the API.
          # If a name is not supplied, one will be generated based on the label. The name
          # does not include the `pe<PORTAL_ID>_` prefix used when sending event
          # completions.
          name: nil,
          # The object type to associate this event to. Can be one of `CONTACT`, `COMPANY`,
          # `DEAL`, `TICKET`. If no value is supplied, will default to `CONTACT`.
          primary_object: nil,
          request_options: {}
        )
        end

        sig do
          params(
            event_name: String,
            label: String,
            type: String,
            description: String,
            name: String,
            options: T::Array[HubspotSDK::Events::OptionInput::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Events::Property)
        end
        def create_event_definition_property(
          event_name,
          # Human readable label for the property. Used in HubSpot UI
          label:,
          # The data type of the property. Can be one of the following: [string, number,
          # enumeration, datetime]
          type:,
          # A description of the property that will be shown as help text in HubSpot.
          description: nil,
          # Internal property name, which must be used when referencing the property from
          # the API
          name: nil,
          # A list of available options for the property if it is an enumeration. NOTE: This
          # field is only applicable for enumerated properties.
          options: nil,
          request_options: {}
        )
        end

        sig do
          params(
            event_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_event_definition(event_name, request_options: {})
        end

        sig do
          params(
            property_name: String,
            event_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_event_definition_property(
          property_name,
          event_name:,
          request_options: {}
        )
        end

        sig do
          params(
            event_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Events::ExternalBehavioralEventTypeDefinition)
        end
        def get_event_definition(event_name, request_options: {})
        end

        sig do
          params(
            after: String,
            include_properties: T::Boolean,
            limit: Integer,
            search_string: String,
            sort_order: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Events::ExternalBehavioralEventTypeDefinition
            ]
          )
        end
        def list_event_definitions(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          include_properties: nil,
          # The maximum number of results to display per page.
          limit: nil,
          search_string: nil,
          sort_order: nil,
          request_options: {}
        )
        end

        sig do
          params(
            event_name: String,
            properties: T::Hash[Symbol, String],
            email: String,
            object_id_: String,
            occurred_at: Time,
            utk: String,
            uuid: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def send_event(
          # The event's fully qualified name. This value (formatted as `pe{HubID}_{name}`)
          # can be retrieved through the
          # [event definitions API](https://developers.hubspot.com/docs/reference/api/analytics-and-events/custom-events/custom-event-definitions#get-%2Fevents%2Fv3%2Fevent-definitions)
          # or in
          # [HubSpot's UI](https://knowledge.hubspot.com/reports/create-custom-behavioral-events-with-the-code-wizard#find-internal-name).
          event_name:,
          # The event properties to update. Takes the format of key-value pairs (property
          # internal name and property value). Learn more about
          # [HubSpot's default event properties](https://developers.hubspot.com/docs/guides/api/analytics-and-events/custom-events/custom-event-definitions#hubspot-s-default-event-properties).
          properties:,
          # The visitor's email address. Used for associating the event data with a CRM
          # record.
          email: nil,
          # The ID of the record for which the event occurred (e.g., contact ID or visitor
          # ID).
          object_id_: nil,
          # The time when this event occurred. If this isn't set, the current time will be
          # used.
          occurred_at: nil,
          # The visitor's usertoken. Used for associating the event data with a CRM record.
          utk: nil,
          # Include a universally unique identifier to assign a unique ID to the event
          # occurrence. Can be useful for matching data between HubSpot and other external
          # systems.
          uuid: nil,
          request_options: {}
        )
        end

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Events::BehavioralEventHTTPCompletionRequest::OrHash
              ],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def send_event_batch(inputs:, request_options: {})
        end

        sig do
          params(
            event_name: String,
            description: String,
            label: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Events::ExternalBehavioralEventTypeDefinition)
        end
        def update_event_definition(
          event_name,
          # A description of the event that will be shown as help text in HubSpot.
          description: nil,
          # Human readable label for the event. Used in HubSpot UI
          label: nil,
          request_options: {}
        )
        end

        sig do
          params(
            property_name: String,
            event_name: String,
            description: String,
            label: String,
            options: T::Array[HubspotSDK::Events::OptionInput::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Events::Property)
        end
        def update_event_definition_property(
          # Path param
          property_name,
          # Path param
          event_name:,
          # Body param: A description of the property that will be shown as help text in
          # HubSpot.
          description: nil,
          # Body param: Human readable label for the property. Used in HubSpot UI
          label: nil,
          # Body param: A list of available options for the property if it is an
          # enumeration. NOTE: This field is only applicable for enumerated properties.
          options: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
