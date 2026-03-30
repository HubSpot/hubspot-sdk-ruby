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

          # Create new recording settings for a specific app using the provided app ID.
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

          # Update the recording settings for a specific app using the provided app ID.
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

          # Delete the channel connection settings associated with the specified app.
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
              create_engagement: T::Boolean,
              engagement_properties: T::Hash[Symbol, String],
              external_call_id: String,
              final_call_status:
                HubspotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::OrSymbol,
              from_number:
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash,
              potential_recipient_user_ids: T::Array[Integer],
              to_number:
                HubspotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash,
              call_started_timestamp: Time,
              duration_seconds: Integer,
              user_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse
            )
          end
          def create_inbound_call(
            # Indicates whether an engagement should be created for the call.
            create_engagement:,
            # Contains additional properties related to the engagement.
            engagement_properties:,
            # The unique identifier for the call from an external system.
            external_call_id:,
            # The final status of the call, with accepted values including: BUSY,
            # CALLING_CRM_USER, CANCELED, COMPLETED, CONNECTING, FAILED, HOLD, IN_PROGRESS,
            # MISSED, NO_ANSWER, QUEUED, RINGING, UNKNOWN.
            final_call_status:,
            from_number:,
            potential_recipient_user_ids:,
            to_number:,
            # The timestamp indicating when the call started, formatted as a date-time string.
            call_started_timestamp: nil,
            # The duration of the call in seconds.
            duration_seconds: nil,
            # The ID of the user associated with the call.
            user_id: nil,
            request_options: {}
          )
          end

          # Retrieve the current recording settings for a specific app using the provided
          # app ID.
          sig do
            params(
              app_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Crm::Extensions::RecordingSettingsResponse)
          end
          def get(app_id, request_options: {})
          end

          # This endpoint is used to mark a call recording as ready. It requires the
          # engagementId to identify the specific recording.
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
