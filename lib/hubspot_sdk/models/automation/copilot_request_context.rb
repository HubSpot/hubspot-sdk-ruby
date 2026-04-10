# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class CopilotRequestContext < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute source
        #   Indicates the source of the request, with the default value being 'COPILOT'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Automation::CopilotRequestContext::Source]
        required :source, enum: -> { HubSpotSDK::Automation::CopilotRequestContext::Source }

        # @!attribute trajectory_id
        #   The unique identifier for the trajectory.
        #
        #   @return [String, nil]
        optional :trajectory_id, String, api_name: :trajectoryId

        # @!method initialize(source:, trajectory_id: nil)
        #   @param source [Symbol, HubSpotSDK::Models::Automation::CopilotRequestContext::Source] Indicates the source of the request, with the default value being 'COPILOT'.
        #
        #   @param trajectory_id [String] The unique identifier for the trajectory.

        # Indicates the source of the request, with the default value being 'COPILOT'.
        #
        # @see HubSpotSDK::Models::Automation::CopilotRequestContext#source
        module Source
          extend HubSpotSDK::Internal::Type::Enum

          COPILOT = :COPILOT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
