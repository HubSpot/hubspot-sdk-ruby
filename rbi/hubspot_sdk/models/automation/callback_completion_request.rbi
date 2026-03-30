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

        # Contains the output fields associated with the callback, with each field
        # represented as a key-value pair.
        sig { returns(T::Hash[Symbol, String]) }
        attr_accessor :output_fields

        # Holds the typed outputs related to the callback, structured as an object.
        sig { returns(T.anything) }
        attr_accessor :typed_outputs

        # Indicates the reason for the failure of a callback completion.
        sig { returns(T.nilable(String)) }
        attr_reader :failure_reason_type

        sig { params(failure_reason_type: String).void }
        attr_writer :failure_reason_type

        # Specifies the context in which the request is made, which can be one of several
        # predefined contexts.
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
          # Contains the output fields associated with the callback, with each field
          # represented as a key-value pair.
          output_fields:,
          # Holds the typed outputs related to the callback, structured as an object.
          typed_outputs:,
          # Indicates the reason for the failure of a callback completion.
          failure_reason_type: nil,
          # Specifies the context in which the request is made, which can be one of several
          # predefined contexts.
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

        # Specifies the context in which the request is made, which can be one of several
        # predefined contexts.
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
