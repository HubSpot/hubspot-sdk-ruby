# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class WorkflowsRequestContext < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::WorkflowsRequestContext,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Indicates the source of the request, with the default value being WORKFLOWS.
        sig do
          returns(
            HubSpotSDK::Automation::WorkflowsRequestContext::Source::OrSymbol
          )
        end
        attr_accessor :source

        # The ID of the workflow associated with the request context.
        sig { returns(Integer) }
        attr_accessor :workflow_id

        sig do
          returns(
            T.nilable(HubSpotSDK::Automation::ActionExecutionIndexIdentifier)
          )
        end
        attr_reader :action_execution_index_identifier

        sig do
          params(
            action_execution_index_identifier:
              HubSpotSDK::Automation::ActionExecutionIndexIdentifier::OrHash
          ).void
        end
        attr_writer :action_execution_index_identifier

        # The ID of the action within the workflow context.
        sig { returns(T.nilable(Integer)) }
        attr_reader :action_id

        sig { params(action_id: Integer).void }
        attr_writer :action_id

        sig do
          params(
            source:
              HubSpotSDK::Automation::WorkflowsRequestContext::Source::OrSymbol,
            workflow_id: Integer,
            action_execution_index_identifier:
              HubSpotSDK::Automation::ActionExecutionIndexIdentifier::OrHash,
            action_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Indicates the source of the request, with the default value being WORKFLOWS.
          source:,
          # The ID of the workflow associated with the request context.
          workflow_id:,
          action_execution_index_identifier: nil,
          # The ID of the action within the workflow context.
          action_id: nil
        )
        end

        sig do
          override.returns(
            {
              source:
                HubSpotSDK::Automation::WorkflowsRequestContext::Source::OrSymbol,
              workflow_id: Integer,
              action_execution_index_identifier:
                HubSpotSDK::Automation::ActionExecutionIndexIdentifier,
              action_id: Integer
            }
          )
        end
        def to_hash
        end

        # Indicates the source of the request, with the default value being WORKFLOWS.
        module Source
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Automation::WorkflowsRequestContext::Source
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          WORKFLOWS =
            T.let(
              :WORKFLOWS,
              HubSpotSDK::Automation::WorkflowsRequestContext::Source::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::WorkflowsRequestContext::Source::TaggedSymbol
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
