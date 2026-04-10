# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          class Transcripts
            # @overload create(engagement_id:, transcript_create_utterances:, request_options: {})
            #
            # @param engagement_id [Integer]
            # @param transcript_create_utterances [Array<HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptCreateUtterance>]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptCreateResponse]
            #
            # @see HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptCreateParams
            def create(params)
              parsed, options = HubSpotSDK::Crm::Extensions::Calling::TranscriptCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/extensions/calling/2026-03/transcripts",
                body: parsed,
                model: HubSpotSDK::Crm::Extensions::Calling::TranscriptCreateResponse,
                options: options
              )
            end

            # @overload delete(transcript_id, request_options: {})
            #
            # @param transcript_id [String]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptDeleteParams
            def delete(transcript_id, params = {})
              @client.request(
                method: :delete,
                path: ["crm/extensions/calling/2026-03/transcripts/%1$s", transcript_id],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # Some parameter documentations has been truncated, see
            # {HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptCreateInboundCallParams}
            # for more details.
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
            # @see HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptCreateInboundCallParams
            def create_inbound_call(params)
              parsed, options =
                HubSpotSDK::Crm::Extensions::Calling::TranscriptCreateInboundCallParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/extensions/calling/2026-03/inbound-call",
                body: parsed,
                model: HubSpotSDK::Crm::Extensions::CompletedThirdPartyCallResponse,
                options: options
              )
            end

            # @overload get(transcript_id, request_options: {})
            #
            # @param transcript_id [String]
            # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptResponse]
            #
            # @see HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptGetParams
            def get(transcript_id, params = {})
              @client.request(
                method: :get,
                path: ["crm/extensions/calling/2026-03/transcripts/%1$s", transcript_id],
                model: HubSpotSDK::Crm::Extensions::Calling::TranscriptResponse,
                options: params[:request_options]
              )
            end

            # @api private
            #
            # @param client [HubSpotSDK::Client]
            def initialize(client:)
              @client = client
            end
          end
        end
      end
    end
  end
end
