# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class ActionExecutionIndexIdentifier < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::ActionExecutionIndexIdentifier,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The index number representing the execution order of the action.
        sig { returns(Integer) }
        attr_accessor :action_execution_index

        # The ID associated with the enrollment process.
        sig { returns(Integer) }
        attr_accessor :enrollment_id

        sig do
          params(
            action_execution_index: Integer,
            enrollment_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The index number representing the execution order of the action.
          action_execution_index:,
          # The ID associated with the enrollment process.
          enrollment_id:
        )
        end

        sig do
          override.returns(
            { action_execution_index: Integer, enrollment_id: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
