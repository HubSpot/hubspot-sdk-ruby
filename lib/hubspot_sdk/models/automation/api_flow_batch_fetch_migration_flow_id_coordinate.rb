# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIFlowBatchFetchMigrationFlowIDCoordinate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flow_migration_statuses
        #
        #   @return [String]
        required :flow_migration_statuses, String, api_name: :flowMigrationStatuses

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::Type }

        # @!method initialize(flow_migration_statuses:, type:)
        #   @param flow_migration_statuses [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::Type]

        # @see HubspotSDK::Models::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          FLOW_ID = :FLOW_ID

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
