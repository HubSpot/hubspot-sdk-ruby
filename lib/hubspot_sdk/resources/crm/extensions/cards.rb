# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Cards
          # Defines a new card that will become active on an account when this app is
          # installed.
          #
          # @overload create(app_id, actions:, display_:, fetch:, title:, request_options: {})
          #
          # @param app_id [Integer] The ID of the target app.
          #
          # @param actions [HubspotSDK::Models::CRM::Extensions::CardActions] Configuration for custom user actions on cards.
          #
          # @param display_ [HubspotSDK::Models::CRM::Extensions::CardDisplayBody] Configuration for displayed info on a card
          #
          # @param fetch [HubspotSDK::Models::CRM::Extensions::CardFetchBody] Configuration for this card's data fetch request.
          #
          # @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::Extensions::PublicCardResponse]
          #
          # @see HubspotSDK::Models::CRM::Extensions::CardCreateParams
          def create(app_id, params)
            parsed, options = HubspotSDK::CRM::Extensions::CardCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/v3/extensions/cards-dev/%1$s", app_id],
              body: parsed,
              model: HubspotSDK::CRM::Extensions::PublicCardResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::CRM::Extensions::CardUpdateParams} for more details.
          #
          # Update a card definition with new details.
          #
          # @overload update(card_id, app_id:, actions: nil, display_: nil, fetch: nil, title: nil, request_options: {})
          #
          # @param card_id [String] Path param: The ID of the card to update.
          #
          # @param app_id [Integer] Path param: The ID of the target app.
          #
          # @param actions [HubspotSDK::Models::CRM::Extensions::CardActions] Body param: Configuration for custom user actions on cards.
          #
          # @param display_ [HubspotSDK::Models::CRM::Extensions::CardDisplayBody] Body param: Configuration for displayed info on a card
          #
          # @param fetch [HubspotSDK::Models::CRM::Extensions::CardFetchBodyPatch] Body param: Variant of CardFetchBody with fields as optional for patches
          #
          # @param title [String] Body param: The top-level title for this card. Displayed to users in the CRM UI.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::Extensions::PublicCardResponse]
          #
          # @see HubspotSDK::Models::CRM::Extensions::CardUpdateParams
          def update(card_id, params)
            parsed, options = HubspotSDK::CRM::Extensions::CardUpdateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["crm/v3/extensions/cards-dev/%1$s/%2$s", app_id, card_id],
              body: parsed,
              model: HubspotSDK::CRM::Extensions::PublicCardResponse,
              options: options
            )
          end

          # Returns a list of cards for a given app.
          #
          # @overload list(app_id, request_options: {})
          #
          # @param app_id [Integer] The ID of the target app.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::Extensions::PublicCardListResponse]
          #
          # @see HubspotSDK::Models::CRM::Extensions::CardListParams
          def list(app_id, params = {})
            @client.request(
              method: :get,
              path: ["crm/v3/extensions/cards-dev/%1$s", app_id],
              model: HubspotSDK::CRM::Extensions::PublicCardListResponse,
              options: params[:request_options]
            )
          end

          # Permanently deletes a card definition with the given ID. Once deleted, data
          # fetch requests for this card will no longer be sent to your service. This can't
          # be undone.
          #
          # @overload delete(card_id, app_id:, request_options: {})
          #
          # @param card_id [String] The ID of the card to delete.
          #
          # @param app_id [Integer] The ID of the target app.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::CRM::Extensions::CardDeleteParams
          def delete(card_id, params)
            parsed, options = HubspotSDK::CRM::Extensions::CardDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["crm/v3/extensions/cards-dev/%1$s/%2$s", app_id, card_id],
              model: NilClass,
              options: options
            )
          end

          # Returns the definition for a card with the given ID.
          #
          # @overload get(card_id, app_id:, request_options: {})
          #
          # @param card_id [String] The ID of the target card.
          #
          # @param app_id [Integer] The ID of the target app.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::Extensions::PublicCardResponse]
          #
          # @see HubspotSDK::Models::CRM::Extensions::CardGetParams
          def get(card_id, params)
            parsed, options = HubspotSDK::CRM::Extensions::CardGetParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/v3/extensions/cards-dev/%1$s/%2$s", app_id, card_id],
              model: HubspotSDK::CRM::Extensions::PublicCardResponse,
              options: options
            )
          end

          # Returns an example card detail response. This is the payload with displayed
          # details for a card that will be shown to a user. An app should send this in
          # response to the data fetch request.
          #
          # @overload get_sample_response(request_options: {})
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::CRM::Extensions::IntegratorCardPayloadResponse]
          #
          # @see HubspotSDK::Models::CRM::Extensions::CardGetSampleResponseParams
          def get_sample_response(params = {})
            @client.request(
              method: :get,
              path: "crm/v3/extensions/cards-dev/sample-response",
              model: HubspotSDK::CRM::Extensions::IntegratorCardPayloadResponse,
              options: params[:request_options]
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
