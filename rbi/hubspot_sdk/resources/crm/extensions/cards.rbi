# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class Cards
          # Defines a new card that will become active on an account when this app is
          # installed.
          sig do
            params(
              app_id: Integer,
              actions: HubspotSDK::Crm::Extensions::CardActions::OrHash,
              display_: HubspotSDK::Crm::Extensions::CardDisplayBody::OrHash,
              fetch: HubspotSDK::Crm::Extensions::CardFetchBody::OrHash,
              title: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::PublicCardResponse)
          end
          def create(
            # The ID of the target app.
            app_id,
            # Configuration for custom user actions on cards.
            actions:,
            # Configuration for displayed info on a card
            display_:,
            # Configuration for this card's data fetch request.
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
              actions: HubspotSDK::Crm::Extensions::CardActions::OrHash,
              display_: HubspotSDK::Crm::Extensions::CardDisplayBody::OrHash,
              fetch: HubspotSDK::Crm::Extensions::CardFetchBodyPatch::OrHash,
              title: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::PublicCardResponse)
          end
          def update(
            # Path param: The ID of the card to update.
            card_id,
            # Path param: The ID of the target app.
            app_id:,
            # Body param: Configuration for custom user actions on cards.
            actions: nil,
            # Body param: Configuration for displayed info on a card
            display_: nil,
            # Body param: Variant of CardFetchBody with fields as optional for patches
            fetch: nil,
            # Body param: The top-level title for this card. Displayed to users in the CRM UI.
            title: nil,
            request_options: {}
          )
          end

          # Returns a list of cards for a given app.
          sig do
            params(
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::PublicCardListResponse)
          end
          def list(
            # The ID of the target app.
            app_id,
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
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The ID of the card to delete.
            card_id,
            # The ID of the target app.
            app_id:,
            request_options: {}
          )
          end

          # Returns the definition for a card with the given ID.
          sig do
            params(
              card_id: String,
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::PublicCardResponse)
          end
          def get(
            # The ID of the target card.
            card_id,
            # The ID of the target app.
            app_id:,
            request_options: {}
          )
          end

          # Returns an example card detail response. This is the payload with displayed
          # details for a card that will be shown to a user. An app should send this in
          # response to the data fetch request.
          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse
            )
          end
          def get_sample_response(request_options: {})
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
