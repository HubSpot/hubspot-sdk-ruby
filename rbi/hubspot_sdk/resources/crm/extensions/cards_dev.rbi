# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class CardsDev
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
            app_id,
            actions:,
            display_:,
            fetch:,
            # The top-level title for this card. Displayed to users in the CRM UI.
            title:,
            request_options: {}
          )
          end

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
            # Path param
            card_id,
            # Path param
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

          sig do
            params(
              card_id: String,
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(card_id, app_id:, request_options: {})
          end

          sig do
            params(
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::PublicCardListResponse)
          end
          def get(app_id, request_options: {})
          end

          sig do
            params(
              card_id: String,
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::PublicCardResponse)
          end
          def get_by_id(card_id, app_id:, request_options: {})
          end

          sig do
            params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
              HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse
            )
          end
          def get_sample_response(request_options: {})
          end

          sig do
            params(
              app_id: Integer,
              app_card_id: Integer,
              legacy_crm_card_id: Integer,
              helpdesk_app_card_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::CardMigrateViewsResponse)
          end
          def migrate_views(
            app_id,
            app_card_id:,
            legacy_crm_card_id:,
            helpdesk_app_card_id: nil,
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
