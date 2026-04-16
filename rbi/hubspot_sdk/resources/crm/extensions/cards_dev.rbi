# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Extensions
        class CardsDev
          # Defines a new card that will become active on an account when this app is
          # installed.
          sig do
            params(
              app_id: Integer,
              actions: HubSpotSDK::Crm::Extensions::CardActions::OrHash,
              display_: HubSpotSDK::Crm::Extensions::CardDisplayBody::OrHash,
              fetch: HubSpotSDK::Crm::Extensions::CardFetchBody::OrHash,
              title: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::PublicCardResponse)
          end
          def create(
            # The appId of the app containing the Legacy CRM Card(s)
            app_id,
            actions:,
            display_:,
            fetch:,
            # The top-level title for this card. Displayed to users in the CRM UI.
            title:,
            request_options: {}
          )
          end

          # Update a card definition with new details.
          sig do
            params(
              card_id: String,
              app_id: Integer,
              actions: HubSpotSDK::Crm::Extensions::CardActions::OrHash,
              display_: HubSpotSDK::Crm::Extensions::CardDisplayBody::OrHash,
              fetch: HubSpotSDK::Crm::Extensions::CardFetchBodyPatch::OrHash,
              title: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::PublicCardResponse)
          end
          def update(
            # Path param
            card_id,
            # Path param: The appId of the app containing the Legacy CRM Card(s)
            app_id:,
            # Body param
            actions: nil,
            # Body param
            display_: nil,
            # Body param
            fetch: nil,
            # Body param: The top-level title for this card. Displayed to users in the CRM UI.
            title: nil,
            request_options: {}
          )
          end

          # Permanently deletes a card definition with the given ID. Once deleted, data
          # fetch requests for this card will no longer be sent to your service. This can't
          # be undone.
          sig do
            params(
              card_id: String,
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            card_id,
            # The appId of the app containing the Legacy CRM Card(s)
            app_id:,
            request_options: {}
          )
          end

          # Returns a list of cards for a given app.
          sig do
            params(
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::PublicCardListResponse)
          end
          def get(
            # The appId of the app containing the Legacy CRM Card(s)
            app_id,
            request_options: {}
          )
          end

          # Returns the definition for a card with the given ID.
          sig do
            params(
              card_id: String,
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::PublicCardResponse)
          end
          def get_by_id(
            card_id,
            # The appId of the app containing the Legacy CRM Card(s)
            app_id:,
            request_options: {}
          )
          end

          # Returns an example card detail response. This is the payload with displayed
          # details for a card that will be shown to a user. An app should send this in
          # response to the data fetch request.
          sig do
            params(request_options: HubSpotSDK::RequestOptions::OrHash).returns(
              HubSpotSDK::Crm::Extensions::IntegratorCardPayloadResponse
            )
          end
          def get_sample_response(request_options: {})
          end

          sig do
            params(
              app_id: Integer,
              allow_duplicate_app_card_ids: T::Boolean,
              app_card_id: Integer,
              legacy_crm_card_id: Integer,
              helpdesk_app_card_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::CardMigrateViewsResponse)
          end
          def migrate_views(
            # The appId of the app containing the Legacy CRM Card(s)
            app_id,
            allow_duplicate_app_card_ids:,
            app_card_id:,
            legacy_crm_card_id:,
            helpdesk_app_card_id: nil,
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
end
