# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          class Settings
            # @overload create(app_id, height:, is_ready:, name:, supports_custom_objects:, supports_inbound_calling:, url:, uses_calling_window:, uses_remote:, width:, request_options: {})
            #
            # @param app_id [Integer]
            # @param height [Integer]
            # @param is_ready [Boolean]
            # @param name [String]
            # @param supports_custom_objects [Boolean]
            # @param supports_inbound_calling [Boolean]
            # @param url [String]
            # @param uses_calling_window [Boolean]
            # @param uses_remote [Boolean]
            # @param width [Integer]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Webhooks::SettingsResponse]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::SettingCreateParams
            def create(app_id, params)
              parsed, options = HubspotSDK::Crm::Extensions::Calling::SettingCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/v3/extensions/calling/%1$s/settings", app_id],
                body: parsed,
                model: HubspotSDK::Webhooks::SettingsResponse,
                options: options
              )
            end

            # @overload update(app_id, height: nil, is_ready: nil, name: nil, supports_custom_objects: nil, supports_inbound_calling: nil, url: nil, uses_calling_window: nil, uses_remote: nil, width: nil, request_options: {})
            #
            # @param app_id [Integer]
            # @param height [Integer]
            # @param is_ready [Boolean]
            # @param name [String]
            # @param supports_custom_objects [Boolean]
            # @param supports_inbound_calling [Boolean]
            # @param url [String]
            # @param uses_calling_window [Boolean]
            # @param uses_remote [Boolean]
            # @param width [Integer]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Webhooks::SettingsResponse]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::SettingUpdateParams
            def update(app_id, params = {})
              parsed, options = HubspotSDK::Crm::Extensions::Calling::SettingUpdateParams.dump_request(params)
              @client.request(
                method: :patch,
                path: ["crm/v3/extensions/calling/%1$s/settings", app_id],
                body: parsed,
                model: HubspotSDK::Webhooks::SettingsResponse,
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
            # @see HubspotSDK::Models::Crm::Extensions::Calling::SettingDeleteParams
            def delete(app_id, params = {})
              @client.request(
                method: :delete,
                path: ["crm/v3/extensions/calling/%1$s/settings", app_id],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # @overload get(app_id, request_options: {})
            #
            # @param app_id [Integer]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Webhooks::SettingsResponse]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::SettingGetParams
            def get(app_id, params = {})
              @client.request(
                method: :get,
                path: ["crm/v3/extensions/calling/%1$s/settings", app_id],
                model: HubspotSDK::Webhooks::SettingsResponse,
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
