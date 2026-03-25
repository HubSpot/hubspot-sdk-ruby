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
          # Human readable label for the event. Used in HubSpot UI
          label:,
          # List of custom properties on event
          property_definitions:,
          custom_matching_id: nil,
          # A description of the event that will be shown as help text in HubSpot.
          description: nil,
          # Internal event name, which must be used when referencing the event from this
          # event definitions API. If a name is not supplied, one will be generated based on
          # the label. The `name` value will also be used to automatically generate a
          # `fullyQualifiedName` for the event definition, which you'll use when sending
          # event completions to this event.
          name: nil,
          # The object type to associate this event to. Can be one of CONTACT, COMPANY,
          # DEAL, TICKET. If no primaryObject is supplied, we will default to associating
          # the event to CONTACT objects.
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
            options: T::Array[HubspotSDK::OptionInput::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Property)
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
          # Internal name of the event-type to trigger
          event_name:,
          # Map of properties for the event in the format property internal name - property
          # value
          properties:,
          # Email of visitor
          email: nil,
          # The object id that this event occurred on. Could be a contact id or a visitor
          # id.
          object_id_: nil,
          # The time when this event occurred (if any). If this isn't set, the current time
          # will be used
          occurred_at: nil,
          # User token
          utk: nil,
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
            options: T::Array[HubspotSDK::OptionInput::OrHash],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Property)
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
