# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          class RecordingSettings
            # Register an external URL that HubSpot will use to retrieve
            # [call recordings](https://developers.hubspot.com/docs/guides/apps/extensions/calling-extensions/recordings-and-transcriptions#register-your-app-s-endpoint-with-hubspot-using-the-calling-settings-api).
            sig do
              params(
                app_id: Integer,
                url_to_retrieve_authed_recording: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::Extensions::RecordingSettingsResponse)
            end
            def create(
              # The ID of the app.
              app_id,
              url_to_retrieve_authed_recording:,
              request_options: {}
            )
            end

            # Update the URL that HubSpot will use to retrieve
            # [call recordings](https://developers.hubspot.com/docs/guides/apps/extensions/calling-extensions/recordings-and-transcriptions#register-your-app-s-endpoint-with-hubspot-using-the-calling-settings-api).
            sig do
              params(
                app_id: Integer,
                url_to_retrieve_authed_recording: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::Extensions::RecordingSettingsResponse)
            end
            def update(
              # The ID of the app.
              app_id,
              url_to_retrieve_authed_recording: nil,
              request_options: {}
            )
            end

            # Retrieve the URL that is registered for
            # [call recording](https://developers.hubspot.com/docs/guides/apps/extensions/calling-extensions/recordings-and-transcriptions#register-your-app-s-endpoint-with-hubspot-using-the-calling-settings-api).
            sig do
              params(
                app_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::Extensions::RecordingSettingsResponse)
            end
            def get(
              # The ID of the app.
              app_id,
              request_options: {}
            )
            end

            # Mark a call recording as ready for transcription, specifying the call by its ID
            # (`engagementid`).
            sig do
              params(
                engagement_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).void
            end
            def mark_ready(engagement_id:, request_options: {})
            end

            # @api private
            sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
            def self.new(client:)
            end
          end
        end
      end
    end
  end
end
