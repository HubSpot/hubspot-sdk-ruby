# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class StandaloneRequestContext < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute chirp_ai_context_object
        #
        #   @return [HubSpotSDK::Models::Automation::ChirpAIContextObject]
        required :chirp_ai_context_object,
                 -> { HubSpotSDK::Automation::ChirpAIContextObject },
                 api_name: :chirpAiContextObject

        # @!attribute source
        #   Indicates the source of the request, with the default value being 'STANDALONE'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::StandaloneRequestContext::Source]
        required :source, enum: -> { HubSpotSDK::Automation::StandaloneRequestContext::Source }

        # @!attribute trajectory_id
        #   A unique identifier for tracking the trajectory of the request.
        #
        #   @return [String, nil]
        optional :trajectory_id, String, api_name: :trajectoryId

        # @!method initialize(chirp_ai_context_object:, source:, trajectory_id: nil)
        #   @param chirp_ai_context_object [HubSpotSDK::Models::Automation::ChirpAIContextObject]
        #
        #   @param source [Symbol, HubSpotSDK::Models::Automation::StandaloneRequestContext::Source] Indicates the source of the request, with the default value being 'STANDALONE'.
        #
        #   @param trajectory_id [String] A unique identifier for tracking the trajectory of the request.

        # Indicates the source of the request, with the default value being 'STANDALONE'.
        #
        # @see HubSpotSDK::Models::Automation::StandaloneRequestContext#source
        module Source
          extend HubSpotSDK::Internal::Type::Enum

          STANDALONE = :STANDALONE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
