# typed: strong

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          sig do
            returns(
              HubspotSDK::Resources::Crm::Extensions::Calling::Transcripts
            )
          end
          attr_reader :transcripts

          sig do
            params(
              app_id: Integer,
              url_to_retrieve_authed_recording: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::RecordingSettingsResponse)
          end
          def create(
            app_id,
            # The URL used to access authenticated call recordings.
            url_to_retrieve_authed_recording:,
            request_options: {}
          )
          end

          sig do
            params(
              app_id: Integer,
              url_to_retrieve_authed_recording: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::RecordingSettingsResponse)
          end
          def update(
            app_id,
            # The URL used to access authenticated call recordings.
            url_to_retrieve_authed_recording: nil,
            request_options: {}
          )
          end

          sig do
            params(
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(app_id, request_options: {})
          end

          sig do
            params(
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::RecordingSettingsResponse)
          end
          def get(app_id, request_options: {})
          end

          sig do
            params(
              engagement_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def mark_ready(
            # The unique identifier for the engagement associated with the call recording.
            engagement_id:,
            request_options: {}
          )
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
