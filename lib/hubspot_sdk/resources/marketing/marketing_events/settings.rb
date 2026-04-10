# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Marketing
      class MarketingEvents
        class Settings
          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Marketing::MarketingEvents::SettingCreateOrUpdateParams}
          # for more details.
          #
          # Create or update the current settings for the application.
          #
          # @overload create_or_update(app_id, event_details_url:, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param event_details_url [String] The url that will be used to fetch marketing event details by id. Must contain a
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Marketing::EventDetailSettings]
          #
          # @see HubSpotSDK::Models::Marketing::MarketingEvents::SettingCreateOrUpdateParams
          def create_or_update(app_id, params)
            parsed, options =
              HubSpotSDK::Marketing::MarketingEvents::SettingCreateOrUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["marketing/marketing-events/2026-03/%1$s/settings", app_id],
              body: parsed,
              model: HubSpotSDK::Marketing::EventDetailSettings,
              options: options
            )
          end

          # Retrieve the current settings for the application.
          #
          # @overload get(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Marketing::EventDetailSettings]
          #
          # @see HubSpotSDK::Models::Marketing::MarketingEvents::SettingGetParams
          def get(app_id, params = {})
            @client.request(
              method: :get,
              path: ["marketing/marketing-events/2026-03/%1$s/settings", app_id],
              model: HubSpotSDK::Marketing::EventDetailSettings,
              options: params[:request_options]
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
