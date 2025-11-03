# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          class ChannelConnectionSettings
            # @overload create(app_id, is_ready:, url:, request_options: {})
            #
            # @param app_id [Integer]
            # @param is_ready [Boolean]
            # @param url [String]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::Extensions::ChannelConnectionSettingsResponse]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::ChannelConnectionSettingCreateParams
            def create(app_id, params)
              parsed, options =
                HubspotSDK::Crm::Extensions::Calling::ChannelConnectionSettingCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/v3/extensions/calling/%1$s/settings/channel-connection", app_id],
                body: parsed,
                model: HubspotSDK::Crm::Extensions::ChannelConnectionSettingsResponse,
                options: options
              )
            end

            # @overload update(app_id, is_ready: nil, url: nil, request_options: {})
            #
            # @param app_id [Integer]
            # @param is_ready [Boolean]
            # @param url [String]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::Extensions::ChannelConnectionSettingsResponse]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::ChannelConnectionSettingUpdateParams
            def update(app_id, params = {})
              parsed, options =
                HubspotSDK::Crm::Extensions::Calling::ChannelConnectionSettingUpdateParams.dump_request(params)
              @client.request(
                method: :patch,
                path: ["crm/v3/extensions/calling/%1$s/settings/channel-connection", app_id],
                body: parsed,
                model: HubspotSDK::Crm::Extensions::ChannelConnectionSettingsResponse,
                options: options
              )
            end

            # @overload delete(app_id, request_options: {})
            #
            # @param app_id [Integer]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::ChannelConnectionSettingDeleteParams
            def delete(app_id, params = {})
              @client.request(
                method: :delete,
                path: ["crm/v3/extensions/calling/%1$s/settings/channel-connection", app_id],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # @overload get(app_id, request_options: {})
            #
            # @param app_id [Integer]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::Extensions::ChannelConnectionSettingsResponse]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::ChannelConnectionSettingGetParams
            def get(app_id, params = {})
              @client.request(
                method: :get,
                path: ["crm/v3/extensions/calling/%1$s/settings/channel-connection", app_id],
                model: HubspotSDK::Crm::Extensions::ChannelConnectionSettingsResponse,
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
