# typed: strong

module HubSpotSDK
  module Resources
    class Events
      class Definitions
        # Create a custom event definition.
        sig do
          params(
            include_default_properties: T::Boolean,
            label: String,
            property_definitions:
              T::Array[
                HubSpotSDK::Events::ExternalBehavioralEventPropertyCreate::OrHash
              ],
            custom_matching_id:
              HubSpotSDK::Events::ExternalObjectResolutionMappingRequest::OrHash,
            description: String,
            name: String,
            primary_object: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition)
        end
        def create(
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

        # Update a specific custom event definition by name.
        sig do
          params(
            event_name: String,
            description: String,
            label: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition)
        end
        def update(
          event_name,
          # A description of the event that will be shown as help text in HubSpot.
          description: nil,
          # Human readable label for the event. Used in HubSpot UI
          label: nil,
          request_options: {}
        )
        end

        # Retrieve existing custom event definitions.
        sig do
          params(
            after: String,
            include_properties: T::Boolean,
            limit: Integer,
            search_string: String,
            sort_order: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(
            HubSpotSDK::Internal::Page[
              HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition
            ]
          )
        end
        def list(
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

        # Delete a custom event definition by name.
        sig do
          params(
            event_name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(event_name, request_options: {})
        end

        # Create a new property for an existing event definition.
        sig do
          params(
            event_name: String,
            label: String,
            type: String,
            description: String,
            name: String,
            options: T::Array[HubSpotSDK::OptionInput::OrHash],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Property)
        end
        def create_property(
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

        # Delete an existing property from a custom event definition.
        sig do
          params(
            property_name: String,
            event_name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_property(property_name, event_name:, request_options: {})
        end

        # Fetch a single custom event definition by name.
        sig do
          params(
            event_name: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition)
        end
        def get(event_name, request_options: {})
        end

        # Send multiple event occurrences at once.
        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::Events::BehavioralEventHTTPCompletionRequest::OrHash
              ],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def send_batch(inputs:, request_options: {})
        end

        # Update an existing property in a custom event definition.
        sig do
          params(
            property_name: String,
            event_name: String,
            description: String,
            label: String,
            options: T::Array[HubSpotSDK::OptionInput::OrHash],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Property)
        end
        def update_property(
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
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
