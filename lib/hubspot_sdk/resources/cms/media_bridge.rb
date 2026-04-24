# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Cms
      class MediaBridge
        # @return [HubSpotSDK::Resources::Cms::MediaBridge::Batch]
        attr_reader :batch

        # Create a new association definition for the specified object type.
        #
        # @overload create_association(object_type, app_id:, from_object_type_id:, to_object_type_id:, name: nil, request_options: {})
        #
        # @param object_type [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param from_object_type_id [String] Body param
        #
        # @param to_object_type_id [String] Body param
        #
        # @param name [String] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::BaseAssociationDefinition]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeCreateAssociationParams
        def create_association(object_type, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeCreateAssociationParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/schemas/%2$s/associations", app_id, object_type],
            body: parsed,
            model: HubSpotSDK::BaseAssociationDefinition,
            options: options
          )
        end

        # Create an event containing the viewers attention span details for the media.
        #
        # @overload create_attention_span_event(media_type:, occurred_timestamp:, raw_data_map:, session_id:, _hsenc: nil, contact_id: nil, contact_utk: nil, derived_values: nil, external_id: nil, external_play_context: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, raw_data_string: nil, request_options: {})
        #
        # @param media_type [Symbol, HubSpotSDK::Models::Cms::AttentionSpanEventRequest::MediaType]
        # @param occurred_timestamp [Integer]
        # @param raw_data_map [Hash{Symbol=>Integer}]
        # @param session_id [String]
        # @param _hsenc [String]
        # @param contact_id [Integer]
        # @param contact_utk [String]
        # @param derived_values [HubSpotSDK::Models::Cms::AttentionSpanCalculatedValues]
        # @param external_id [String]
        # @param external_play_context [Symbol, HubSpotSDK::Models::Cms::AttentionSpanEventRequest::ExternalPlayContext]
        # @param media_bridge_id [Integer]
        # @param media_name [String]
        # @param media_url [String]
        # @param page_id [Integer]
        # @param page_name [String]
        # @param page_url [String]
        # @param raw_data_string [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::AttentionSpanEvent]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeCreateAttentionSpanEventParams
        def create_attention_span_event(params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeCreateAttentionSpanEventParams.dump_request(params)
          @client.request(
            method: :post,
            path: "media-bridge/2026-03/events/attention-span",
            body: parsed,
            model: HubSpotSDK::Cms::AttentionSpanEvent,
            options: options
          )
        end

        # Create an event for when a user begins playing a piece of media.
        #
        # @overload create_media_played_event(media_type:, occurred_timestamp:, session_id:, state:, _hsenc: nil, contact_id: nil, contact_utk: nil, external_id: nil, external_play_context: nil, iframe_url: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, request_options: {})
        #
        # @param media_type [Symbol, HubSpotSDK::Models::Cms::MediaPlayedEventRequest::MediaType]
        # @param occurred_timestamp [Integer]
        # @param session_id [String]
        # @param state [Symbol, HubSpotSDK::Models::Cms::MediaPlayedEventRequest::State]
        # @param _hsenc [String]
        # @param contact_id [Integer]
        # @param contact_utk [String]
        # @param external_id [String]
        # @param external_play_context [Symbol, HubSpotSDK::Models::Cms::MediaPlayedEventRequest::ExternalPlayContext]
        # @param iframe_url [String]
        # @param media_bridge_id [Integer]
        # @param media_name [String]
        # @param media_url [String]
        # @param page_id [Integer]
        # @param page_name [String]
        # @param page_url [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::MediaPlayedEvent]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeCreateMediaPlayedEventParams
        def create_media_played_event(params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeCreateMediaPlayedEventParams.dump_request(params)
          @client.request(
            method: :post,
            path: "media-bridge/2026-03/events/media-played",
            body: parsed,
            model: HubSpotSDK::Cms::MediaPlayedEvent,
            options: options
          )
        end

        # Create an event representing a user reaching quarterly milestones in a piece of
        # media they're viewing.
        #
        # @overload create_media_played_percent_event(media_type:, occurred_timestamp:, played_percent:, session_id:, _hsenc: nil, contact_id: nil, contact_utk: nil, external_id: nil, external_play_context: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, request_options: {})
        #
        # @param media_type [Symbol, HubSpotSDK::Models::Cms::MediaPlayedPercentageEventRequest::MediaType]
        # @param occurred_timestamp [Integer]
        # @param played_percent [Integer]
        # @param session_id [String]
        # @param _hsenc [String]
        # @param contact_id [Integer]
        # @param contact_utk [String]
        # @param external_id [String]
        # @param external_play_context [Symbol, HubSpotSDK::Models::Cms::MediaPlayedPercentageEventRequest::ExternalPlayContext]
        # @param media_bridge_id [Integer]
        # @param media_name [String]
        # @param media_url [String]
        # @param page_id [Integer]
        # @param page_name [String]
        # @param page_url [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::MediaPlayedPercentageEvent]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeCreateMediaPlayedPercentEventParams
        def create_media_played_percent_event(params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeCreateMediaPlayedPercentEventParams.dump_request(params)
          @client.request(
            method: :post,
            path: "media-bridge/2026-03/events/media-played-percent",
            body: parsed,
            model: HubSpotSDK::Cms::MediaPlayedPercentageEvent,
            options: options
          )
        end

        # Create a new media object type
        #
        # @overload create_object_type(app_id, media_types:, request_options: {})
        #
        # @param app_id [Integer]
        # @param media_types [Array<Symbol, HubSpotSDK::Models::Cms::IntegratorObjectCreationRequest::MediaType>]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::BulkIntegratorObjectCreationResponse]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeCreateObjectTypeParams
        def create_object_type(app_id, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeCreateObjectTypeParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/settings/object-definitions", app_id],
            body: parsed,
            model: HubSpotSDK::Cms::BulkIntegratorObjectCreationResponse,
            options: options
          )
        end

        # Set up a new oEmbed domain for your media bridge app.
        #
        # @overload create_oembed_domain(app_id, endpoints:, portal_id: nil, request_options: {})
        #
        # @param app_id [Integer]
        # @param endpoints [HubSpotSDK::Models::Cms::Endpoints]
        # @param portal_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::IntegratorOEmbedDomainModel]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeCreateOembedDomainParams
        def create_oembed_domain(app_id, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeCreateOembedDomainParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/settings/oembed-domains", app_id],
            body: parsed,
            model: HubSpotSDK::Cms::IntegratorOEmbedDomainModel,
            options: options
          )
        end

        # Create a new property for the specified media type
        #
        # @overload create_property(object_type, app_id:, field_type:, group_name:, label:, name:, type:, calculation_formula: nil, currency_property_name: nil, data_sensitivity: nil, description: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, number_display_hint: nil, options: nil, referenced_object_type: nil, show_currency_symbol: nil, request_options: {})
        #
        # @param object_type [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param field_type [Symbol, HubSpotSDK::Models::PropertyCreate::FieldType] Body param
        #
        # @param group_name [String] Body param
        #
        # @param label [String] Body param
        #
        # @param name [String] Body param
        #
        # @param type [Symbol, HubSpotSDK::Models::PropertyCreate::Type] Body param
        #
        # @param calculation_formula [String] Body param
        #
        # @param currency_property_name [String] Body param
        #
        # @param data_sensitivity [Symbol, HubSpotSDK::Models::PropertyCreate::DataSensitivity] Body param
        #
        # @param description [String] Body param
        #
        # @param display_order [Integer] Body param
        #
        # @param external_options [Boolean] Body param
        #
        # @param form_field [Boolean] Body param
        #
        # @param has_unique_value [Boolean] Body param
        #
        # @param hidden [Boolean] Body param
        #
        # @param number_display_hint [Symbol, HubSpotSDK::Models::PropertyCreate::NumberDisplayHint] Body param
        #
        # @param options [Array<HubSpotSDK::Models::OptionInput>] Body param
        #
        # @param referenced_object_type [String] Body param
        #
        # @param show_currency_symbol [Boolean] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::MediaBridgeProperty]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeCreatePropertyParams
        def create_property(object_type, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeCreatePropertyParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s", app_id, object_type],
            body: parsed,
            model: HubSpotSDK::Cms::MediaBridgeProperty,
            options: options
          )
        end

        # Create a new property group for the specified object type.
        #
        # @overload create_property_group(object_type, app_id:, label:, name:, display_order: nil, request_options: {})
        #
        # @param object_type [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param label [String] Body param
        #
        # @param name [String] Body param
        #
        # @param display_order [Integer] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::PropertyGroup]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeCreatePropertyGroupParams
        def create_property_group(object_type, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeCreatePropertyGroupParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s/groups", app_id, object_type],
            body: parsed,
            model: HubSpotSDK::PropertyGroup,
            options: options
          )
        end

        # @overload create_video_association_definition(app_id, request_options: {})
        #
        # @param app_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::BaseAssociationDefinition]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeCreateVideoAssociationDefinitionParams
        def create_video_association_definition(app_id, params = {})
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/settings/video-association-definition", app_id],
            model: HubSpotSDK::BaseAssociationDefinition,
            options: params[:request_options]
          )
        end

        # Delete an existing association definition for an object type.
        #
        # @overload delete_association(association_id, app_id:, object_type:, request_options: {})
        #
        # @param association_id [String]
        # @param app_id [Integer]
        # @param object_type [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeDeleteAssociationParams
        def delete_association(association_id, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeDeleteAssociationParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: [
              "media-bridge/2026-03/%1$s/schemas/%2$s/associations/%3$s",
              app_id,
              object_type,
              association_id
            ],
            model: NilClass,
            options: options
          )
        end

        # Delete an existing oEmbed domain.
        #
        # @overload delete_oembed_domain(app_id, id: nil, domain_portal_id: nil, request_options: {})
        #
        # @param app_id [Integer]
        # @param id [Integer]
        # @param domain_portal_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeDeleteOembedDomainParams
        def delete_oembed_domain(app_id, params = {})
          parsed, options = HubSpotSDK::Cms::MediaBridgeDeleteOembedDomainParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :delete,
            path: ["media-bridge/2026-03/%1$s/settings/oembed-domains", app_id],
            query: query.transform_keys(domain_portal_id: "domainPortalId"),
            model: NilClass,
            options: options
          )
        end

        # Delete an existing property for an object type.
        #
        # @overload delete_property(property_name, app_id:, object_type:, request_options: {})
        #
        # @param property_name [String]
        # @param app_id [Integer]
        # @param object_type [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeDeletePropertyParams
        def delete_property(property_name, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeDeletePropertyParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s/%3$s", app_id, object_type, property_name],
            model: NilClass,
            options: options
          )
        end

        # Delete an existing property group by name
        #
        # @overload delete_property_group(group_name, app_id:, object_type:, request_options: {})
        #
        # @param group_name [String]
        # @param app_id [Integer]
        # @param object_type [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeDeletePropertyGroupParams
        def delete_property_group(group_name, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeDeletePropertyGroupParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s/groups/%3$s", app_id, object_type, group_name],
            model: NilClass,
            options: options
          )
        end

        # Get the visibility settings for media bridge events for your apps.
        #
        # @overload get_event_visibility_settings(app_id, request_options: {})
        #
        # @param app_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::EventVisibilityResponse]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeGetEventVisibilitySettingsParams
        def get_event_visibility_settings(app_id, params = {})
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/settings/event-visibility", app_id],
            model: HubSpotSDK::Cms::EventVisibilityResponse,
            options: params[:request_options]
          )
        end

        # Get the details for an existing oEmbed domain.
        #
        # @overload get_oembed_domain(o_embed_domain_id, app_id:, request_options: {})
        #
        # @param o_embed_domain_id [String]
        # @param app_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::IntegratorOEmbedDomainModel]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeGetOembedDomainParams
        def get_oembed_domain(o_embed_domain_id, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeGetOembedDomainParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/settings/oembed-domains/%2$s", app_id, o_embed_domain_id],
            model: HubSpotSDK::Cms::IntegratorOEmbedDomainModel,
            options: options
          )
        end

        # Get the details for an existing property by name.
        #
        # @overload get_property(property_name, app_id:, object_type:, archived: nil, properties: nil, request_options: {})
        #
        # @param property_name [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param object_type [String] Path param
        #
        # @param archived [Boolean] Query param: Whether to return only results that have been archived.
        #
        # @param properties [String] Query param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::MediaBridgeProperty]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeGetPropertyParams
        def get_property(property_name, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeGetPropertyParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s/%3$s", app_id, object_type, property_name],
            query: query,
            model: HubSpotSDK::Cms::MediaBridgeProperty,
            options: options
          )
        end

        # Get the details of an existing property group by name.
        #
        # @overload get_property_group(group_name, app_id:, object_type:, request_options: {})
        #
        # @param group_name [String]
        # @param app_id [Integer]
        # @param object_type [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::PropertyGroup]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeGetPropertyGroupParams
        def get_property_group(group_name, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeGetPropertyGroupParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s/groups/%3$s", app_id, object_type, group_name],
            model: HubSpotSDK::PropertyGroup,
            options: options
          )
        end

        # Get the schema for a specified object type.
        #
        # @overload get_schema(object_type, app_id:, request_options: {})
        #
        # @param object_type [String]
        # @param app_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::ObjectSchema]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeGetSchemaParams
        def get_schema(object_type, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeGetSchemaParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/schemas/%2$s", app_id, object_type],
            model: HubSpotSDK::Cms::ObjectSchema,
            options: options
          )
        end

        # Get the existing objects types that belong to the specified media type.
        #
        # @overload list_object_types_by_media_type(media_type, app_id:, include_full_definition: nil, request_options: {})
        #
        # @param media_type [Symbol, HubSpotSDK::Models::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param include_full_definition [Boolean] Query param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::ObjectDefinitionResponse]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeListObjectTypesByMediaTypeParams
        def list_object_types_by_media_type(media_type, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/settings/object-definitions/%2$s", app_id, media_type],
            query: query.transform_keys(include_full_definition: "includeFullDefinition"),
            model: HubSpotSDK::Cms::ObjectDefinitionResponse,
            options: options
          )
        end

        # Get the details for existing oEmbed domains for your app
        #
        # @overload list_oembed_domains(app_id, domain_portal_id: nil, request_options: {})
        #
        # @param app_id [Integer]
        # @param domain_portal_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::OEmbedDomainsCollectionResponse]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeListOembedDomainsParams
        def list_oembed_domains(app_id, params = {})
          parsed, options = HubSpotSDK::Cms::MediaBridgeListOembedDomainsParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/settings/oembed-domains", app_id],
            query: query.transform_keys(domain_portal_id: "domainPortalId"),
            model: HubSpotSDK::Cms::OEmbedDomainsCollectionResponse,
            options: options
          )
        end

        # Get the existing properties defined for a media object type.
        #
        # @overload list_properties(object_type, app_id:, archived: nil, properties: nil, request_options: {})
        #
        # @param object_type [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param archived [Boolean] Query param: Whether to return only results that have been archived.
        #
        # @param properties [String] Query param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::CollectionResponsePropertyNoPaging]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeListPropertiesParams
        def list_properties(object_type, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeListPropertiesParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s", app_id, object_type],
            query: query,
            model: HubSpotSDK::Cms::CollectionResponsePropertyNoPaging,
            options: options
          )
        end

        # Get the property groups for a specified object type.
        #
        # @overload list_property_groups(object_type, app_id:, request_options: {})
        #
        # @param object_type [String]
        # @param app_id [Integer]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::CollectionResponsePropertyGroupNoPaging]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeListPropertyGroupsParams
        def list_property_groups(object_type, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeListPropertyGroupsParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s/groups", app_id, object_type],
            model: HubSpotSDK::CollectionResponsePropertyGroupNoPaging,
            options: options
          )
        end

        # Get the schemas for all object types.
        #
        # @overload list_schemas(app_id, archived: nil, request_options: {})
        #
        # @param app_id [Integer]
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::CollectionResponseObjectSchemaNoPaging]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeListSchemasParams
        def list_schemas(app_id, params = {})
          parsed, options = HubSpotSDK::Cms::MediaBridgeListSchemasParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/schemas", app_id],
            query: query,
            model: HubSpotSDK::Cms::CollectionResponseObjectSchemaNoPaging,
            options: options
          )
        end

        # @deprecated
        #
        # Register the name that your app will display when a user is selecting media
        # bridge items.
        #
        # @overload register_app_name(app_id, updated_at:, allow_import_on_disconnect: nil, module_name: nil, name: nil, request_options: {})
        #
        # @param app_id [Integer]
        # @param updated_at [Integer]
        # @param allow_import_on_disconnect [Boolean]
        # @param module_name [String]
        # @param name [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::MediaBridgeProviderRegistrationResponse]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeRegisterAppNameParams
        def register_app_name(app_id, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeRegisterAppNameParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/settings/register", app_id],
            body: parsed,
            model: HubSpotSDK::Cms::MediaBridgeProviderRegistrationResponse,
            options: options
          )
        end

        # Set the visibility settings for media bridge events created by your app.
        #
        # @overload update_event_visibility_settings(app_id, event_type:, updated_at:, show_in_reporting: nil, show_in_timeline: nil, show_in_workflows: nil, request_options: {})
        #
        # @param app_id [Integer]
        # @param event_type [Symbol, HubSpotSDK::Models::Cms::EventVisibilityChange::EventType]
        # @param updated_at [Integer]
        # @param show_in_reporting [Boolean]
        # @param show_in_timeline [Boolean]
        # @param show_in_workflows [Boolean]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::EventVisibilityChange]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeUpdateEventVisibilitySettingsParams
        def update_event_visibility_settings(app_id, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeUpdateEventVisibilitySettingsParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["media-bridge/2026-03/%1$s/settings/event-visibility", app_id],
            body: parsed,
            model: HubSpotSDK::Cms::EventVisibilityChange,
            options: options
          )
        end

        # Update an existing oEmbed domain.
        #
        # @overload update_oembed_domain(o_embed_domain_id, app_id:, endpoints:, portal_id: nil, request_options: {})
        #
        # @param o_embed_domain_id [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param endpoints [HubSpotSDK::Models::Cms::Endpoints] Body param
        #
        # @param portal_id [Integer] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::IntegratorOEmbedDomainModel]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeUpdateOembedDomainParams
        def update_oembed_domain(o_embed_domain_id, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeUpdateOembedDomainParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["media-bridge/2026-03/%1$s/settings/oembed-domains/%2$s", app_id, o_embed_domain_id],
            body: parsed,
            model: HubSpotSDK::Cms::IntegratorOEmbedDomainModel,
            options: options
          )
        end

        # Update an existing property for an object type.
        #
        # @overload update_property(property_name, app_id:, object_type:, calculation_formula: nil, currency_property_name: nil, description: nil, display_order: nil, field_type: nil, form_field: nil, group_name: nil, has_unique_value: nil, hidden: nil, label: nil, number_display_hint: nil, options: nil, show_currency_symbol: nil, type: nil, request_options: {})
        #
        # @param property_name [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param object_type [String] Path param
        #
        # @param calculation_formula [String] Body param
        #
        # @param currency_property_name [String] Body param
        #
        # @param description [String] Body param
        #
        # @param display_order [Integer] Body param
        #
        # @param field_type [Symbol, HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate::FieldType] Body param
        #
        # @param form_field [Boolean] Body param
        #
        # @param group_name [String] Body param
        #
        # @param has_unique_value [Boolean] Body param
        #
        # @param hidden [Boolean] Body param
        #
        # @param label [String] Body param
        #
        # @param number_display_hint [Symbol, HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate::NumberDisplayHint] Body param
        #
        # @param options [Array<HubSpotSDK::Models::OptionInput>] Body param
        #
        # @param show_currency_symbol [Boolean] Body param
        #
        # @param type [Symbol, HubSpotSDK::Models::Cms::MediaBridgePropertyUpdate::Type] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::MediaBridgeProperty]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeUpdatePropertyParams
        def update_property(property_name, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeUpdatePropertyParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s/%3$s", app_id, object_type, property_name],
            body: parsed,
            model: HubSpotSDK::Cms::MediaBridgeProperty,
            options: options
          )
        end

        # Update an existing property group by name.
        #
        # @overload update_property_group(group_name, app_id:, object_type:, display_order: nil, label: nil, request_options: {})
        #
        # @param group_name [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param object_type [String] Path param
        #
        # @param display_order [Integer] Body param
        #
        # @param label [String] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::PropertyGroup]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeUpdatePropertyGroupParams
        def update_property_group(group_name, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeUpdatePropertyGroupParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          object_type =
            parsed.delete(:object_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s/groups/%3$s", app_id, object_type, group_name],
            body: parsed,
            model: HubSpotSDK::PropertyGroup,
            options: options
          )
        end

        # Update the schema for an existing object type
        #
        # @overload update_schema(object_type, app_id:, clear_description:, allows_sensitive_properties: nil, description: nil, labels: nil, primary_display_property: nil, required_properties: nil, restorable: nil, searchable_properties: nil, secondary_display_properties: nil, request_options: {})
        #
        # @param object_type [String] Path param
        #
        # @param app_id [Integer] Path param
        #
        # @param clear_description [Boolean] Body param
        #
        # @param allows_sensitive_properties [Boolean] Body param
        #
        # @param description [String] Body param
        #
        # @param labels [HubSpotSDK::Models::ObjectTypeDefinitionLabels] Body param
        #
        # @param primary_display_property [String] Body param
        #
        # @param required_properties [Array<String>] Body param
        #
        # @param restorable [Boolean] Body param
        #
        # @param searchable_properties [Array<String>] Body param
        #
        # @param secondary_display_properties [Array<String>] Body param
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::BaseObjectTypeDefinition]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeUpdateSchemaParams
        def update_schema(object_type, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeUpdateSchemaParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["media-bridge/2026-03/%1$s/schemas/%2$s", app_id, object_type],
            body: parsed,
            model: HubSpotSDK::BaseObjectTypeDefinition,
            options: options
          )
        end

        # Update the name that your app will display when a user is selecting media bridge
        # items.
        #
        # @overload update_settings(app_id, updated_at:, allow_import_on_disconnect: nil, module_name: nil, name: nil, request_options: {})
        #
        # @param app_id [Integer]
        # @param updated_at [Integer]
        # @param allow_import_on_disconnect [Boolean]
        # @param module_name [String]
        # @param name [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Cms::MediaBridgeProviderRegistrationResponse]
        #
        # @see HubSpotSDK::Models::Cms::MediaBridgeUpdateSettingsParams
        def update_settings(app_id, params)
          parsed, options = HubSpotSDK::Cms::MediaBridgeUpdateSettingsParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["media-bridge/2026-03/%1$s/settings", app_id],
            body: parsed,
            model: HubSpotSDK::Cms::MediaBridgeProviderRegistrationResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubSpotSDK::Resources::Cms::MediaBridge::Batch.new(client: client)
        end
      end
    end
  end
end
