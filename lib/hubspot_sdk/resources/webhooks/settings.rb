# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Webhooks
      class Settings
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Webhooks::SettingUpdateParams} for more details.
        #
        # Update webhook settings for the specified app.
        #
        # @overload update(app_id, target_url:, throttling:, request_options: {})
        #
        # @param app_id [Integer] The ID of the app.
        #
        # @param target_url [String] A publicly available URL for HubSpot to call where event payloads will be delive
        #
        # @param throttling [HubspotSDK::Models::Webhooks::ThrottlingSettings] Configuration details for webhook throttling.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SettingsResponse]
        #
        # @see HubspotSDK::Models::Webhooks::SettingUpdateParams
        def update(app_id, params)
          parsed, options = HubspotSDK::Webhooks::SettingUpdateParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["webhooks/v3/%1$s/settings", app_id],
            body: parsed,
            model: HubspotSDK::Webhooks::SettingsResponse,
            options: options
          )
        end

        # Retrieve the webhook settings for the specified app, including the webhook’s
        # target URL, throttle configuration, and create/update date.
        #
        # @overload list(app_id, request_options: {})
        #
        # @param app_id [Integer] The ID of the app.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Webhooks::SettingsResponse]
        #
        # @see HubspotSDK::Models::Webhooks::SettingListParams
        def list(app_id, params = {})
          @client.request(
            method: :get,
            path: ["webhooks/v3/%1$s/settings", app_id],
            model: HubspotSDK::Webhooks::SettingsResponse,
            options: params[:request_options]
          )
        end

        # Delete the webhook settings for the specified app. Event subscriptions will not
        # be deleted, but will be paused until another webhook is created.
        #
        # @overload delete(app_id, request_options: {})
        #
        # @param app_id [Integer] The ID of the app.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Webhooks::SettingDeleteParams
        def delete(app_id, params = {})
          @client.request(
            method: :delete,
            path: ["webhooks/v3/%1$s/settings", app_id],
            model: NilClass,
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
