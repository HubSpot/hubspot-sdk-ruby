# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class IntegratorSettings
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams}
          # for more details.
          #
          # Create a new media object type
          #
          # @overload create_object_definition(app_id, media_types:, request_options: {})
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param media_types [Array<Symbol, HubspotSDK::Models::Cms::IntegratorObjectCreationRequest::MediaType>]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BulkIntegratorObjectCreationResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams
          def create_object_definition(app_id, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateObjectDefinitionParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/settings/object-definitions", app_id],
              body: parsed,
              model: HubspotSDK::Cms::BulkIntegratorObjectCreationResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams}
          # for more details.
          #
          # Set up a new oEmbed domain for your media bridge app.
          #
          # @overload create_oembed_domain(app_id, endpoints:, portal_id: nil, request_options: {})
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param endpoints [HubspotSDK::Models::Cms::Endpoints]
          #
          # @param portal_id [Integer]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::IntegratorOEmbedDomainModel]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams
          def create_oembed_domain(app_id, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingCreateOembedDomainParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/settings/oembed-domains", app_id],
              body: parsed,
              model: HubspotSDK::Cms::IntegratorOEmbedDomainModel,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingDeleteOembedDomainParams}
          # for more details.
          #
          # Delete an existing oEmbed domain.
          #
          # @overload delete_oembed_domain(app_id, id: nil, domain_portal_id: nil, request_options: {})
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param id [Integer] The ID of the oEmbed to delete.
          #
          # @param domain_portal_id [Integer] Filter response by Hub ID.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingDeleteOembedDomainParams
          def delete_oembed_domain(app_id, params = {})
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingDeleteOembedDomainParams.dump_request(params)
            @client.request(
              method: :delete,
              path: ["media-bridge/v1/%1$s/settings/oembed-domains", app_id],
              query: parsed.transform_keys(domain_portal_id: "domainPortalId"),
              model: NilClass,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetEventVisibilitySettingsParams}
          # for more details.
          #
          # Get the visibility settings for media bridge events for your apps.
          #
          # @overload get_event_visibility_settings(app_id, request_options: {})
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::EventVisibilityResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetEventVisibilitySettingsParams
          def get_event_visibility_settings(app_id, params = {})
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/settings/event-visibility", app_id],
              model: HubspotSDK::Cms::EventVisibilityResponse,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams}
          # for more details.
          #
          # Get the existing objects types that belong to the specified media type.
          #
          # @overload get_object_definitions_by_media_type(media_type, app_id:, include_full_definition: nil, request_options: {})
          #
          # @param media_type [Symbol, HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetObjectDefinitionsByMediaTypeParams::MediaType] Path param: The type of media that you want to get the object types for.
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param include_full_definition [Boolean] Query param: Include the full definition in the response.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::ObjectDefinitionResponse]
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
              query: parsed.transform_keys(include_full_definition: "includeFullDefinition"),
              model: HubspotSDK::Cms::ObjectDefinitionResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingGetOembedDomainParams}
          # for more details.
          #
          # Get the details for an existing oEmbed domain.
          #
          # @overload get_oembed_domain(o_embed_domain_id, app_id:, request_options: {})
          #
          # @param o_embed_domain_id [String] The ID for the oEmbed domain.
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::IntegratorOEmbedDomainModel]
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
              model: HubspotSDK::Cms::IntegratorOEmbedDomainModel,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsParams}
          # for more details.
          #
          # Get the details for existing oEmbed domains for your app
          #
          # @overload list_oembed_domains(app_id, domain_portal_id: nil, request_options: {})
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param domain_portal_id [Integer] Filter response by Hub ID.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::OEmbedDomainsCollectionResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingListOembedDomainsParams
          def list_oembed_domains(app_id, params = {})
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingListOembedDomainsParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["media-bridge/v1/%1$s/settings/oembed-domains", app_id],
              query: parsed.transform_keys(domain_portal_id: "domainPortalId"),
              model: HubspotSDK::Cms::OEmbedDomainsCollectionResponse,
              options: options
            )
          end

          # @deprecated
          #
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingRegisterAppNameParams}
          # for more details.
          #
          # Register the name that your app will display when a user is selecting media
          # bridge items.
          #
          # @overload register_app_name(app_id, updated_at:, name: nil, request_options: {})
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param updated_at [Integer]
          #
          # @param name [String]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridgeProviderRegistrationResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingRegisterAppNameParams
          def register_app_name(app_id, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingRegisterAppNameParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["media-bridge/v1/%1$s/settings/register", app_id],
              body: parsed,
              model: HubspotSDK::Cms::MediaBridgeProviderRegistrationResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateAppNameParams} for
          # more details.
          #
          # Update the name that your app will display when a user is selecting media bridge
          # items.
          #
          # @overload update_app_name(app_id, updated_at:, name: nil, request_options: {})
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param updated_at [Integer]
          #
          # @param name [String]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::MediaBridgeProviderRegistrationResponse]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateAppNameParams
          def update_app_name(app_id, params)
            parsed, options = HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateAppNameParams.dump_request(params)
            @client.request(
              method: :put,
              path: ["media-bridge/v1/%1$s/settings", app_id],
              body: parsed,
              model: HubspotSDK::Cms::MediaBridgeProviderRegistrationResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams}
          # for more details.
          #
          # Set the visibility settings for media bridge events created by your app.
          #
          # @overload update_event_visibility_settings(app_id, event_type:, updated_at:, show_in_reporting: nil, show_in_timeline: nil, show_in_workflows: nil, request_options: {})
          #
          # @param app_id [Integer] The appId for the media bridge app. It is possible to have multiple apps in your
          #
          # @param event_type [Symbol, HubspotSDK::Models::Cms::EventVisibilityChange::EventType]
          #
          # @param updated_at [Integer]
          #
          # @param show_in_reporting [Boolean]
          #
          # @param show_in_timeline [Boolean]
          #
          # @param show_in_workflows [Boolean]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::EventVisibilityChange]
          #
          # @see HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams
          def update_event_visibility_settings(app_id, params)
            parsed, options =
              HubspotSDK::Cms::MediaBridge::IntegratorSettingUpdateEventVisibilitySettingsParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["media-bridge/v1/%1$s/settings/event-visibility", app_id],
              body: parsed,
              model: HubspotSDK::Cms::EventVisibilityChange,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::MediaBridge::IntegratorSettingUpdateOembedDomainParams}
          # for more details.
          #
          # Update an existing oEmbed domain.
          #
          # @overload update_oembed_domain(o_embed_domain_id, app_id:, endpoints:, portal_id: nil, request_options: {})
          #
          # @param o_embed_domain_id [String] Path param: The ID of the domain to update.
          #
          # @param app_id [Integer] Path param: The appId for the media bridge app. It is possible to have multiple
          #
          # @param endpoints [HubspotSDK::Models::Cms::Endpoints] Body param
          #
          # @param portal_id [Integer] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::IntegratorOEmbedDomainModel]
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
              model: HubspotSDK::Cms::IntegratorOEmbedDomainModel,
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
