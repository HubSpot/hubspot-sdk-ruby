# frozen_string_literal: true

module HubspotSDK
  module Resources
    class CRM
      class Extensions
        class Calling
          class Transcripts
            # @overload create(engagement_id:, transcript_create_utterances:, request_options: {})
            #
            # @param engagement_id [Integer]
            # @param transcript_create_utterances [Array<HubspotSDK::Models::CRM::Extensions::Calling::TranscriptCreateUtterance>]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::Extensions::Calling::TranscriptCreateResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::TranscriptCreateParams
            def create(params)
              parsed, options = HubspotSDK::CRM::Extensions::Calling::TranscriptCreateParams.dump_request(params)
              @client.request(
                method: :post,
                path: "crm/v3/extensions/calling/transcripts",
                body: parsed,
                model: HubspotSDK::CRM::Extensions::Calling::TranscriptCreateResponse,
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
            # @see HubspotSDK::Models::CRM::Extensions::Calling::TranscriptDeleteParams
            def delete(transcript_id, params = {})
              @client.request(
                method: :delete,
                path: ["crm/v3/extensions/calling/transcripts/%1$s", transcript_id],
                model: NilClass,
                options: params[:request_options]
              )
            end

            # @overload get(transcript_id, request_options: {})
            #
            # @param transcript_id [String]
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::CRM::Extensions::Calling::TranscriptResponse]
            #
            # @see HubspotSDK::Models::CRM::Extensions::Calling::TranscriptGetParams
            def get(transcript_id, params = {})
              @client.request(
                method: :get,
                path: ["crm/v3/extensions/calling/transcripts/%1$s", transcript_id],
                model: HubspotSDK::CRM::Extensions::Calling::TranscriptResponse,
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
