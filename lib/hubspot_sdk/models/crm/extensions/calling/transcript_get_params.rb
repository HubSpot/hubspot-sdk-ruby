# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          # @see HubSpotSDK::Resources::Crm::Extensions::Calling::Transcripts#get
          class TranscriptGetParams < HubSpotSDK::Internal::Type::BaseModel
            extend HubSpotSDK::Internal::Type::RequestParameters::Converter
            include HubSpotSDK::Internal::Type::RequestParameters

            # @!attribute transcript_id
            #
            #   @return [String]
            required :transcript_id, String

            # @!method initialize(transcript_id:, request_options: {})
            #   @param transcript_id [String]
            #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
          end
        end
      end
    end
  end
end
