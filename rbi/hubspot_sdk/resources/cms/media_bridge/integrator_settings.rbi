# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class MediaBridge
        class IntegratorSettings
          # Create a new media object type
          sig do
            params(
              app_id: String,
              media_types:
                T::Array[
                  HubspotSDK::Cms::IntegratorObjectCreationRequest::MediaType::OrSymbol
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::BulkIntegratorObjectCreationResponse)
          end
          def create_object_definition(
            app_id,
            media_types:,
            request_options: {}
          )
          end

          # Set up a new oEmbed domain for your media bridge app.
          sig do
            params(
              app_id: String,
              endpoints: HubspotSDK::Cms::Endpoints::OrHash,
              portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::IntegratorOEmbedDomainModel)
          end
          def create_oembed_domain(
            app_id,
            endpoints:,
            portal_id: nil,
            request_options: {}
          )
          end

          # Delete an existing oEmbed domain.
          sig do
            params(
              app_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_oembed_domain(app_id, request_options: {})
          end

          # Get the visibility settings for media bridge events for your apps.
          sig do
            params(
              app_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::EventVisibilityResponse)
          end
          def get_event_visibility_settings(app_id, request_options: {})
          end

          # Get the existing objects types that belong to the specified media type.
          sig do
            params(
              media_type: String,
              app_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::ObjectDefinitionResponse)
          end
          def get_object_definitions_by_media_type(
            media_type,
            app_id:,
            request_options: {}
          )
          end

          # Get the details for an existing oEmbed domain.
          sig do
            params(
              o_embed_domain_id: String,
              app_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::IntegratorOEmbedDomainModel)
          end
          def get_oembed_domain(o_embed_domain_id, app_id:, request_options: {})
          end

          # Get the details for existing oEmbed domains for your app
          sig do
            params(
              app_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::OEmbedDomainsCollectionResponse)
          end
          def list_oembed_domains(app_id, request_options: {})
          end

          # Register the name that your app will display when a user is selecting media
          # bridge items.
          sig do
            params(
              app_id: String,
              updated_at: Integer,
              name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::MediaBridgeProviderRegistrationResponse)
          end
          def register_app_name(
            app_id,
            updated_at:,
            name: nil,
            request_options: {}
          )
          end

          # Update the name that your app will display when a user is selecting media bridge
          # items.
          sig do
            params(
              app_id: String,
              updated_at: Integer,
              name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::MediaBridgeProviderRegistrationResponse)
          end
          def update_app_name(
            app_id,
            updated_at:,
            name: nil,
            request_options: {}
          )
          end

          # Set the visibility settings for media bridge events created by your app.
          sig do
            params(
              app_id: String,
              event_type:
                HubspotSDK::Cms::EventVisibilityChange::EventType::OrSymbol,
              updated_at: Integer,
              show_in_reporting: T::Boolean,
              show_in_timeline: T::Boolean,
              show_in_workflows: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::EventVisibilityChange)
          end
          def update_event_visibility_settings(
            app_id,
            event_type:,
            updated_at:,
            show_in_reporting: nil,
            show_in_timeline: nil,
            show_in_workflows: nil,
            request_options: {}
          )
          end

          # Update an existing oEmbed domain.
          sig do
            params(
              o_embed_domain_id: String,
              app_id: String,
              endpoints: HubspotSDK::Cms::Endpoints::OrHash,
              portal_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::IntegratorOEmbedDomainModel)
          end
          def update_oembed_domain(
            # Path param:
            o_embed_domain_id,
            # Path param:
            app_id:,
            # Body param:
            endpoints:,
            # Body param:
            portal_id: nil,
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
end
