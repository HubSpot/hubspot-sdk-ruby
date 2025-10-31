# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Extensions
        module Calling
          # @see HubspotSDK::Resources::CRM::Extensions::Calling::Transcripts#get
          class TranscriptResponse < HubspotSDK::Internal::Type::BaseModel
            # @!attribute id
            #
            #   @return [String]
            required :id, String

            # @!attribute created_at
            #
            #   @return [Time]
            required :created_at, Time, api_name: :createdAt

            # @!attribute engagement_id
            #
            #   @return [Integer]
            required :engagement_id, Integer, api_name: :engagementId

            # @!attribute transcript_source
            #
            #   @return [Symbol, HubspotSDK::Models::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource]
            required :transcript_source,
                     enum: -> { HubspotSDK::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource },
                     api_name: :transcriptSource

            # @!attribute transcript_utterances
            #
            #   @return [Array<HubspotSDK::Models::CRM::Extensions::Calling::TranscriptUtterance>]
            required :transcript_utterances,
                     -> {
                       HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CRM::Extensions::Calling::TranscriptUtterance]
                     },
                     api_name: :transcriptUtterances

            # @!attribute updated_at
            #
            #   @return [Time]
            required :updated_at, Time, api_name: :updatedAt

            # @!method initialize(id:, created_at:, engagement_id:, transcript_source:, transcript_utterances:, updated_at:)
            #   @param id [String]
            #   @param created_at [Time]
            #   @param engagement_id [Integer]
            #   @param transcript_source [Symbol, HubspotSDK::Models::CRM::Extensions::Calling::TranscriptResponse::TranscriptSource]
            #   @param transcript_utterances [Array<HubspotSDK::Models::CRM::Extensions::Calling::TranscriptUtterance>]
            #   @param updated_at [Time]

            # @see HubspotSDK::Models::CRM::Extensions::Calling::TranscriptResponse#transcript_source
            module TranscriptSource
              extend HubspotSDK::Internal::Type::Enum

              HUBSPOT_GENERATED = :HUBSPOT_GENERATED
              INTEGRATOR_GENERATED = :INTEGRATOR_GENERATED

              # @!method self.values
              #   @return [Array<Symbol>]
            end
          end
        end
      end
    end
  end
end
