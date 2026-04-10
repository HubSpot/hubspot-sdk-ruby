# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class CallbackCompletionBatchRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::CallbackCompletionBatchRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The unique identifier for the callback.
        sig { returns(String) }
        attr_accessor :callback_id

        # Holds the output fields for the callback completion.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :output_fields

        # Contains the typed outputs for the callback completion.
        sig { returns(T.anything) }
        attr_accessor :typed_outputs

        # Specifies the type of failure reason for the callback completion.
        sig { returns(T.nilable(String)) }
        attr_reader :failure_reason_type

        sig { params(failure_reason_type: String).void }
        attr_writer :failure_reason_type

        # Defines the context of the request, which can be one of several predefined
        # types.
        sig do
          returns(
            T.nilable(
              T.any(
                HubSpotSDK::Automation::WorkflowsRequestContext,
                HubSpotSDK::Automation::AgentRequestContext,
                HubSpotSDK::Automation::CopilotRequestContext,
                HubSpotSDK::Automation::StandaloneRequestContext,
                HubSpotSDK::Automation::TestRequestContext
              )
            )
          )
        end
        attr_reader :request_context

        sig do
          params(
            request_context:
              T.any(
                HubSpotSDK::Automation::WorkflowsRequestContext::OrHash,
                HubSpotSDK::Automation::AgentRequestContext::OrHash,
                HubSpotSDK::Automation::CopilotRequestContext::OrHash,
                HubSpotSDK::Automation::StandaloneRequestContext::OrHash,
                HubSpotSDK::Automation::TestRequestContext::OrHash
              )
          ).void
        end
        attr_writer :request_context

        sig do
          params(
            callback_id: String,
            output_fields: T::Hash[Symbol, String],
            typed_outputs: T.anything,
            failure_reason_type: String,
            request_context:
              T.any(
                HubSpotSDK::Automation::WorkflowsRequestContext::OrHash,
                HubSpotSDK::Automation::AgentRequestContext::OrHash,
                HubSpotSDK::Automation::CopilotRequestContext::OrHash,
                HubSpotSDK::Automation::StandaloneRequestContext::OrHash,
                HubSpotSDK::Automation::TestRequestContext::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          # The unique identifier for the callback.
          callback_id:,
          # Holds the output fields for the callback completion.
          output_fields:,
          # Contains the typed outputs for the callback completion.
          typed_outputs:,
          # Specifies the type of failure reason for the callback completion.
          failure_reason_type: nil,
          # Defines the context of the request, which can be one of several predefined
          # types.
          request_context: nil
        )
        end

        sig do
          override.returns(
            {
              callback_id: String,
              output_fields: T::Hash[Symbol, String],
              typed_outputs: T.anything,
              failure_reason_type: String,
              request_context:
                T.any(
                  HubSpotSDK::Automation::WorkflowsRequestContext,
                  HubSpotSDK::Automation::AgentRequestContext,
                  HubSpotSDK::Automation::CopilotRequestContext,
                  HubSpotSDK::Automation::StandaloneRequestContext,
                  HubSpotSDK::Automation::TestRequestContext
                )
            }
          )
        end
        def to_hash
        end

        # Defines the context of the request, which can be one of several predefined
        # types.
        module RequestContext
          extend HubSpotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubSpotSDK::Automation::WorkflowsRequestContext,
                HubSpotSDK::Automation::AgentRequestContext,
                HubSpotSDK::Automation::CopilotRequestContext,
                HubSpotSDK::Automation::StandaloneRequestContext,
                HubSpotSDK::Automation::TestRequestContext
              )
            end

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Automation::CallbackCompletionBatchRequest::RequestContext::Variants
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
