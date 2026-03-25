# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class CardsDev
          # @overload create(app_id, actions:, display_:, fetch:, title:, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param actions [HubspotSDK::Models::Crm::Extensions::CardActions]
          #
          # @param display_ [HubspotSDK::Models::Crm::Extensions::CardDisplayBody]
          #
          # @param fetch [HubspotSDK::Models::Crm::Extensions::CardFetchBody]
          #
          # @param title [String] The top-level title for this card. Displayed to users in the CRM UI.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::PublicCardResponse]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardsDevCreateParams
          def create(app_id, params)
            parsed, options = HubspotSDK::Crm::Extensions::CardsDevCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/extensions/cards-dev/2026-03/%1$s", app_id],
              body: parsed,
              model: HubspotSDK::Crm::Extensions::PublicCardResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Extensions::CardsDevUpdateParams} for more details.
          #
          # @overload update(card_id, app_id:, actions: nil, display_: nil, fetch: nil, title: nil, request_options: {})
          #
          # @param card_id [String] Path param
          #
          # @param app_id [Integer] Path param
          #
          # @param actions [HubspotSDK::Models::Crm::Extensions::CardActions] Body param
          #
          # @param display_ [HubspotSDK::Models::Crm::Extensions::CardDisplayBody] Body param
          #
          # @param fetch [HubspotSDK::Models::Crm::Extensions::CardFetchBodyPatch] Body param
          #
          # @param title [String] Body param: The top-level title for this card. Displayed to users in the CRM UI.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::PublicCardResponse]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardsDevUpdateParams
          def update(card_id, params)
            parsed, options = HubspotSDK::Crm::Extensions::CardsDevUpdateParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["crm/extensions/cards-dev/2026-03/%1$s/%2$s", app_id, card_id],
              body: parsed,
              model: HubspotSDK::Crm::Extensions::PublicCardResponse,
              options: options
            )
          end

          # @overload delete(card_id, app_id:, request_options: {})
          #
          # @param card_id [String]
          # @param app_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardsDevDeleteParams
          def delete(card_id, params)
            parsed, options = HubspotSDK::Crm::Extensions::CardsDevDeleteParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["crm/extensions/cards-dev/2026-03/%1$s/%2$s", app_id, card_id],
              model: NilClass,
              options: options
            )
          end

          # @overload get(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::PublicCardListResponse]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardsDevGetParams
          def get(app_id, params = {})
            @client.request(
              method: :get,
              path: ["crm/extensions/cards-dev/2026-03/%1$s", app_id],
              model: HubspotSDK::Crm::Extensions::PublicCardListResponse,
              options: params[:request_options]
            )
          end

          # @overload get_by_id(card_id, app_id:, request_options: {})
          #
          # @param card_id [String]
          # @param app_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::PublicCardResponse]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardsDevGetByIDParams
          def get_by_id(card_id, params)
            parsed, options = HubspotSDK::Crm::Extensions::CardsDevGetByIDParams.dump_request(params)
            app_id =
              parsed.delete(:app_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["crm/extensions/cards-dev/2026-03/%1$s/%2$s", app_id, card_id],
              model: HubspotSDK::Crm::Extensions::PublicCardResponse,
              options: options
            )
          end

          # @overload get_sample_response(request_options: {})
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::IntegratorCardPayloadResponse]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardsDevGetSampleResponseParams
          def get_sample_response(params = {})
            @client.request(
              method: :get,
              path: "crm/extensions/cards-dev/2026-03/sample-response",
              model: HubspotSDK::Crm::Extensions::IntegratorCardPayloadResponse,
              options: params[:request_options]
            )
          end

          # @overload migrate_views(app_id, app_card_id:, legacy_crm_card_id:, helpdesk_app_card_id: nil, request_options: {})
          #
          # @param app_id [Integer]
          # @param app_card_id [Integer]
          # @param legacy_crm_card_id [Integer]
          # @param helpdesk_app_card_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::CardMigrateViewsResponse]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CardsDevMigrateViewsParams
          def migrate_views(app_id, params)
            parsed, options = HubspotSDK::Crm::Extensions::CardsDevMigrateViewsParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/extensions/cards-dev/2026-03/%1$s/views/migrate", app_id],
              body: parsed,
              model: HubspotSDK::Crm::Extensions::CardMigrateViewsResponse,
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
