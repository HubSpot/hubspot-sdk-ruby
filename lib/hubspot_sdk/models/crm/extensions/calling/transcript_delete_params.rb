# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          # @see HubspotSDK::Resources::Crm::Extensions::Calling::Transcripts#delete
          class TranscriptDeleteParams < HubspotSDK::Internal::Type::BaseModel
            extend HubspotSDK::Internal::Type::RequestParameters::Converter
            include HubspotSDK::Internal::Type::RequestParameters

            # @!attribute transcript_id
            #
            #   @return [String]
            required :transcript_id, String

            # @!method initialize(transcript_id:, request_options: {})
            #   @param transcript_id [String]
            #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
