# typed: strong

module HubspotSDK
  module Models
    module Automation
      class WorkflowsRequestContext < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::WorkflowsRequestContext,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::Automation::WorkflowsRequestContext::Source::OrSymbol
          )
        end
        attr_accessor :source

        sig { returns(Integer) }
        attr_accessor :workflow_id

        sig do
          returns(
            T.nilable(HubspotSDK::Automation::ActionExecutionIndexIdentifier)
          )
        end
        attr_reader :action_execution_index_identifier

        sig do
          params(
            action_execution_index_identifier:
              HubspotSDK::Automation::ActionExecutionIndexIdentifier::OrHash
          ).void
        end
        attr_writer :action_execution_index_identifier

        sig { returns(T.nilable(Integer)) }
        attr_reader :action_id

        sig { params(action_id: Integer).void }
        attr_writer :action_id

        sig do
          params(
            source:
              HubspotSDK::Automation::WorkflowsRequestContext::Source::OrSymbol,
            workflow_id: Integer,
            action_execution_index_identifier:
              HubspotSDK::Automation::ActionExecutionIndexIdentifier::OrHash,
            action_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          source:,
          workflow_id:,
          action_execution_index_identifier: nil,
          action_id: nil
        )
        end

        sig do
          override.returns(
            {
              source:
                HubspotSDK::Automation::WorkflowsRequestContext::Source::OrSymbol,
              workflow_id: Integer,
              action_execution_index_identifier:
                HubspotSDK::Automation::ActionExecutionIndexIdentifier,
              action_id: Integer
            }
          )
        end
        def to_hash
        end

        module Source
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Automation::WorkflowsRequestContext::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WORKFLOWS =
            T.let(
              :WORKFLOWS,
              HubspotSDK::Automation::WorkflowsRequestContext::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::WorkflowsRequestContext::Source::TaggedSymbol
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
