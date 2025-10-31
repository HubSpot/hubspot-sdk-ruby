# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIFlowBatchFetchMigrationWorkflowIDCoordinate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flow_migration_status_for_classic_workflows
        #   The workflowId from the V3 API
        #
        #   @return [String]
        required :flow_migration_status_for_classic_workflows,
                 String,
                 api_name: :flowMigrationStatusForClassicWorkflows

        # @!attribute type
        #   The type of input this is, can be FLOW_ID or WORKFLOW_ID
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::Type }

        # @!method initialize(flow_migration_status_for_classic_workflows:, type:)
        #   @param flow_migration_status_for_classic_workflows [String] The workflowId from the V3 API
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::Type] The type of input this is, can be FLOW_ID or WORKFLOW_ID

        # The type of input this is, can be FLOW_ID or WORKFLOW_ID
        #
        # @see HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          WORKFLOW_ID = :WORKFLOW_ID

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
