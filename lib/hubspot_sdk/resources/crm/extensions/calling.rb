# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          # @return [HubSpotSDK::Resources::Crm::Extensions::Calling::Transcripts]
          attr_reader :transcripts

          # Establish new channel connection settings for the specified app.
          #
          # @overload create_channel_connection_settings(app_id, is_ready:, url:, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param is_ready [Boolean] Indicates whether the channel connection settings are ready.
          #
          # @param url [String] The URL associated with the channel connection settings.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::Extensions::ChannelConnectionSettingsResponse]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingCreateChannelConnectionSettingsParams
          def create_channel_connection_settings(app_id, params)
            parsed, options =
              HubSpotSDK::Crm::Extensions::CallingCreateChannelConnectionSettingsParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/channel-connection", app_id],
              body: parsed,
              model: HubSpotSDK::Crm::Extensions::ChannelConnectionSettingsResponse,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubSpotSDK::Models::Crm::Extensions::CallingCreateInboundCallParams} for more
          # details.
          #
          # @overload create_inbound_call(create_engagement:, engagement_properties:, external_call_id:, final_call_status:, from_number:, potential_recipient_user_ids:, to_number:, call_started_timestamp: nil, duration_seconds: nil, user_id: nil, request_options: {})
          #
          # @param create_engagement [Boolean] Indicates whether an engagement should be created for the call.
          #
          # @param engagement_properties [Hash{Symbol=>String}] Contains additional properties related to the engagement.
          #
          # @param external_call_id [String] The unique identifier for the call from an external system.
          #
          # @param final_call_status [Symbol, HubSpotSDK::Models::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus] The final status of the call, with accepted values including: BUSY, CALLING*CRM*
          #
          # @param from_number [HubSpotSDK::Models::Crm::Extensions::FormattedPhoneNumber]
          #
          # @param potential_recipient_user_ids [Array<Integer>]
          #
          # @param to_number [HubSpotSDK::Models::Crm::Extensions::FormattedPhoneNumber]
          #
          # @param call_started_timestamp [Time] The timestamp indicating when the call started, formatted as a date-time string.
          #
          # @param duration_seconds [Integer] The duration of the call in seconds.
          #
          # @param user_id [Integer] The ID of the user associated with the call.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::Extensions::CompletedThirdPartyCallResponse]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingCreateInboundCallParams
          def create_inbound_call(params)
            parsed, options = HubSpotSDK::Crm::Extensions::CallingCreateInboundCallParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/extensions/calling/2026-03/inbound-call",
              body: parsed,
              model: HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse,
              options: options
            )
          end

          # This endpoint is used to mark a call recording as ready. It requires the
          # engagementId to identify the specific recording.
          #
          # @overload create_recording_ready(engagement_id:, request_options: {})
          #
          # @param engagement_id [Integer] The unique identifier for the engagement associated with the call recording.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingCreateRecordingReadyParams
          def create_recording_ready(params)
            parsed, options = HubSpotSDK::Crm::Extensions::CallingCreateRecordingReadyParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/extensions/calling/2026-03/recordings/ready",
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Create new recording settings for a specific app using the provided app ID.
          #
          # @overload create_recording_settings(app_id, url_to_retrieve_authed_recording:, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param url_to_retrieve_authed_recording [String] The URL used to access authenticated call recordings.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::Extensions::RecordingSettingsResponse]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingCreateRecordingSettingsParams
          def create_recording_settings(app_id, params)
            parsed, options = HubSpotSDK::Crm::Extensions::CallingCreateRecordingSettingsParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/recording", app_id],
              body: parsed,
              model: HubSpotSDK::Crm::Extensions::RecordingSettingsResponse,
              options: options
            )
          end

          # Create new settings for the calling extension associated with the specified
          # appId.
          #
          # @overload create_settings(app_id, height:, is_ready:, name:, supports_custom_objects:, supports_inbound_calling:, url:, uses_calling_window:, uses_remote:, width:, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param height [Integer] Specifies the height of the calling extension interface.
          #
          # @param is_ready [Boolean] Indicates if the calling extension is ready for use.
          #
          # @param name [String] The name of the calling extension.
          #
          # @param supports_custom_objects [Boolean] Indicates if the calling extension supports custom objects.
          #
          # @param supports_inbound_calling [Boolean] Indicates if the calling extension supports inbound calling.
          #
          # @param url [String] The URL associated with the calling extension.
          #
          # @param uses_calling_window [Boolean] Indicates if the calling extension uses a separate calling window.
          #
          # @param uses_remote [Boolean] Indicates if the calling extension uses remote services.
          #
          # @param width [Integer] Specifies the width of the calling extension interface.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::Extensions::SettingsResponse]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingCreateSettingsParams
          def create_settings(app_id, params)
            parsed, options = HubSpotSDK::Crm::Extensions::CallingCreateSettingsParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/extensions/calling/2026-03/%1$s/settings", app_id],
              body: parsed,
              model: HubSpotSDK::Crm::Extensions::SettingsResponse,
              options: options
            )
          end

          # Delete the channel connection settings associated with the specified app.
          #
          # @overload delete_channel_connection_settings(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingDeleteChannelConnectionSettingsParams
          def delete_channel_connection_settings(app_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/channel-connection", app_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Remove the calling extension settings associated with the specified appId. This
          # action cannot be undone.
          #
          # @overload delete_settings(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingDeleteSettingsParams
          def delete_settings(app_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/extensions/calling/2026-03/%1$s/settings", app_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Access the current channel connection settings for the specified app.
          #
          # @overload get_channel_connection_settings(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::Extensions::ChannelConnectionSettingsResponse]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingGetChannelConnectionSettingsParams
          def get_channel_connection_settings(app_id, params = {})
            @client.request(
              method: :get,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/channel-connection", app_id],
              model: HubSpotSDK::Crm::Extensions::ChannelConnectionSettingsResponse,
              options: params[:request_options]
            )
          end

          # Retrieve the current recording settings for a specific app using the provided
          # app ID.
          #
          # @overload get_recording_settings(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::Extensions::RecordingSettingsResponse]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingGetRecordingSettingsParams
          def get_recording_settings(app_id, params = {})
            @client.request(
              method: :get,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/recording", app_id],
              model: HubSpotSDK::Crm::Extensions::RecordingSettingsResponse,
              options: params[:request_options]
            )
          end

          # Retrieve the current settings of the calling extension for the specified appId.
          #
          # @overload get_settings(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::Extensions::SettingsResponse]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingGetSettingsParams
          def get_settings(app_id, params = {})
            @client.request(
              method: :get,
              path: ["crm/extensions/calling/2026-03/%1$s/settings", app_id],
              model: HubSpotSDK::Crm::Extensions::SettingsResponse,
              options: params[:request_options]
            )
          end

          # Modify the existing channel connection settings for the specified app.
          #
          # @overload update_channel_connection_settings(app_id, is_ready: nil, url: nil, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param is_ready [Boolean] Indicates whether the channel connection settings are ready.
          #
          # @param url [String] The URL for the channel connection settings.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::Extensions::ChannelConnectionSettingsResponse]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingUpdateChannelConnectionSettingsParams
          def update_channel_connection_settings(app_id, params = {})
            parsed, options =
              HubSpotSDK::Crm::Extensions::CallingUpdateChannelConnectionSettingsParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/channel-connection", app_id],
              body: parsed,
              model: HubSpotSDK::Crm::Extensions::ChannelConnectionSettingsResponse,
              options: options
            )
          end

          # Update the recording settings for a specific app using the provided app ID.
          #
          # @overload update_recording_settings(app_id, url_to_retrieve_authed_recording: nil, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param url_to_retrieve_authed_recording [String] The URL used to access authenticated call recordings.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::Extensions::RecordingSettingsResponse]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingUpdateRecordingSettingsParams
          def update_recording_settings(app_id, params = {})
            parsed, options = HubSpotSDK::Crm::Extensions::CallingUpdateRecordingSettingsParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/recording", app_id],
              body: parsed,
              model: HubSpotSDK::Crm::Extensions::RecordingSettingsResponse,
              options: options
            )
          end

          # Modify existing calling extension settings for the specified appId. Only the
          # fields provided in the request will be updated.
          #
          # @overload update_settings(app_id, height: nil, is_ready: nil, name: nil, supports_custom_objects: nil, supports_inbound_calling: nil, url: nil, uses_calling_window: nil, uses_remote: nil, width: nil, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param height [Integer] The height setting for the calling extension interface.
          #
          # @param is_ready [Boolean] Specifies whether the calling extension is ready for use.
          #
          # @param name [String] The name of the calling extension.
          #
          # @param supports_custom_objects [Boolean] Indicates if the calling extension supports custom objects.
          #
          # @param supports_inbound_calling [Boolean] Indicates if the calling extension supports inbound calling.
          #
          # @param url [String] The URL associated with the calling extension settings.
          #
          # @param uses_calling_window [Boolean] Indicates if the calling extension uses a calling window.
          #
          # @param uses_remote [Boolean] Indicates if the calling extension uses a remote connection.
          #
          # @param width [Integer] The width setting for the calling extension interface.
          #
          # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubSpotSDK::Models::Crm::Extensions::SettingsResponse]
          #
          # @see HubSpotSDK::Models::Crm::Extensions::CallingUpdateSettingsParams
          def update_settings(app_id, params = {})
            parsed, options = HubSpotSDK::Crm::Extensions::CallingUpdateSettingsParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["crm/extensions/calling/2026-03/%1$s/settings", app_id],
              body: parsed,
              model: HubSpotSDK::Crm::Extensions::SettingsResponse,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubSpotSDK::Client]
          def initialize(client:)
            @client = client
            @transcripts = HubSpotSDK::Resources::Crm::Extensions::Calling::Transcripts.new(client: client)
          end
        end
      end
    end
  end
end
