# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class AgentRequestContext < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute agent_id
        #   The unique identifier for the agent making the request.
        #
        #   @return [Integer]
        required :agent_id, Integer, api_name: :agentId

        # @!attribute chirp_ai_context_object
        #
        #   @return [HubSpotSDK::Models::Automation::ChirpAIContextObject]
        required :chirp_ai_context_object,
                 -> { HubSpotSDK::Automation::ChirpAIContextObject },
                 api_name: :chirpAiContextObject

        # @!attribute source
        #   Indicates the source of the request, with the default value being 'AGENTS'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::AgentRequestContext::Source]
        required :source, enum: -> { HubSpotSDK::Automation::AgentRequestContext::Source }

        # @!attribute trajectory_id
        #   The unique identifier for the trajectory associated with the agent request.
        #
        #   @return [String, nil]
        optional :trajectory_id, String, api_name: :trajectoryId

        # @!method initialize(agent_id:, chirp_ai_context_object:, source:, trajectory_id: nil)
        #   @param agent_id [Integer] The unique identifier for the agent making the request.
        #
        #   @param chirp_ai_context_object [HubSpotSDK::Models::Automation::ChirpAIContextObject]
        #
        #   @param source [Symbol, HubSpotSDK::Models::Automation::AgentRequestContext::Source] Indicates the source of the request, with the default value being 'AGENTS'.
        #
        #   @param trajectory_id [String] The unique identifier for the trajectory associated with the agent request.

        # Indicates the source of the request, with the default value being 'AGENTS'.
        #
        # @see HubSpotSDK::Models::Automation::AgentRequestContext#source
        module Source
          extend HubSpotSDK::Internal::Type::Enum

          AGENTS = :AGENTS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
