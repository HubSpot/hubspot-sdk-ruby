# typed: strong

module HubspotSDK
  module Models
    module Automation
      class APIFlowBatchMigrationInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::APIFlowBatchMigrationInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              T.any(
                HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate,
                HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate
              )
            ]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                T.any(
                  HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate::OrHash,
                  HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate::OrHash
                )
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[
                  T.any(
                    HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate,
                    HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate
                  )
                ]
            }
          )
        end
        def to_hash
        end

        module Input
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::APIFlowBatchFetchMigrationFlowIDCoordinate,
                HubspotSDK::Automation::APIFlowBatchFetchMigrationWorkflowIDCoordinate
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::APIFlowBatchMigrationInput::Input::Variants
              ]
            )
          end
          def self.variants
          end
        end
      end
    end
  end
end
