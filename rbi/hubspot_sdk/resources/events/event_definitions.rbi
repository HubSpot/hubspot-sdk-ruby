# typed: strong

module HubspotSDK
  module Resources
    class Events
      class EventDefinitions
        # Create a custom event definition.
        sig do
          params(
            label: String,
            property_definitions:
              T::Array[
                HubspotSDK::Events::EventDefinitionCreateParams::PropertyDefinition::OrHash
              ],
            description: String,
            name: String,
            primary_object: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Models::Events::EventDefinitionCreateResponse)
        end
        def create(
          # Human readable label for the event. Used in HubSpot UI
          label:,
          # List of custom properties on event
          property_definitions:,
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Models::Events::EventDefinitionUpdateResponse)
        end
        def update(
          # The internal name of the custom event.
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(
            HubspotSDK::Internal::Page[
              HubspotSDK::Models::Events::EventDefinitionListResponse
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
          # Characters in the event name that the user is searching for. This search is a
          # naive “contains” search, no fuzzy matching is done.
          search_string: nil,
          sort_order: nil,
          request_options: {}
        )
        end

        # Delete a custom event definition by name.
        sig do
          params(
            event_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # The name of the event definition.
          event_name,
          request_options: {}
        )
        end

        # Create a new property for an existing event definition.
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
        def create_property(
          # The internal name of the custom event.
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_property(
          # The internal name of the property to delete.
          property_name,
          # The internal name of the custom event.
          event_name:,
          request_options: {}
        )
        end

        # Fetch a single custom event definition by name.
        sig do
          params(
            event_name: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Models::Events::EventDefinitionGetResponse)
        end
        def get(
          # The internal name of the custom event.
          event_name,
          request_options: {}
        )
        end

        # Update an existing property in a custom event definition.
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
        def update_property(
          # Path param: The internal name of the property to update.
          property_name,
          # Path param: The internal name of the custom event.
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
