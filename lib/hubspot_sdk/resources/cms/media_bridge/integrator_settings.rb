# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class IntegratorSettings
          # Create a new media object type
          #
          # @overload create_object_definition(app_id, media_types:, request_options: {})
          #
          # @param app_id [String]
          # @param media_types [Array<Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams::MediaType>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams
          def create_object_definition(app_id, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/settings/object-definitions", app_id],
              body: parsed,
              model: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionResponse,
              options: options
            )
          end

          # Set up a new oEmbed domain for your media bridge app.
          #
          # @overload create_oembed_domain(app_id, endpoints:, portal_id: nil, request_options: {})
          #
          # @param app_id [String]
          # @param endpoints [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams::Endpoints]
          # @param portal_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateOembedDomainResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams
          def create_oembed_domain(app_id, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/settings/oembed-domains", app_id],
              body: parsed,
              model: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateOembedDomainResponse,
              options: options
            )
          end

          # Delete an existing oEmbed domain.
          #
          # @overload delete_oembed_domain(app_id, request_options: {})
          #
          # @param app_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingDeleteOembedDomainParams
          def delete_oembed_domain(app_id, params = {})
            @client.request(
              method: :delete,
              path: ["media-bridge/v1/%1$s/settings/oembed-domains", app_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Get the visibility settings for media bridge events for your apps.
          #
          # @overload get_event_visibility_settings(app_id, request_options: {})
          #
          # @param app_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetEventVisibilitySettingsResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetEventVisibilitySettingsParams
          def get_event_visibility_settings(app_id, params = {})
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/settings/event-visibility", app_id],
              model: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetEventVisibilitySettingsResponse,
              options: params[:request_options]
            )
          end

          # Get the existing objects types that belong to the specified media type.
          #
          # @overload get_object_definitions_by_media_type(media_type, app_id:, request_options: {})
          #
          # @param media_type [String]
          # @param app_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams
          def get_object_definitions_by_media_type(media_type, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/settings/object-definitions/%2$s", app_id, media_type],
              model: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeResponse,
              options: options
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
          # @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetOembedDomainResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetOembedDomainParams
          def get_oembed_domain(o_embed_domain_id, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingGetOembedDomainParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/settings/oembed-domains/%2$s", app_id, o_embed_domain_id],
              model: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetOembedDomainResponse,
              options: options
            )
          end

          # Get the details for existing oEmbed domains for your app
          #
          # @overload list_oembed_domains(app_id, request_options: {})
          #
          # @param app_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsParams
          def list_oembed_domains(app_id, params = {})
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/settings/oembed-domains", app_id],
              model: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsResponse,
              options: params[:request_options]
            )
          end

          # @deprecated
          #
          # Register the name that your app will display when a user is selecting media
          # bridge items.
          #
          # @overload register_app_name(app_id, updated_at:, name: nil, request_options: {})
          #
          # @param app_id [String]
          # @param updated_at [Integer]
          # @param name [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingRegisterAppNameResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingRegisterAppNameParams
          def register_app_name(app_id, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingRegisterAppNameParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/settings/register", app_id],
              body: parsed,
              model: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingRegisterAppNameResponse,
              options: options
            )
          end

          # Update the name that your app will display when a user is selecting media bridge
          # items.
          #
          # @overload update_app_name(app_id, updated_at:, name: nil, request_options: {})
          #
          # @param app_id [String]
          # @param updated_at [Integer]
          # @param name [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateAppNameResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateAppNameParams
          def update_app_name(app_id, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateAppNameParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["media-bridge/v1/%1$s/settings", app_id],
              body: parsed,
              model: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateAppNameResponse,
              options: options
            )
          end

          # Set the visibility settings for media bridge events created by your app.
          #
          # @overload update_event_visibility_settings(app_id, event_type:, updated_at:, show_in_reporting: nil, show_in_timeline: nil, show_in_workflows: nil, request_options: {})
          #
          # @param app_id [String]
          # @param event_type [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams::EventType]
          # @param updated_at [Integer]
          # @param show_in_reporting [Boolean]
          # @param show_in_timeline [Boolean]
          # @param show_in_workflows [Boolean]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams
          def update_event_visibility_settings(app_id, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["media-bridge/v1/%1$s/settings/event-visibility", app_id],
              body: parsed,
              model: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsResponse,
              options: options
            )
          end

          # Update an existing oEmbed domain.
          #
          # @overload update_oembed_domain(o_embed_domain_id, app_id:, endpoints:, portal_id: nil, request_options: {})
          #
          # @param o_embed_domain_id [String] Path param:
          #
          # @param app_id [String] Path param:
          #
          # @param endpoints [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainParams::Endpoints] Body param:
          #
          # @param portal_id [Integer] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainParams
          def update_oembed_domain(o_embed_domain_id, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["media-bridge/v1/%1$s/settings/oembed-domains/%2$s", app_id, o_embed_domain_id],
              body: parsed,
              model: HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainResponse,
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
end
