# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          class RecordingSettings
            sig do
              params(
                app_id: Integer,
                url_to_retrieve_authed_recording: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::Extensions::RecordingSettingsResponse)
            end
            def create(
              app_id,
              url_to_retrieve_authed_recording:,
              request_options: {}
            )
            end

            sig do
              params(
                app_id: Integer,
                url_to_retrieve_authed_recording: String,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::Extensions::RecordingSettingsResponse)
            end
            def update(
              app_id,
              url_to_retrieve_authed_recording: nil,
              request_options: {}
            )
            end

            sig do
              params(
                app_id: Integer,
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::CRM::Extensions::RecordingSettingsResponse)
            end
            def get(app_id, request_options: {})
            end

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
