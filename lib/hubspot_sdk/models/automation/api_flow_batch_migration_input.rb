# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIFlowBatchMigrationInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate, HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Automation::APIFlowBatchMigrationInput::Input] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate, HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate>]

        module Input
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate }

          variant -> { HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate, HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate)]
        end
      end
    end
  end
end
