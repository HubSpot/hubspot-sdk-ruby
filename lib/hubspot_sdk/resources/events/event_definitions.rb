# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Events
      class EventDefinitions
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::EventDefinitionCreateParams} for more details.
        #
        # Create a custom event definition.
        #
        # @overload create(label:, property_definitions:, description: nil, name: nil, primary_object: nil, request_options: {})
        #
        # @param label [String] Human readable label for the event. Used in HubSpot UI
        #
        # @param property_definitions [Array<HubspotSDK::Models::Events::EventDefinitionCreateParams::PropertyDefinition>] List of custom properties on event
        #
        # @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        # @param name [String] Internal event name, which must be used when referencing the event from this eve
        #
        # @param primary_object [String] The object type to associate this event to. Can be one of CONTACT, COMPANY, DEAL
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::EventDefinitionCreateResponse]
        #
        # @see HubspotSDK::Models::Events::EventDefinitionCreateParams
        def create(params)
          parsed, options = HubspotSDK::Events::EventDefinitionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/v3/event-definitions",
            body: parsed,
            model: HubspotSDK::Models::Events::EventDefinitionCreateResponse,
            options: options
          )
        end

        # Update a specific custom event definition by name.
        #
        # @overload update(event_name, description: nil, label: nil, request_options: {})
        #
        # @param event_name [String] The internal name of the custom event.
        #
        # @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        # @param label [String] Human readable label for the event. Used in HubSpot UI
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::EventDefinitionUpdateResponse]
        #
        # @see HubspotSDK::Models::Events::EventDefinitionUpdateParams
        def update(event_name, params = {})
          parsed, options = HubspotSDK::Events::EventDefinitionUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["events/v3/event-definitions/%1$s", event_name],
            body: parsed,
            model: HubspotSDK::Models::Events::EventDefinitionUpdateResponse,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::EventDefinitionListParams} for more details.
        #
        # Retrieve existing custom event definitions.
        #
        # @overload list(after: nil, include_properties: nil, limit: nil, search_string: nil, sort_order: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param include_properties [Boolean]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param search_string [String] Characters in the event name that the user is searching for. This search is a na
        #
        # @param sort_order [String]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Events::EventDefinitionListResponse>]
        #
        # @see HubspotSDK::Models::Events::EventDefinitionListParams
        def list(params = {})
          parsed, options = HubspotSDK::Events::EventDefinitionListParams.dump_request(params)
          @client.request(
            method: :get,
            path: "events/v3/event-definitions",
            query: parsed.transform_keys(
              include_properties: "includeProperties",
              search_string: "searchString",
              sort_order: "sortOrder"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Models::Events::EventDefinitionListResponse,
            options: options
          )
        end

        # Delete a custom event definition by name.
        #
        # @overload delete(event_name, request_options: {})
        #
        # @param event_name [String] The name of the event definition.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Events::EventDefinitionDeleteParams
        def delete(event_name, params = {})
          @client.request(
            method: :delete,
            path: ["events/v3/event-definitions/%1$s", event_name],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::EventDefinitionCreatePropertyParams} for more
        # details.
        #
        # Create a new property for an existing event definition.
        #
        # @overload create_property(event_name, label:, type:, description: nil, name: nil, options: nil, request_options: {})
        #
        # @param event_name [String] The internal name of the custom event.
        #
        # @param label [String] Human readable label for the property. Used in HubSpot UI
        #
        # @param type [String] The data type of the property. Can be one of the following: [string, number, enu
        #
        # @param description [String] A description of the property that will be shown as help text in HubSpot.
        #
        # @param name [String] Internal property name, which must be used when referencing the property from th
        #
        # @param options [Array<HubspotSDK::Models::OptionInput>] A list of available options for the property if it is an enumeration. NOTE: This
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Property]
        #
        # @see HubspotSDK::Models::Events::EventDefinitionCreatePropertyParams
        def create_property(event_name, params)
          parsed, options = HubspotSDK::Events::EventDefinitionCreatePropertyParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["events/v3/event-definitions/%1$s/property", event_name],
            body: parsed,
            model: HubspotSDK::Property,
            options: options
          )
        end

        # Delete an existing property from a custom event definition.
        #
        # @overload delete_property(property_name, event_name:, request_options: {})
        #
        # @param property_name [String] The internal name of the property to delete.
        #
        # @param event_name [String] The internal name of the custom event.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Events::EventDefinitionDeletePropertyParams
        def delete_property(property_name, params)
          parsed, options = HubspotSDK::Events::EventDefinitionDeletePropertyParams.dump_request(params)
          event_name =
            parsed.delete(:event_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["events/v3/event-definitions/%1$s/property/%2$s", event_name, property_name],
            model: NilClass,
            options: options
          )
        end

        # Fetch a single custom event definition by name.
        #
        # @overload get(event_name, request_options: {})
        #
        # @param event_name [String] The internal name of the custom event.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::EventDefinitionGetResponse]
        #
        # @see HubspotSDK::Models::Events::EventDefinitionGetParams
        def get(event_name, params = {})
          @client.request(
            method: :get,
            path: ["events/v3/event-definitions/%1$s", event_name],
            model: HubspotSDK::Models::Events::EventDefinitionGetResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::EventDefinitionUpdatePropertyParams} for more
        # details.
        #
        # Update an existing property in a custom event definition.
        #
        # @overload update_property(property_name, event_name:, description: nil, label: nil, options: nil, request_options: {})
        #
        # @param property_name [String] Path param: The internal name of the property to update.
        #
        # @param event_name [String] Path param: The internal name of the custom event.
        #
        # @param description [String] Body param: A description of the property that will be shown as help text in Hub
        #
        # @param label [String] Body param: Human readable label for the property. Used in HubSpot UI
        #
        # @param options [Array<HubspotSDK::Models::OptionInput>] Body param: A list of available options for the property if it is an enumeration
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Property]
        #
        # @see HubspotSDK::Models::Events::EventDefinitionUpdatePropertyParams
        def update_property(property_name, params)
          parsed, options = HubspotSDK::Events::EventDefinitionUpdatePropertyParams.dump_request(params)
          event_name =
            parsed.delete(:event_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["events/v3/event-definitions/%1$s/property/%2$s", event_name, property_name],
            body: parsed,
            model: HubspotSDK::Property,
            options: options
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
