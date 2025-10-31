# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIFlowBatchFetchMigrationWorkflowIDCoordinate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The workflowId from the V3 API
        sig { returns(String) }
        attr_accessor :flow_migration_status_for_classic_workflows

        # The type of input this is, can be FLOW_ID or WORKFLOW_ID
        sig do
          returns(
            HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            flow_migration_status_for_classic_workflows: String,
            type:
              HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The workflowId from the V3 API
          flow_migration_status_for_classic_workflows:,
          # The type of input this is, can be FLOW_ID or WORKFLOW_ID
          type:
        )
        end

        sig do
          override.returns(
            {
              flow_migration_status_for_classic_workflows: String,
              type:
                HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::Type::OrSymbol
            }
          )
        end
        def to_hash
        end

        # The type of input this is, can be FLOW_ID or WORKFLOW_ID
        module Type
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WORKFLOW_ID =
            T.let(
              :WORKFLOW_ID,
              HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::Type::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
