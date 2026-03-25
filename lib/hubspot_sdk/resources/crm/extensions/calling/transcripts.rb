# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Crm
      class Extensions
        class Calling
          class Transcripts
            # @overload create(engagement_id:, transcript_create_utterances:, request_options: {})
            #
            # @param engagement_id [Integer]
            # @param transcript_create_utterances [Array<HubspotSDK::Models::Crm::Extensions::Calling::TranscriptCreateUtterance>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::Extensions::Calling::TranscriptCreateResponse]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::TranscriptCreateParams
            def create(params)
              parsed, options = HubspotSDK::Crm::Extensions::Calling::TranscriptCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/extensions/calling/2026-03/transcripts",
                body: parsed,
                model: HubspotSDK::Crm::Extensions::Calling::TranscriptCreateResponse,
                options: options
              )
            end

            # @overload delete(transcript_id, request_options: {})
            #
            # @param transcript_id [String]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::TranscriptDeleteParams
            def delete(transcript_id, params = {})
              @client.request(
                method: :delete,
                path: ["crm/extensions/calling/2026-03/transcripts/%1$s", transcript_id],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # @overload create_inbound_call(create_engagement:, engagement_properties:, external_call_id:, final_call_status:, from_number:, potential_recipient_user_ids:, to_number:, call_started_timestamp: nil, duration_seconds: nil, user_id: nil, request_options: {})
            #
            # @param create_engagement [Boolean]
            # @param engagement_properties [Hash{Symbol=>String}]
            # @param external_call_id [String]
            # @param final_call_status [Symbol, HubspotSDK::Models::Crm::Extensions::CompletedThirdPartyCallRequest::FinalCallStatus]
            # @param from_number [HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber]
            # @param potential_recipient_user_ids [Array<Integer>]
            # @param to_number [HubspotSDK::Models::Crm::Extensions::FormattedPhoneNumber]
            # @param call_started_timestamp [Time]
            # @param duration_seconds [Integer]
            # @param user_id [Integer]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::Extensions::CompletedThirdPartyCallResponse]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::TranscriptCreateInboundCallParams
            def create_inbound_call(params)
              parsed, options =
                HubspotSDK::Crm::Extensions::Calling::TranscriptCreateInboundCallParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/extensions/calling/2026-03/inbound-call",
                body: parsed,
                model: HubspotSDK::Crm::Extensions::CompletedThirdPartyCallResponse,
                options: options
              )
            end

            # @overload get(transcript_id, request_options: {})
            #
            # @param transcript_id [String]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Crm::Extensions::Calling::TranscriptResponse]
            #
            # @see HubspotSDK::Models::Crm::Extensions::Calling::TranscriptGetParams
            def get(transcript_id, params = {})
              @client.request(
                method: :get,
                path: ["crm/extensions/calling/2026-03/transcripts/%1$s", transcript_id],
                model: HubspotSDK::Crm::Extensions::Calling::TranscriptResponse,
                options: params[:request_options]
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
