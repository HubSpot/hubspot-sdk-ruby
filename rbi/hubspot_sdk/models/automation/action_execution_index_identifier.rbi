# typed: strong

module HubspotSDK
  module Models
    module Automation
      class ActionExecutionIndexIdentifier < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::ActionExecutionIndexIdentifier,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(Integer) }
        attr_accessor :action_execution_index

        sig { returns(Integer) }
        attr_accessor :enrollment_id

        sig do
          params(
            action_execution_index: Integer,
            enrollment_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(action_execution_index:, enrollment_id:)
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
