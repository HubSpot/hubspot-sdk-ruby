# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class CopilotRequestContext < HubspotSDK::Internal::Type::BaseModel
        # @!attribute source
        #   Indicates the source of the request, with the default value being 'COPILOT'.
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::CopilotRequestContext::Source]
        required :source, enum: -> { HubspotSDK::Automation::CopilotRequestContext::Source }

        # @!attribute trajectory_id
        #   The unique identifier for the trajectory.
        #
        #   @return [String, nil]
        optional :trajectory_id, String, api_name: :trajectoryId

        # @!method initialize(source:, trajectory_id: nil)
        #   @param source [Symbol, HubspotSDK::Models::Automation::CopilotRequestContext::Source] Indicates the source of the request, with the default value being 'COPILOT'.
        #
        #   @param trajectory_id [String] The unique identifier for the trajectory.

        # Indicates the source of the request, with the default value being 'COPILOT'.
        #
        # @see HubspotSDK::Models::Automation::CopilotRequestContext#source
        module Source
          extend HubspotSDK::Internal::Type::Enum

          COPILOT = :COPILOT

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
