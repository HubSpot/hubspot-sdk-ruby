# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class StandaloneRequestContext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute chirp_ai_context_object
        #
        #   @return [HubspotSDK::Models::Automation::ChirpAIContextObject]
        required :chirp_ai_context_object,
                 -> { HubspotSDK::Automation::ChirpAIContextObject },
                 api_name: :chirpAiContextObject

        # @!attribute source
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::StandaloneRequestContext::Source]
        required :source, enum: -> { HubspotSDK::Automation::StandaloneRequestContext::Source }

        # @!attribute trajectory_id
        #
        #   @return [String, nil]
        optional :trajectory_id, String, api_name: :trajectoryId

        # @!method initialize(chirp_ai_context_object:, source:, trajectory_id: nil)
        #   @param chirp_ai_context_object [HubspotSDK::Models::Automation::ChirpAIContextObject]
        #   @param source [Symbol, HubspotSDK::Models::Automation::StandaloneRequestContext::Source]
        #   @param trajectory_id [String]

        # @see HubspotSDK::Models::Automation::StandaloneRequestContext#source
        module Source
          extend HubspotSDK::Internal::Type::Enum

          STANDALONE = :STANDALONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
