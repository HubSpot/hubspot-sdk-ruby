# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      module Extensions
        module Calling
          class TranscriptCreateRequest < HubSpotSDK::Internal::Type::BaseModel
            # @!attribute engagement_id
            #
            #   @return [Integer]
            required :engagement_id, Integer, api_name: :engagementId

            # @!attribute transcript_create_utterances
            #
            #   @return [Array<HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptCreateUtterance>]
            required :transcript_create_utterances,
                     -> {
                       HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::Extensions::Calling::TranscriptCreateUtterance]
                     },
                     api_name: :transcriptCreateUtterances

            # @!method initialize(engagement_id:, transcript_create_utterances:)
            #   @param engagement_id [Integer]
            #   @param transcript_create_utterances [Array<HubSpotSDK::Models::Crm::Extensions::Calling::TranscriptCreateUtterance>]
          end
        end
      end
    end
  end
end
