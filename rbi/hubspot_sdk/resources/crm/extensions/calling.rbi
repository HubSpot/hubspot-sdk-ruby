# typed: strong

module HubSpotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          sig do
            returns(
              HubSpotSDK::Resources::Crm::Extensions::Calling::Transcripts
            )
          end
          attr_reader :transcripts

          # Establish new channel connection settings for the specified app.
          sig do
            params(
              app_id: Integer,
              is_ready: T::Boolean,
              url: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Crm::Extensions::ChannelConnectionSettingsResponse
            )
          end
          def create_channel_connection_settings(
            app_id,
            # Indicates whether the channel connection settings are ready.
            is_ready:,
            # The URL associated with the channel connection settings.
            url:,
            request_options: {}
          )
          end

          sig do
            params(
              create_engagement: T::Boolean,
              engagement_properties: T::Hash[Symbol, String],
              external_call_id: String,
              final_call_status:
                HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus::OrSymbol,
              from_number:
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash,
              potential_recipient_user_ids: T::Array[Integer],
              to_number:
                HubSpotSDK::Crm::Extensions::FormattedPhoneNumber::OrHash,
              call_started_timestamp: Time,
              duration_seconds: Integer,
              user_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse
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

          # This endpoint is used to mark a call recording as ready. It requires the
          # engagementId to identify the specific recording.
          sig do
            params(
              engagement_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def create_recording_ready(
            # The unique identifier for the engagement associated with the call recording.
            engagement_id:,
            request_options: {}
          )
          end

          # Create new recording settings for a specific app using the provided app ID.
          sig do
            params(
              app_id: Integer,
              url_to_retrieve_authed_recording: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::RecordingSettingsResponse)
          end
          def create_recording_settings(
            app_id,
            # The URL used to access authenticated call recordings.
            url_to_retrieve_authed_recording:,
            request_options: {}
          )
          end

          # Create new settings for the calling extension associated with the specified
          # appId.
          sig do
            params(
              app_id: Integer,
              height: Integer,
              is_ready: T::Boolean,
              name: String,
              supports_custom_objects: T::Boolean,
              supports_inbound_calling: T::Boolean,
              url: String,
              uses_calling_window: T::Boolean,
              uses_remote: T::Boolean,
              width: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::SettingsResponse)
          end
          def create_settings(
            app_id,
            # Specifies the height of the calling extension interface.
            height:,
            # Indicates if the calling extension is ready for use.
            is_ready:,
            # The name of the calling extension.
            name:,
            # Indicates if the calling extension supports custom objects.
            supports_custom_objects:,
            # Indicates if the calling extension supports inbound calling.
            supports_inbound_calling:,
            # The URL associated with the calling extension.
            url:,
            # Indicates if the calling extension uses a separate calling window.
            uses_calling_window:,
            # Indicates if the calling extension uses remote services.
            uses_remote:,
            # Specifies the width of the calling extension interface.
            width:,
            request_options: {}
          )
          end

          # Delete the channel connection settings associated with the specified app.
          sig do
            params(
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_channel_connection_settings(app_id, request_options: {})
          end

          # Remove the calling extension settings associated with the specified appId. This
          # action cannot be undone.
          sig do
            params(
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_settings(app_id, request_options: {})
          end

          # Access the current channel connection settings for the specified app.
          sig do
            params(
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Crm::Extensions::ChannelConnectionSettingsResponse
            )
          end
          def get_channel_connection_settings(app_id, request_options: {})
          end

          # Retrieve the current recording settings for a specific app using the provided
          # app ID.
          sig do
            params(
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::RecordingSettingsResponse)
          end
          def get_recording_settings(app_id, request_options: {})
          end

          # Retrieve the current settings of the calling extension for the specified appId.
          sig do
            params(
              app_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::SettingsResponse)
          end
          def get_settings(app_id, request_options: {})
          end

          # Modify the existing channel connection settings for the specified app.
          sig do
            params(
              app_id: Integer,
              is_ready: T::Boolean,
              url: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Crm::Extensions::ChannelConnectionSettingsResponse
            )
          end
          def update_channel_connection_settings(
            app_id,
            # Indicates whether the channel connection settings are ready.
            is_ready: nil,
            # The URL for the channel connection settings.
            url: nil,
            request_options: {}
          )
          end

          # Update the recording settings for a specific app using the provided app ID.
          sig do
            params(
              app_id: Integer,
              url_to_retrieve_authed_recording: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::RecordingSettingsResponse)
          end
          def update_recording_settings(
            app_id,
            # The URL used to access authenticated call recordings.
            url_to_retrieve_authed_recording: nil,
            request_options: {}
          )
          end

          # Modify existing calling extension settings for the specified appId. Only the
          # fields provided in the request will be updated.
          sig do
            params(
              app_id: Integer,
              height: Integer,
              is_ready: T::Boolean,
              name: String,
              supports_custom_objects: T::Boolean,
              supports_inbound_calling: T::Boolean,
              url: String,
              uses_calling_window: T::Boolean,
              uses_remote: T::Boolean,
              width: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Crm::Extensions::SettingsResponse)
          end
          def update_settings(
            app_id,
            # The height setting for the calling extension interface.
            height: nil,
            # Specifies whether the calling extension is ready for use.
            is_ready: nil,
            # The name of the calling extension.
            name: nil,
            # Indicates if the calling extension supports custom objects.
            supports_custom_objects: nil,
            # Indicates if the calling extension supports inbound calling.
            supports_inbound_calling: nil,
            # The URL associated with the calling extension settings.
            url: nil,
            # Indicates if the calling extension uses a calling window.
            uses_calling_window: nil,
            # Indicates if the calling extension uses a remote connection.
            uses_remote: nil,
            # The width setting for the calling extension interface.
            width: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
