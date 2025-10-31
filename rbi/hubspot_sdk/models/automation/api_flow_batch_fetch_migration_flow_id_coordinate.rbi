# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIFlowBatchFetchMigrationFlowIDCoordinate < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The flowId from the V4 API
        sig { returns(String) }
        attr_accessor :flow_migration_statuses

        # The type of input this is, can be FLOW_ID or WORKFLOW_ID
        sig do
          returns(
            HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::Type::OrSymbol
          )
        end
        attr_accessor :type

        sig do
          params(
            flow_migration_statuses: String,
            type:
              HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::Type::OrSymbol
          ).returns(T.attached_class)
        end
        def self.new(
          # The flowId from the V4 API
          flow_migration_statuses:,
          # The type of input this is, can be FLOW_ID or WORKFLOW_ID
          type:
        )
        end

        sig do
          override.returns(
            {
              flow_migration_statuses: String,
              type:
                HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::Type::OrSymbol
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
                HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::Type
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          FLOW_ID =
            T.let(
              :FLOW_ID,
              HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::Type::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::Type::TaggedSymbol
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
