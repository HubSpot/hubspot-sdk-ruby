# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          class ChannelConnectionSettings
            # Configure
            # [channel connection settings](https://developers.hubspot.com/docs/guides/api/crm/extensions/third-party-calling#create-channel-connection-settings)
            # for the app.
            #
            # @overload create(app_id, is_ready:, url:, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param is_ready [Boolean] If true, this app will be considered to support channel connection
            #
            # @param url [String] The URL to fetch phone numbers available for channel connection
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::Extensions::ChannelConnectionSettingsResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::ChannelConnectionSettingCreateParams
            def create(app_id, params)
              parsed, options =
                HubspotSDK::CRM::Extensions::Calling::ChannelConnectionSettingCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/v3/extensions/calling/%1$s/settings/channel-connection", app_id],
                body: parsed,
                model: HubspotSDK::CRM::Extensions::ChannelConnectionSettingsResponse,
                options: options
              )
            end

            # Update existing
            # [channel connection settings](https://developers.hubspot.com/docs/guides/api/crm/extensions/third-party-calling#manage-the-webhook-settings-for-channel-connection)
            # for your app.
            #
            # @overload update(app_id, is_ready: nil, url: nil, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param is_ready [Boolean] If true, this app will be considered to support channel connection
            #
            # @param url [String] The URL to fetch phone numbers available for channel connection
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::Extensions::ChannelConnectionSettingsResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::ChannelConnectionSettingUpdateParams
            def update(app_id, params = {})
              parsed, options =
                HubspotSDK::CRM::Extensions::Calling::ChannelConnectionSettingUpdateParams.dump_request(params)
              @client.request(
                method: :patch,
                path: ["crm/v3/extensions/calling/%1$s/settings/channel-connection", app_id],
                body: parsed,
                model: HubspotSDK::CRM::Extensions::ChannelConnectionSettingsResponse,
                options: options
              )
            end

            # Delete the
            # [channel connection settings](https://developers.hubspot.com/docs/guides/api/crm/extensions/third-party-calling#delete-existing-channel-connection-settings)
            # for the app.
            #
            # @overload delete(app_id, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::ChannelConnectionSettingDeleteParams
            def delete(app_id, params = {})
              @client.request(
                method: :delete,
                path: ["crm/v3/extensions/calling/%1$s/settings/channel-connection", app_id],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # Retrieve the settings related to the app's
            # [channel connection](https://developers.hubspot.com/docs/guides/api/crm/extensions/third-party-calling#fetch-existing-channel-connection-settings).
            #
            # @overload get(app_id, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::Extensions::ChannelConnectionSettingsResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::ChannelConnectionSettingGetParams
            def get(app_id, params = {})
              @client.request(
                method: :get,
                path: ["crm/v3/extensions/calling/%1$s/settings/channel-connection", app_id],
                model: HubspotSDK::CRM::Extensions::ChannelConnectionSettingsResponse,
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
end
