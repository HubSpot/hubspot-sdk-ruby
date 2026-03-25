# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        # @return [HubspotSDK::Resources::Cms::MediaBridge::Batch]
        attr_reader :batch

        # @overload create(create_mb_object_request:, request_options: {})
        #
        # @param create_mb_object_request [HubspotSDK::Models::Cms::CreateVideoObjectRequest, HubspotSDK::Models::Cms::CreateOtherObjectRequest, HubspotSDK::Models::Cms::CreateAudioObjectRequest, HubspotSDK::Models::Cms::CreateImageObjectRequest, HubspotSDK::Models::Cms::CreateDocumentObjectRequest]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::MediaBridgeObject]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeCreateParams
        def create(params)
          parsed, options = HubspotSDK::Cms::MediaBridgeCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "media-bridge/2026-03/objects",
            body: parsed[:create_mb_object_request],
            model: HubspotSDK::Cms::MediaBridgeObject,
            options: options
          )
        end

        # @overload update(object_id_, update_mb_object_request:, request_options: {})
        #
        # @param object_id_ [Integer]
        # @param update_mb_object_request [HubspotSDK::Models::Cms::UpdateVideoObjectRequest, HubspotSDK::Models::Cms::UpdateOtherObjectRequest, HubspotSDK::Models::Cms::UpdateAudioObjectRequest, HubspotSDK::Models::Cms::UpdateImageObjectRequest, HubspotSDK::Models::Cms::UpdateDocumentObjectRequest]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::MediaBridgeObject]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeUpdateParams
        def update(object_id_, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["media-bridge/2026-03/objects/%1$s", object_id_],
            body: parsed[:update_mb_object_request],
            model: HubspotSDK::Cms::MediaBridgeObject,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Cms::MediaBridgeListParams} for more details.
        #
        # @overload list(media_type, after: nil, limit: nil, request_options: {})
        #
        # @param media_type [Symbol, HubspotSDK::Models::Cms::MediaBridgeListParams::MediaType]
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::MediaBridgeObject>]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeListParams
        def list(media_type, params = {})
          parsed, options = HubspotSDK::Cms::MediaBridgeListParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/objects/%1$s", media_type],
            query: query,
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Cms::MediaBridgeObject,
            options: options
          )
        end

        # @overload delete(object_id_, media_type:, request_options: {})
        #
        # @param object_id_ [Integer]
        # @param media_type [Symbol, HubspotSDK::Models::Cms::MediaBridgeDeleteParams::MediaType]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeDeleteParams
        def delete(object_id_, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeDeleteParams.dump_request(params)
          media_type =
            parsed.delete(:media_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :delete,
            path: ["media-bridge/2026-03/objects/%1$s/%2$s", media_type, object_id_],
            model: NilClass,
            options: options
          )
        end

        # Create a new association definition for the specified object type.
        #
        # @overload create_association(object_type, app_id:, from_object_type_id:, to_object_type_id:, name: nil, request_options: {})
        #
        # @param object_type [String] Path param
        #
        # @param app_id [String] Path param
        #
        # @param from_object_type_id [String] Body param
        #
        # @param to_object_type_id [String] Body param
        #
        # @param name [String] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::AssociationDefinition]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeCreateAssociationParams
        def create_association(object_type, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeCreateAssociationParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/schemas/%2$s/associations", app_id, object_type],
            body: parsed,
            model: HubspotSDK::Events::AssociationDefinition,
            options: options
          )
        end

        # Create an event containing the viewers attention span details for the media.
        #
        # @overload create_attention_span_event(media_type:, occurred_timestamp:, raw_data_map:, session_id:, _hsenc: nil, contact_id: nil, contact_utk: nil, derived_values: nil, external_id: nil, external_play_context: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, raw_data_string: nil, request_options: {})
        #
        # @param media_type [Symbol, HubspotSDK::Models::Cms::AttentionSpanEventRequest::MediaType]
        # @param occurred_timestamp [Integer]
        # @param raw_data_map [Hash{Symbol=>Integer}]
        # @param session_id [String]
        # @param _hsenc [String]
        # @param contact_id [Integer]
        # @param contact_utk [String]
        # @param derived_values [HubspotSDK::Models::Cms::AttentionSpanCalculatedValues]
        # @param external_id [String]
        # @param external_play_context [Symbol, HubspotSDK::Models::Cms::AttentionSpanEventRequest::ExternalPlayContext]
        # @param media_bridge_id [Integer]
        # @param media_name [String]
        # @param media_url [String]
        # @param page_id [Integer]
        # @param page_name [String]
        # @param page_url [String]
        # @param raw_data_string [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeCreateAttentionSpanEventParams
        def create_attention_span_event(params)
          parsed, options = HubspotSDK::Cms::MediaBridgeCreateAttentionSpanEventParams.dump_request(params)
          @client.request(
            method: :post,
            path: "media-bridge/2026-03/events/attention-span",
            headers: {"accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Create an event for when a user begins playing a piece of media.
        #
        # @overload create_media_played_event(media_type:, occurred_timestamp:, session_id:, state:, _hsenc: nil, contact_id: nil, contact_utk: nil, external_id: nil, external_play_context: nil, iframe_url: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, request_options: {})
        #
        # @param media_type [Symbol, HubspotSDK::Models::Cms::MediaPlayedEventRequest::MediaType]
        # @param occurred_timestamp [Integer]
        # @param session_id [String]
        # @param state [Symbol, HubspotSDK::Models::Cms::MediaPlayedEventRequest::State]
        # @param _hsenc [String]
        # @param contact_id [Integer]
        # @param contact_utk [String]
        # @param external_id [String]
        # @param external_play_context [Symbol, HubspotSDK::Models::Cms::MediaPlayedEventRequest::ExternalPlayContext]
        # @param iframe_url [String]
        # @param media_bridge_id [Integer]
        # @param media_name [String]
        # @param media_url [String]
        # @param page_id [Integer]
        # @param page_name [String]
        # @param page_url [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeCreateMediaPlayedEventParams
        def create_media_played_event(params)
          parsed, options = HubspotSDK::Cms::MediaBridgeCreateMediaPlayedEventParams.dump_request(params)
          @client.request(
            method: :post,
            path: "media-bridge/2026-03/events/media-played",
            headers: {"accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Create an event representing a user reaching quarterly milestones in a piece of
        # media they're viewing.
        #
        # @overload create_media_played_percent_event(media_type:, occurred_timestamp:, played_percent:, session_id:, _hsenc: nil, contact_id: nil, contact_utk: nil, external_id: nil, external_play_context: nil, media_bridge_id: nil, media_name: nil, media_url: nil, page_id: nil, page_name: nil, page_url: nil, request_options: {})
        #
        # @param media_type [Symbol, HubspotSDK::Models::Cms::MediaPlayedPercentageEventRequest::MediaType]
        # @param occurred_timestamp [Integer]
        # @param played_percent [Integer]
        # @param session_id [String]
        # @param _hsenc [String]
        # @param contact_id [Integer]
        # @param contact_utk [String]
        # @param external_id [String]
        # @param external_play_context [Symbol, HubspotSDK::Models::Cms::MediaPlayedPercentageEventRequest::ExternalPlayContext]
        # @param media_bridge_id [Integer]
        # @param media_name [String]
        # @param media_url [String]
        # @param page_id [Integer]
        # @param page_name [String]
        # @param page_url [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [StringIO]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeCreateMediaPlayedPercentEventParams
        def create_media_played_percent_event(params)
          parsed, options = HubspotSDK::Cms::MediaBridgeCreateMediaPlayedPercentEventParams.dump_request(params)
          @client.request(
            method: :post,
            path: "media-bridge/2026-03/events/media-played-percent",
            headers: {"accept" => "*/*"},
            body: parsed,
            model: StringIO,
            options: options
          )
        end

        # Create a new media object type
        #
        # @overload create_object_type(app_id, media_types:, request_options: {})
        #
        # @param app_id [String]
        # @param media_types [Array<Symbol, HubspotSDK::Models::Cms::IntegratorObjectCreationRequest::MediaType>]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::BulkIntegratorObjectCreationResponse]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeCreateObjectTypeParams
        def create_object_type(app_id, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeCreateObjectTypeParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/settings/object-definitions", app_id],
            body: parsed,
            model: HubspotSDK::Cms::BulkIntegratorObjectCreationResponse,
            options: options
          )
        end

        # Set up a new oEmbed domain for your media bridge app.
        #
        # @overload create_oembed_domain(app_id, endpoints:, portal_id: nil, request_options: {})
        #
        # @param app_id [String]
        # @param endpoints [HubspotSDK::Models::Cms::Endpoints]
        # @param portal_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::IntegratorOEmbedDomainModel]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeCreateOembedDomainParams
        def create_oembed_domain(app_id, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeCreateOembedDomainParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/settings/oembed-domains", app_id],
            body: parsed,
            model: HubspotSDK::Cms::IntegratorOEmbedDomainModel,
            options: options
          )
        end

        # Create a new property for the specified media type
        #
        # @overload create_property(object_type, app_id:, field_type:, group_name:, label:, name:, type:, calculation_formula: nil, data_sensitivity: nil, description: nil, display_order: nil, external_options: nil, form_field: nil, has_unique_value: nil, hidden: nil, options: nil, referenced_object_type: nil, request_options: {})
        #
        # @param object_type [String] Path param
        #
        # @param app_id [String] Path param
        #
        # @param field_type [Symbol, HubspotSDK::Models::PropertyCreate::FieldType] Body param
        #
        # @param group_name [String] Body param
        #
        # @param label [String] Body param
        #
        # @param name [String] Body param
        #
        # @param type [Symbol, HubspotSDK::Models::PropertyCreate::Type] Body param
        #
        # @param calculation_formula [String] Body param
        #
        # @param data_sensitivity [Symbol, HubspotSDK::Models::PropertyCreate::DataSensitivity] Body param
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
        # @param options [Array<HubspotSDK::Models::OptionInput>] Body param
        #
        # @param referenced_object_type [String] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Property]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeCreatePropertyParams
        def create_property(object_type, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeCreatePropertyParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s", app_id, object_type],
            body: parsed,
            model: HubspotSDK::Property,
            options: options
          )
        end

        # Create a new property group for the specified object type.
        #
        # @overload create_property_group(object_type, app_id:, label:, name:, display_order: nil, request_options: {})
        #
        # @param object_type [String] Path param
        #
        # @param app_id [String] Path param
        #
        # @param label [String] Body param
        #
        # @param name [String] Body param
        #
        # @param display_order [Integer] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::PropertyGroup]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeCreatePropertyGroupParams
        def create_property_group(object_type, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeCreatePropertyGroupParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s/groups", app_id, object_type],
            body: parsed,
            model: HubspotSDK::PropertyGroup,
            options: options
          )
        end

        # @overload create_video_association_definition(app_id, request_options: {})
        #
        # @param app_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Events::AssociationDefinition]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeCreateVideoAssociationDefinitionParams
        def create_video_association_definition(app_id, params = {})
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/settings/video-association-definition", app_id],
            model: HubspotSDK::Events::AssociationDefinition,
            options: params[:request_options]
          )
        end

        # Delete an existing association definition for an object type.
        #
        # @overload delete_association(association_id, app_id:, object_type:, request_options: {})
        #
        # @param association_id [String]
        # @param app_id [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeDeleteAssociationParams
        def delete_association(association_id, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeDeleteAssociationParams.dump_request(params)
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
        # @param app_id [String]
        # @param id [Integer]
        # @param domain_portal_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeDeleteOembedDomainParams
        def delete_oembed_domain(app_id, params = {})
          parsed, options = HubspotSDK::Cms::MediaBridgeDeleteOembedDomainParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
        # @param app_id [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeDeletePropertyParams
        def delete_property(property_name, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeDeletePropertyParams.dump_request(params)
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
        # @param app_id [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeDeletePropertyGroupParams
        def delete_property_group(group_name, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeDeletePropertyGroupParams.dump_request(params)
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

        # @overload get(object_id_, media_type:, request_options: {})
        #
        # @param object_id_ [Integer]
        # @param media_type [Symbol, HubspotSDK::Models::Cms::MediaBridgeGetParams::MediaType]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::MediaBridgeObject]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeGetParams
        def get(object_id_, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeGetParams.dump_request(params)
          media_type =
            parsed.delete(:media_type) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/objects/%1$s/%2$s", media_type, object_id_],
            model: HubspotSDK::Cms::MediaBridgeObject,
            options: options
          )
        end

        # Get the visibility settings for media bridge events for your apps.
        #
        # @overload get_event_visibility_settings(app_id, request_options: {})
        #
        # @param app_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::EventVisibilityResponse]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeGetEventVisibilitySettingsParams
        def get_event_visibility_settings(app_id, params = {})
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/settings/event-visibility", app_id],
            model: HubspotSDK::Cms::EventVisibilityResponse,
            options: params[:request_options]
          )
        end

        # Get the details for an existing oEmbed domain.
        #
        # @overload get_oembed_domain(o_embed_domain_id, app_id:, request_options: {})
        #
        # @param o_embed_domain_id [String]
        # @param app_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::IntegratorOEmbedDomainModel]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeGetOembedDomainParams
        def get_oembed_domain(o_embed_domain_id, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeGetOembedDomainParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/settings/oembed-domains/%2$s", app_id, o_embed_domain_id],
            model: HubspotSDK::Cms::IntegratorOEmbedDomainModel,
            options: options
          )
        end

        # Get the details for an existing property by name.
        #
        # @overload get_property(property_name, app_id:, object_type:, archived: nil, properties: nil, request_options: {})
        #
        # @param property_name [String] Path param
        #
        # @param app_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param archived [Boolean] Query param: Whether to return only results that have been archived.
        #
        # @param properties [String] Query param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Property]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeGetPropertyParams
        def get_property(property_name, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeGetPropertyParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
            model: HubspotSDK::Property,
            options: options
          )
        end

        # Get the details of an existing property group by name.
        #
        # @overload get_property_group(group_name, app_id:, object_type:, request_options: {})
        #
        # @param group_name [String]
        # @param app_id [String]
        # @param object_type [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::PropertyGroup]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeGetPropertyGroupParams
        def get_property_group(group_name, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeGetPropertyGroupParams.dump_request(params)
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
            model: HubspotSDK::PropertyGroup,
            options: options
          )
        end

        # Get the schema for a specified object type.
        #
        # @overload get_schema(object_type, app_id:, request_options: {})
        #
        # @param object_type [String]
        # @param app_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::ObjectSchema]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeGetSchemaParams
        def get_schema(object_type, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeGetSchemaParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/schemas/%2$s", app_id, object_type],
            model: HubspotSDK::ObjectSchema,
            options: options
          )
        end

        # Get the existing objects types that belong to the specified media type.
        #
        # @overload list_object_types_by_media_type(media_type, app_id:, include_full_definition: nil, request_options: {})
        #
        # @param media_type [Symbol, HubspotSDK::Models::Cms::MediaBridgeListObjectTypesByMediaTypeParams::MediaType] Path param
        #
        # @param app_id [String] Path param
        #
        # @param include_full_definition [Boolean] Query param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::ObjectDefinitionResponse]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeListObjectTypesByMediaTypeParams
        def list_object_types_by_media_type(media_type, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeListObjectTypesByMediaTypeParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/settings/object-definitions/%2$s", app_id, media_type],
            query: query.transform_keys(include_full_definition: "includeFullDefinition"),
            model: HubspotSDK::Cms::ObjectDefinitionResponse,
            options: options
          )
        end

        # Get the details for existing oEmbed domains for your app
        #
        # @overload list_oembed_domains(app_id, domain_portal_id: nil, request_options: {})
        #
        # @param app_id [String]
        # @param domain_portal_id [Integer]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::OEmbedDomainsCollectionResponse]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeListOembedDomainsParams
        def list_oembed_domains(app_id, params = {})
          parsed, options = HubspotSDK::Cms::MediaBridgeListOembedDomainsParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/settings/oembed-domains", app_id],
            query: query.transform_keys(domain_portal_id: "domainPortalId"),
            model: HubspotSDK::Cms::OEmbedDomainsCollectionResponse,
            options: options
          )
        end

        # Get the existing properties defined for a media object type.
        #
        # @overload list_properties(object_type, app_id:, archived: nil, properties: nil, request_options: {})
        #
        # @param object_type [String] Path param
        #
        # @param app_id [String] Path param
        #
        # @param archived [Boolean] Query param: Whether to return only results that have been archived.
        #
        # @param properties [String] Query param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CollectionResponsePropertyNoPaging]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeListPropertiesParams
        def list_properties(object_type, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeListPropertiesParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s", app_id, object_type],
            query: query,
            model: HubspotSDK::CollectionResponsePropertyNoPaging,
            options: options
          )
        end

        # Get the property groups for a specified object type.
        #
        # @overload list_property_groups(object_type, app_id:, request_options: {})
        #
        # @param object_type [String]
        # @param app_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CollectionResponsePropertyGroupNoPaging]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeListPropertyGroupsParams
        def list_property_groups(object_type, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeListPropertyGroupsParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/properties/%2$s/groups", app_id, object_type],
            model: HubspotSDK::CollectionResponsePropertyGroupNoPaging,
            options: options
          )
        end

        # Get the schemas for all object types.
        #
        # @overload list_schemas(app_id, archived: nil, request_options: {})
        #
        # @param app_id [String]
        #
        # @param archived [Boolean] Whether to return only results that have been archived.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::CollectionResponseObjectSchemaNoPaging]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeListSchemasParams
        def list_schemas(app_id, params = {})
          parsed, options = HubspotSDK::Cms::MediaBridgeListSchemasParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["media-bridge/2026-03/%1$s/schemas", app_id],
            query: query,
            model: HubspotSDK::CollectionResponseObjectSchemaNoPaging,
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
        # @param app_id [String]
        # @param updated_at [Integer]
        # @param allow_import_on_disconnect [Boolean]
        # @param module_name [String]
        # @param name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::MediaBridgeProviderRegistrationResponse]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeRegisterAppNameParams
        def register_app_name(app_id, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeRegisterAppNameParams.dump_request(params)
          @client.request(
            method: :post,
            path: ["media-bridge/2026-03/%1$s/settings/register", app_id],
            body: parsed,
            model: HubspotSDK::Cms::MediaBridgeProviderRegistrationResponse,
            options: options
          )
        end

        # Set the visibility settings for media bridge events created by your app.
        #
        # @overload update_event_visibility_settings(app_id, event_type:, updated_at:, show_in_reporting: nil, show_in_timeline: nil, show_in_workflows: nil, request_options: {})
        #
        # @param app_id [String]
        # @param event_type [Symbol, HubspotSDK::Models::Cms::EventVisibilityChange::EventType]
        # @param updated_at [Integer]
        # @param show_in_reporting [Boolean]
        # @param show_in_timeline [Boolean]
        # @param show_in_workflows [Boolean]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::EventVisibilityChange]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeUpdateEventVisibilitySettingsParams
        def update_event_visibility_settings(app_id, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeUpdateEventVisibilitySettingsParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["media-bridge/2026-03/%1$s/settings/event-visibility", app_id],
            body: parsed,
            model: HubspotSDK::Cms::EventVisibilityChange,
            options: options
          )
        end

        # Update an existing oEmbed domain.
        #
        # @overload update_oembed_domain(o_embed_domain_id, app_id:, endpoints:, portal_id: nil, request_options: {})
        #
        # @param o_embed_domain_id [String] Path param
        #
        # @param app_id [String] Path param
        #
        # @param endpoints [HubspotSDK::Models::Cms::Endpoints] Body param
        #
        # @param portal_id [Integer] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::IntegratorOEmbedDomainModel]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeUpdateOembedDomainParams
        def update_oembed_domain(o_embed_domain_id, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeUpdateOembedDomainParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["media-bridge/2026-03/%1$s/settings/oembed-domains/%2$s", app_id, o_embed_domain_id],
            body: parsed,
            model: HubspotSDK::Cms::IntegratorOEmbedDomainModel,
            options: options
          )
        end

        # Update an existing property for an object type.
        #
        # @overload update_property(property_name, app_id:, object_type:, calculation_formula: nil, description: nil, display_order: nil, field_type: nil, form_field: nil, group_name: nil, has_unique_value: nil, hidden: nil, label: nil, options: nil, type: nil, request_options: {})
        #
        # @param property_name [String] Path param
        #
        # @param app_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param calculation_formula [String] Body param
        #
        # @param description [String] Body param
        #
        # @param display_order [Integer] Body param
        #
        # @param field_type [Symbol, HubspotSDK::Models::Cms::MediaBridgePropertyUpdate::FieldType] Body param
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
        # @param options [Array<HubspotSDK::Models::OptionInput>] Body param
        #
        # @param type [Symbol, HubspotSDK::Models::Cms::MediaBridgePropertyUpdate::Type] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Property]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeUpdatePropertyParams
        def update_property(property_name, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeUpdatePropertyParams.dump_request(params)
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
            model: HubspotSDK::Property,
            options: options
          )
        end

        # Update an existing property group by name.
        #
        # @overload update_property_group(group_name, app_id:, object_type:, display_order: nil, label: nil, request_options: {})
        #
        # @param group_name [String] Path param
        #
        # @param app_id [String] Path param
        #
        # @param object_type [String] Path param
        #
        # @param display_order [Integer] Body param
        #
        # @param label [String] Body param
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::PropertyGroup]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeUpdatePropertyGroupParams
        def update_property_group(group_name, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeUpdatePropertyGroupParams.dump_request(params)
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
            model: HubspotSDK::PropertyGroup,
            options: options
          )
        end

        # Update the schema for an existing object type
        #
        # @overload update_schema(object_type, app_id:, clear_description:, allows_sensitive_properties: nil, description: nil, labels: nil, primary_display_property: nil, required_properties: nil, restorable: nil, searchable_properties: nil, secondary_display_properties: nil, request_options: {})
        #
        # @param object_type [String] Path param
        #
        # @param app_id [String] Path param
        #
        # @param clear_description [Boolean] Body param
        #
        # @param allows_sensitive_properties [Boolean] Body param
        #
        # @param description [String] Body param
        #
        # @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels] Body param
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::ObjectTypeDefinition]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeUpdateSchemaParams
        def update_schema(object_type, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeUpdateSchemaParams.dump_request(params)
          app_id =
            parsed.delete(:app_id) do
              raise ArgumentError.new("missing required path argument #{_1}")
            end
          @client.request(
            method: :patch,
            path: ["media-bridge/2026-03/%1$s/schemas/%2$s", app_id, object_type],
            body: parsed,
            model: HubspotSDK::ObjectTypeDefinition,
            options: options
          )
        end

        # Update the name that your app will display when a user is selecting media bridge
        # items.
        #
        # @overload update_settings(app_id, updated_at:, allow_import_on_disconnect: nil, module_name: nil, name: nil, request_options: {})
        #
        # @param app_id [String]
        # @param updated_at [Integer]
        # @param allow_import_on_disconnect [Boolean]
        # @param module_name [String]
        # @param name [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Cms::MediaBridgeProviderRegistrationResponse]
        #
        # @see HubspotSDK::Models::Cms::MediaBridgeUpdateSettingsParams
        def update_settings(app_id, params)
          parsed, options = HubspotSDK::Cms::MediaBridgeUpdateSettingsParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["media-bridge/2026-03/%1$s/settings", app_id],
            body: parsed,
            model: HubspotSDK::Cms::MediaBridgeProviderRegistrationResponse,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @batch = HubspotSDK::Resources::Cms::MediaBridge::Batch.new(client: client)
        end
      end
    end
  end
end
