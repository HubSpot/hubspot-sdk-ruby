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

        sig { returns(String) }
        attr_accessor :flow_migration_statuses

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
        def self.new(flow_migration_statuses:, type:)
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
