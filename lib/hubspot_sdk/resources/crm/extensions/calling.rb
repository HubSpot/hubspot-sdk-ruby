# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          # @return [HubspotSDK::Resources::Crm::Extensions::Calling::Transcripts]
          attr_reader :transcripts

          # Create new recording settings for a specific app using the provided app ID.
          #
          # @overload create(app_id, url_to_retrieve_authed_recording:, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param url_to_retrieve_authed_recording [String] The URL used to access authenticated call recordings.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::RecordingSettingsResponse]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CallingCreateParams
          def create(app_id, params)
            parsed, options = HubspotSDK::Crm::Extensions::CallingCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/recording", app_id],
              body: parsed,
              model: HubspotSDK::Crm::Extensions::RecordingSettingsResponse,
              options: options
            )
          end

          # Update the recording settings for a specific app using the provided app ID.
          #
          # @overload update(app_id, url_to_retrieve_authed_recording: nil, request_options: {})
          #
          # @param app_id [Integer]
          #
          # @param url_to_retrieve_authed_recording [String] The URL used to access authenticated call recordings.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::RecordingSettingsResponse]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CallingUpdateParams
          def update(app_id, params = {})
            parsed, options = HubspotSDK::Crm::Extensions::CallingUpdateParams.dump_request(params)
            @client.request(
              method: :patch,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/recording", app_id],
              body: parsed,
              model: HubspotSDK::Crm::Extensions::RecordingSettingsResponse,
              options: options
            )
          end

          # Delete the channel connection settings associated with the specified app.
          #
          # @overload delete(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CallingDeleteParams
          def delete(app_id, params = {})
            @client.request(
              method: :delete,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/channel-connection", app_id],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Crm::Extensions::CallingCreateInboundCallParams} for more
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
          # @param final_call_status [Symbol, HubspotSDK::Models::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus] The final status of the call, with accepted values including: BUSY, CALLING*CRM*
          #
          # @param from_number [HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber]
          #
          # @param potential_recipient_user_ids [Array<Integer>]
          #
          # @param to_number [HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber]
          #
          # @param call_started_timestamp [Time] The timestamp indicating when the call started, formatted as a date-time string.
          #
          # @param duration_seconds [Integer] The duration of the call in seconds.
          #
          # @param user_id [Integer] The ID of the user associated with the call.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::CompletedThirdPartyCallResponse]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CallingCreateInboundCallParams
          def create_inbound_call(params)
            parsed, options = HubspotSDK::Crm::Extensions::CallingCreateInboundCallParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/extensions/calling/2026-03/inbound-call",
              body: parsed,
              model: HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse,
              options: options
            )
          end

          # Retrieve the current recording settings for a specific app using the provided
          # app ID.
          #
          # @overload get(app_id, request_options: {})
          #
          # @param app_id [Integer]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Crm::Extensions::RecordingSettingsResponse]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CallingGetParams
          def get(app_id, params = {})
            @client.request(
              method: :get,
              path: ["crm/extensions/calling/2026-03/%1$s/settings/recording", app_id],
              model: HubspotSDK::Crm::Extensions::RecordingSettingsResponse,
              options: params[:request_options]
            )
          end

          # This endpoint is used to mark a call recording as ready. It requires the
          # engagementId to identify the specific recording.
          #
          # @overload mark_ready(engagement_id:, request_options: {})
          #
          # @param engagement_id [Integer] The unique identifier for the engagement associated with the call recording.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Crm::Extensions::CallingMarkReadyParams
          def mark_ready(params)
            parsed, options = HubspotSDK::Crm::Extensions::CallingMarkReadyParams.dump_request(params)
            @client.request(
              method: :post,
              path: "crm/extensions/calling/2026-03/recordings/ready",
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
            @transcripts = HubspotSDK::Resources::Crm::Extensions::Calling::Transcripts.new(client: client)
          end
        end
      end
    end
  end
end
