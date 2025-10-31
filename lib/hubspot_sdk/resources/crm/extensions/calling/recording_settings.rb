# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          class RecordingSettings
            # Register an external URL that HubSpot will use to retrieve
            # [call recordings](https://developers.hubspot.com/docs/guides/apps/extensions/calling-extensions/recordings-and-transcriptions#register-your-app-s-endpoint-with-hubspot-using-the-calling-settings-api).
            #
            # @overload create(app_id, url_to_retrieve_authed_recording:, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param url_to_retrieve_authed_recording [String]
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::Extensions::RecordingSettingsResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::RecordingSettingCreateParams
            def create(app_id, params)
              parsed, options = HubspotSDK::CRM::Extensions::Calling::RecordingSettingCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["crm/v3/extensions/calling/%1$s/settings/recording", app_id],
                body: parsed,
                model: HubspotSDK::CRM::Extensions::RecordingSettingsResponse,
                options: options
              )
            end

            # Update the URL that HubSpot will use to retrieve
            # [call recordings](https://developers.hubspot.com/docs/guides/apps/extensions/calling-extensions/recordings-and-transcriptions#register-your-app-s-endpoint-with-hubspot-using-the-calling-settings-api).
            #
            # @overload update(app_id, url_to_retrieve_authed_recording: nil, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param url_to_retrieve_authed_recording [String]
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::Extensions::RecordingSettingsResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::RecordingSettingUpdateParams
            def update(app_id, params = {})
              parsed, options = HubspotSDK::CRM::Extensions::Calling::RecordingSettingUpdateParams.dump_request(params)
              @client.request(
                method: :patch,
                path: ["crm/v3/extensions/calling/%1$s/settings/recording", app_id],
                body: parsed,
                model: HubspotSDK::CRM::Extensions::RecordingSettingsResponse,
                options: options
              )
            end

            # Retrieve the URL that is registered for
            # [call recording](https://developers.hubspot.com/docs/guides/apps/extensions/calling-extensions/recordings-and-transcriptions#register-your-app-s-endpoint-with-hubspot-using-the-calling-settings-api).
            #
            # @overload get(app_id, request_options: {})
            #
            # @param app_id [Integer] The ID of the app.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::Extensions::RecordingSettingsResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::RecordingSettingGetParams
            def get(app_id, params = {})
              @client.request(
                method: :get,
                path: ["crm/v3/extensions/calling/%1$s/settings/recording", app_id],
                model: HubspotSDK::CRM::Extensions::RecordingSettingsResponse,
                options: params[:request_options]
              )
            end

            # Mark a call recording as ready for transcription, specifying the call by its ID
            # (`engagementid`).
            #
            # @overload mark_ready(engagement_id:, request_options: {})
            #
            # @param engagement_id [Integer]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::RecordingSettingMarkReadyParams
            def mark_ready(params)
              parsed, options =
                HubspotSDK::CRM::Extensions::Calling::RecordingSettingMarkReadyParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/extensions/calling/recordings/ready",
                body: parsed,
                model: NilClass,
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
end
