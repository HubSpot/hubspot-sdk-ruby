# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class AgentRequestContext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute agent_id
        #   The unique identifier for the agent making the request.
        #
        #   @return [Integer]
        required :agent_id, Integer, api_name: :agentId

        # @!attribute chirp_ai_context_object
        #
        #   @return [HubspotSDK::Models::Automation::ChirpAIContextObject]
        required :chirp_ai_context_object,
                 -> { HubspotSDK::Automation::ChirpAIContextObject },
                 api_name: :chirpAiContextObject

        # @!attribute source
        #   Indicates the source of the request, with the default value being 'AGENTS'.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::AgentRequestContext::Source]
        required :source, enum: -> { HubspotSDK::Automation::AgentRequestContext::Source }

        # @!attribute trajectory_id
        #   The unique identifier for the trajectory associated with the agent request.
        #
        #   @return [String, nil]
        optional :trajectory_id, String, api_name: :trajectoryId

        # @!method initialize(agent_id:, chirp_ai_context_object:, source:, trajectory_id: nil)
        #   @param agent_id [Integer] The unique identifier for the agent making the request.
        #
        #   @param chirp_ai_context_object [HubspotSDK::Models::Automation::ChirpAIContextObject]
        #
        #   @param source [Symbol, HubspotSDK::Models::Automation::AgentRequestContext::Source] Indicates the source of the request, with the default value being 'AGENTS'.
        #
        #   @param trajectory_id [String] The unique identifier for the trajectory associated with the agent request.

        # Indicates the source of the request, with the default value being 'AGENTS'.
        #
        # @see HubspotSDK::Models::Automation::AgentRequestContext#source
        module Source
          extend HubspotSDK::Internal::Type::Enum

          AGENTS = :AGENTS

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
