# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Events
        class Settings
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Events::SettingCreateOrUpdateParams} for more
          # details.
          #
          # Create or update the current settings for the application.
          #
          # @overload create_or_update(app_id, event_details_url:, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param event_details_url [String] The url that will be used to fetch marketing event details by id. Must contain a
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::EventDetailSettings]
          #
          # @see HubspotSDK::Models::Marketing::Events::SettingCreateOrUpdateParams
          def create_or_update(app_id, params)
            parsed, options = HubspotSDK::Marketing::Events::SettingCreateOrUpdateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["marketing/marketing-events/2026-03/%1$s/settings", app_id],
              body: parsed,
              model: HubspotSDK::Marketing::EventDetailSettings,
              options: options
            )
          end

          # Retrieve the current settings for the application.
          #
          # @overload get(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::EventDetailSettings]
          #
          # @see HubspotSDK::Models::Marketing::Events::SettingGetParams
          def get(app_id, params = {})
            @client.request(
              method: :get,
              path: ["marketing/marketing-events/2026-03/%1$s/settings", app_id],
              model: HubspotSDK::Marketing::EventDetailSettings,
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
