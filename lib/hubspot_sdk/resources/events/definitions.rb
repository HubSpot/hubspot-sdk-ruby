# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Events
      class Definitions
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Events::DefinitionCreateParams} for more details.
        #
        # Create a custom event definition.
        #
        # @overload create(include_default_properties:, label:, property_definitions:, custom_matching_id: nil, description: nil, name: nil, primary_object: nil, request_options: {})
        #
        # @param include_default_properties [Boolean]
        #
        # @param label [String] Human readable label for the event. Used in HubSpot UI
        #
        # @param property_definitions [Array<HubSpotSDK::Models::Events::ExternalBehavioralEventPropertyCreate>] List of custom properties on event
        #
        # @param custom_matching_id [HubSpotSDK::Models::Events::ExternalObjectResolutionMappingRequest]
        #
        # @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        # @param name [String] Internal event name, which must be used when referencing the event from this eve
        #
        # @param primary_object [String] The object type to associate this event to. Can be one of CONTACT, COMPANY, DEAL
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Events::ExternalBehavioralEventTypeDefinition]
        #
        # @see HubSpotSDK::Models::Events::DefinitionCreateParams
        def create(params)
          parsed, options = HubSpotSDK::Events::DefinitionCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/2026-03/event-definitions",
            body: parsed,
            model: HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition,
            options: options
          )
        end

        # Update a specific custom event definition by name.
        #
        # @overload update(event_name, description: nil, label: nil, request_options: {})
        #
        # @param event_name [String]
        #
        # @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        # @param label [String] Human readable label for the event. Used in HubSpot UI
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Events::ExternalBehavioralEventTypeDefinition]
        #
        # @see HubSpotSDK::Models::Events::DefinitionUpdateParams
        def update(event_name, params = {})
          parsed, options = HubSpotSDK::Events::DefinitionUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["events/2026-03/event-definitions/%1$s", event_name],
            body: parsed,
            model: HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Events::DefinitionListParams} for more details.
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
        # @param search_string [String]
        #
        # @param sort_order [String]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Events::ExternalBehavioralEventTypeDefinition>]
        #
        # @see HubSpotSDK::Models::Events::DefinitionListParams
        def list(params = {})
          parsed, options = HubSpotSDK::Events::DefinitionListParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "events/2026-03/event-definitions",
            query: query.transform_keys(
              include_properties: "includeProperties",
              search_string: "searchString",
              sort_order: "sortOrder"
            ),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition,
            options: options
          )
        end

        # Delete a custom event definition by name.
        #
        # @overload delete(event_name, request_options: {})
        #
        # @param event_name [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Events::DefinitionDeleteParams
        def delete(event_name, params = {})
          @client.request(
            method: :delete,
            path: ["events/2026-03/event-definitions/%1$s", event_name],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Events::DefinitionCreatePropertyParams} for more details.
        #
        # Create a new property for an existing event definition.
        #
        # @overload create_property(event_name, label:, type:, description: nil, name: nil, options: nil, request_options: {})
        #
        # @param event_name [String]
        #
        # @param label [String] Human readable label for the property. Used in HubSpot UI
        #
        # @param type [String] The data type of the property. Can be one of the following: [string, number, enu
        #
        # @param description [String] A description of the property that will be shown as help text in HubSpot.
        #
        # @param name [String] Internal property name, which must be used when referencing the property from th
        #
        # @param options [Array<HubSpotSDK::Models::OptionInput>] A list of available options for the property if it is an enumeration. NOTE: This
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Property]
        #
        # @see HubSpotSDK::Models::Events::DefinitionCreatePropertyParams
        def create_property(event_name, params)
          parsed, options = HubSpotSDK::Events::DefinitionCreatePropertyParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["events/2026-03/event-definitions/%1$s/property", event_name],
            body: parsed,
            model: HubSpotSDK::Property,
            options: options
          )
        end

        # Delete an existing property from a custom event definition.
        #
        # @overload delete_property(property_name, event_name:, request_options: {})
        #
        # @param property_name [String]
        # @param event_name [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Events::DefinitionDeletePropertyParams
        def delete_property(property_name, params)
          parsed, options = HubSpotSDK::Events::DefinitionDeletePropertyParams.dump_request(params)
          event_name =
            parsed.delete(:event_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["events/2026-03/event-definitions/%1$s/property/%2$s", event_name, property_name],
            model: NilClass,
            options: options
          )
        end

        # Fetch a single custom event definition by name.
        #
        # @overload get(event_name, request_options: {})
        #
        # @param event_name [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Events::ExternalBehavioralEventTypeDefinition]
        #
        # @see HubSpotSDK::Models::Events::DefinitionGetParams
        def get(event_name, params = {})
          @client.request(
            method: :get,
            path: ["events/2026-03/event-definitions/%1$s", event_name],
            model: HubSpotSDK::Events::ExternalBehavioralEventTypeDefinition,
            options: params[:request_options]
          )
        end

        # Send multiple event occurrences at once.
        #
        # @overload send_batch(inputs:, request_options: {})
        #
        # @param inputs [Array<HubSpotSDK::Models::Events::BehavioralEventHTTPCompletionRequest>]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Events::DefinitionSendBatchParams
        def send_batch(params)
          parsed, options = HubSpotSDK::Events::DefinitionSendBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/2026-03/send/batch",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Events::DefinitionUpdatePropertyParams} for more details.
        #
        # Update an existing property in a custom event definition.
        #
        # @overload update_property(property_name, event_name:, description: nil, label: nil, options: nil, request_options: {})
        #
        # @param property_name [String] Path param
        #
        # @param event_name [String] Path param
        #
        # @param description [String] Body param: A description of the property that will be shown as help text in Hub
        #
        # @param label [String] Body param: Human readable label for the property. Used in HubSpot UI
        #
        # @param options [Array<HubSpotSDK::Models::OptionInput>] Body param: A list of available options for the property if it is an enumeration
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Property]
        #
        # @see HubSpotSDK::Models::Events::DefinitionUpdatePropertyParams
        def update_property(property_name, params)
          parsed, options = HubSpotSDK::Events::DefinitionUpdatePropertyParams.dump_request(params)
          event_name =
            parsed.delete(:event_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["events/2026-03/event-definitions/%1$s/property/%2$s", event_name, property_name],
            body: parsed,
            model: HubSpotSDK::Property,
            options: options
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
