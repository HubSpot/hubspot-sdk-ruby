# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Events
      class Send
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::SendCreateEventDefinitionParams} for more details.
        #
        # @overload create_event_definition(include_default_properties:, label:, property_definitions:, custom_matching_id: nil, description: nil, name: nil, primary_object: nil, request_options: {})
        #
        # @param include_default_properties [Boolean]
        #
        # @param label [String] Human readable label for the event for display in HubSpot's UI.
        #
        # @param property_definitions [Array<HubspotSDK::Models::Events::ExternalBehavioralEventPropertyCreate>] List of custom properties on event
        #
        # @param custom_matching_id [HubspotSDK::Models::Events::ExternalObjectResolutionMappingRequest]
        #
        # @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        # @param name [String] Internal event name, which must be used when referencing the event from the API.
        #
        # @param primary_object [String] The object type to associate this event to. Can be one of `CONTACT`, `COMPANY`,
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinition]
        #
        # @see HubspotSDK::Models::Events::SendCreateEventDefinitionParams
        def create_event_definition(params)
          parsed, options = HubspotSDK::Events::SendCreateEventDefinitionParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/custom/2026-03/event-definitions",
            body: parsed,
            model: HubspotSDK::Events::ExternalBehavioralEventTypeDefinition,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::SendCreateEventDefinitionPropertyParams} for more
        # details.
        #
        # @overload create_event_definition_property(event_name, label:, type:, description: nil, name: nil, options: nil, request_options: {})
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
        # @param options [Array<HubspotSDK::Models::Events::OptionInput>] A list of available options for the property if it is an enumeration. NOTE: This
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::Property]
        #
        # @see HubspotSDK::Models::Events::SendCreateEventDefinitionPropertyParams
        def create_event_definition_property(event_name, params)
          parsed, options = HubspotSDK::Events::SendCreateEventDefinitionPropertyParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["events/custom/2026-03/event-definitions/%1$s/property", event_name],
            body: parsed,
            model: HubspotSDK::Events::Property,
            options: options
          )
        end

        # @overload delete_event_definition(event_name, request_options: {})
        #
        # @param event_name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Events::SendDeleteEventDefinitionParams
        def delete_event_definition(event_name, params = {})
          @client.request(
            method: :delete,
            path: ["events/custom/2026-03/event-definitions/%1$s", event_name],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # @overload delete_event_definition_property(property_name, event_name:, request_options: {})
        #
        # @param property_name [String]
        # @param event_name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Events::SendDeleteEventDefinitionPropertyParams
        def delete_event_definition_property(property_name, params)
          parsed, options = HubspotSDK::Events::SendDeleteEventDefinitionPropertyParams.dump_request(params)
          event_name =
            parsed.delete(:event_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["events/custom/2026-03/event-definitions/%1$s/property/%2$s", event_name, property_name],
            model: NilClass,
            options: options
          )
        end

        # @overload get_event_definition(event_name, request_options: {})
        #
        # @param event_name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinition]
        #
        # @see HubspotSDK::Models::Events::SendGetEventDefinitionParams
        def get_event_definition(event_name, params = {})
          @client.request(
            method: :get,
            path: ["events/custom/2026-03/event-definitions/%1$s", event_name],
            model: HubspotSDK::Events::ExternalBehavioralEventTypeDefinition,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::SendListEventDefinitionsParams} for more details.
        #
        # @overload list_event_definitions(after: nil, include_properties: nil, limit: nil, search_string: nil, sort_order: nil, request_options: {})
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinition>]
        #
        # @see HubspotSDK::Models::Events::SendListEventDefinitionsParams
        def list_event_definitions(params = {})
          parsed, options = HubspotSDK::Events::SendListEventDefinitionsParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "events/custom/2026-03/event-definitions",
            query: query.transform_keys(
              include_properties: "includeProperties",
              search_string: "searchString",
              sort_order: "sortOrder"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Events::ExternalBehavioralEventTypeDefinition,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::SendSendEventParams} for more details.
        #
        # @overload send_event(event_name:, properties:, email: nil, object_id_: nil, occurred_at: nil, utk: nil, uuid: nil, request_options: {})
        #
        # @param event_name [String] The event's fully qualified name. This value (formatted as `pe{HubID}_{name}`) c
        #
        # @param properties [Hash{Symbol=>String}] The event properties to update. Takes the format of key-value pairs (property in
        #
        # @param email [String] The visitor's email address. Used for associating the event data with a CRM reco
        #
        # @param object_id_ [String] The ID of the record for which the event occurred (e.g., contact ID or visitor I
        #
        # @param occurred_at [Time] The time when this event occurred. If this isn't set, the current time will be u
        #
        # @param utk [String] The visitor's usertoken. Used for associating the event data with a CRM record.
        #
        # @param uuid [String] Include a universally unique identifier to assign a unique ID to the event occur
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Events::SendSendEventParams
        def send_event(params)
          parsed, options = HubspotSDK::Events::SendSendEventParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/custom/2026-03/send",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @overload send_event_batch(inputs:, request_options: {})
        #
        # @param inputs [Array<HubspotSDK::Models::Events::BehavioralEventHTTPCompletionRequest>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Events::SendSendEventBatchParams
        def send_event_batch(params)
          parsed, options = HubspotSDK::Events::SendSendEventBatchParams.dump_request(params)
          @client.request(
            method: :post,
            path: "events/custom/2026-03/send/batch",
            body: parsed,
            model: NilClass,
            options: options
          )
        end

        # @overload update_event_definition(event_name, description: nil, label: nil, request_options: {})
        #
        # @param event_name [String]
        #
        # @param description [String] A description of the event that will be shown as help text in HubSpot.
        #
        # @param label [String] Human readable label for the event. Used in HubSpot UI
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::ExternalBehavioralEventTypeDefinition]
        #
        # @see HubspotSDK::Models::Events::SendUpdateEventDefinitionParams
        def update_event_definition(event_name, params = {})
          parsed, options = HubspotSDK::Events::SendUpdateEventDefinitionParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["events/custom/2026-03/event-definitions/%1$s", event_name],
            body: parsed,
            model: HubspotSDK::Events::ExternalBehavioralEventTypeDefinition,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Events::SendUpdateEventDefinitionPropertyParams} for more
        # details.
        #
        # @overload update_event_definition_property(property_name, event_name:, description: nil, label: nil, options: nil, request_options: {})
        #
        # @param property_name [String] Path param
        #
        # @param event_name [String] Path param
        #
        # @param description [String] Body param: A description of the property that will be shown as help text in Hub
        #
        # @param label [String] Body param: Human readable label for the property. Used in HubSpot UI
        #
        # @param options [Array<HubspotSDK::Models::Events::OptionInput>] Body param: A list of available options for the property if it is an enumeration
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::Property]
        #
        # @see HubspotSDK::Models::Events::SendUpdateEventDefinitionPropertyParams
        def update_event_definition_property(property_name, params)
          parsed, options = HubspotSDK::Events::SendUpdateEventDefinitionPropertyParams.dump_request(params)
          event_name =
            parsed.delete(:event_name) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["events/custom/2026-03/event-definitions/%1$s/property/%2$s", event_name, property_name],
            body: parsed,
            model: HubspotSDK::Events::Property,
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
