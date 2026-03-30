# typed: strong

module HubspotSDK
  module Resources
    class Automation
      class Actions
        class Callbacks
          # Complete a specific blocked action execution by ID.
          sig do
            params(
              callback_id: String,
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
                ),
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def complete(
            callback_id,
            # Contains the output fields associated with the callback, with each field
            # represented as a key-value pair.
            output_fields:,
            # Holds the typed outputs related to the callback, structured as an object.
            typed_outputs:,
            # Indicates the reason for the failure of a callback completion.
            failure_reason_type: nil,
            # Specifies the context in which the request is made, which can be one of several
            # predefined contexts.
            request_context: nil,
            request_options: {}
          )
          end

          # Complete a batch of blocked action executions.
          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::Automation::CallbackCompletionBatchRequest::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def complete_batch(inputs:, request_options: {})
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
