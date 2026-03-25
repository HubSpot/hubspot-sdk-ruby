# typed: strong

module HubspotSDK
  module Models
    module Automation
      class CallbackCompletionRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::CallbackCompletionRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :output_fields

        sig { returns(T.anything) }
        attr_accessor :typed_outputs

        sig { returns(T.nilable(String)) }
        attr_reader :failure_reason_type

        sig { params(failure_reason_type: String).void }
        attr_writer :failure_reason_type

        sig do
          returns(
            T.nilable(
              T.any(
                HubspotSDK::Automation::WorkflowsRequestContext,
                HubspotSDK::Automation::AgentRequestContext,
                HubspotSDK::Automation::CopilotRequestContext,
                HubspotSDK::Automation::StandaloneRequestContext,
                HubspotSDK::Automation::TestRequestContext
              )
            )
          )
        end
        attr_reader :request_context

        sig do
          params(
            request_context:
              T.any(
                HubspotSDK::Automation::WorkflowsRequestContext::OrHash,
                HubspotSDK::Automation::AgentRequestContext::OrHash,
                HubspotSDK::Automation::CopilotRequestContext::OrHash,
                HubspotSDK::Automation::StandaloneRequestContext::OrHash,
                HubspotSDK::Automation::TestRequestContext::OrHash
              )
          ).void
        end
        attr_writer :request_context

        sig do
          params(
            output_fields: T::Hash[Symbol, String],
            typed_outputs: T.anything,
            failure_reason_type: String,
            request_context:
              T.any(
                HubspotSDK::Automation::WorkflowsRequestContext::OrHash,
                HubspotSDK::Automation::AgentRequestContext::OrHash,
                HubspotSDK::Automation::CopilotRequestContext::OrHash,
                HubspotSDK::Automation::StandaloneRequestContext::OrHash,
                HubspotSDK::Automation::TestRequestContext::OrHash
              )
          ).returns(T.attached_class)
        end
        def self.new(
          output_fields:,
          typed_outputs:,
          failure_reason_type: nil,
          request_context: nil
        )
        end

        sig do
          override.returns(
            {
              output_fields: T::Hash[Symbol, String],
              typed_outputs: T.anything,
              failure_reason_type: String,
              request_context:
                T.any(
                  HubspotSDK::Automation::WorkflowsRequestContext,
                  HubspotSDK::Automation::AgentRequestContext,
                  HubspotSDK::Automation::CopilotRequestContext,
                  HubspotSDK::Automation::StandaloneRequestContext,
                  HubspotSDK::Automation::TestRequestContext
                )
            }
          )
        end
        def to_hash
        end

        module RequestContext
          extend HubspotSDK::Internal::Type::Union

          Variants =
            T.type_alias do
              T.any(
                HubspotSDK::Automation::WorkflowsRequestContext,
                HubspotSDK::Automation::AgentRequestContext,
                HubspotSDK::Automation::CopilotRequestContext,
                HubspotSDK::Automation::StandaloneRequestContext,
                HubspotSDK::Automation::TestRequestContext
              )
            end

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Automation::CallbackCompletionRequest::RequestContext::Variants
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
