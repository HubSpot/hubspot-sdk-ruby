# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          # @return [HubspotSDK::Resources::Crm::Extensions::Calling::Transcripts]
          attr_reader :transcripts

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
