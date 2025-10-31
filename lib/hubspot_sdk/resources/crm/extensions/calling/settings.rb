# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          class Settings
            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::CRM::Extensions::Calling::SettingCreateParams} for more
            # details.
            #
            # Set the menu label, target iframe URL, and dimensions for your calling
            # extension.
            #
            # @overload create(app_id, name:, url:, height: nil, is_ready: nil, supports_custom_objects: nil, supports_inbound_calling: nil, uses_calling_window: nil, uses_remote: nil, width: nil, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param name [String] The name of your calling service to display to users.
            #
            # @param url [String] The URL to your phone/calling UI, built with the [Calling SDK](#).
            #
            # @param height [Integer] The target height of the iframe that will contain your phone/calling UI.
            #
            # @param is_ready [Boolean] When true, this indicates that your calling app is ready for production. Users w
            #
            # @param supports_custom_objects [Boolean] When true, users will be able to click to dial from custom objects.
            #
            # @param supports_inbound_calling [Boolean] When true, this indicates that your calling app supports inbound calling within
            #
            # @param uses_calling_window [Boolean] When false, this indicates that your calling app does not require the use of the
            #
            # @param uses_remote [Boolean] When false, this indicates that your calling app does not use the anchored calli
            #
            # @param width [Integer] The target width of the iframe that will contain your phone/calling UI.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Webhooks::SettingsResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::SettingCreateParams
            def create(app_id, params)
              parsed, options = HubspotSDK::CRM::Extensions::Calling::SettingCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/v3/extensions/calling/%1$s/settings", app_id],
                body: parsed,
                model: HubspotSDK::Webhooks::SettingsResponse,
                options: options
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubspotSDK::Models::CRM::Extensions::Calling::SettingUpdateParams} for more
            # details.
            #
            # Update existing calling extension settings.
            #
            # @overload update(app_id, height: nil, is_ready: nil, name: nil, supports_custom_objects: nil, supports_inbound_calling: nil, url: nil, uses_calling_window: nil, uses_remote: nil, width: nil, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param height [Integer] The target height of the iframe that will contain your phone/calling UI.
            #
            # @param is_ready [Boolean] When true, this indicates that your calling app is ready for production. Users w
            #
            # @param name [String] The name of your calling service to display to users.
            #
            # @param supports_custom_objects [Boolean] When true, users will be able to click to dial from custom objects.
            #
            # @param supports_inbound_calling [Boolean] When true, this indicates that your calling app supports inbound calling within
            #
            # @param url [String] The URL to your phone/calling UI, built with the [Calling SDK](#).
            #
            # @param uses_calling_window [Boolean] When false, this indicates that your calling app does not require the use of the
            #
            # @param uses_remote [Boolean] When false, this indicates that your calling app does not use the anchored calli
            #
            # @param width [Integer] The target width of the iframe that will contain your phone/calling UI.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Webhooks::SettingsResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::SettingUpdateParams
            def update(app_id, params = {})
              parsed, options = HubspotSDK::CRM::Extensions::Calling::SettingUpdateParams.dump_request(params)
              @client.request(
                method: :patch,
                path: ["crm/v3/extensions/calling/%1$s/settings", app_id],
                body: parsed,
                model: HubspotSDK::Webhooks::SettingsResponse,
                options: options
              )
            end

            # Delete a calling extension. This will remove your service as an option for all
            # connected accounts.
            #
            # @overload delete(app_id, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::SettingDeleteParams
            def delete(app_id, params = {})
              @client.request(
                method: :delete,
                path: ["crm/v3/extensions/calling/%1$s/settings", app_id],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # Retrieve the settings configured for the app.
            #
            # @overload get(app_id, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Webhooks::SettingsResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::SettingGetParams
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
