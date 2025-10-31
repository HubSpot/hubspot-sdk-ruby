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
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def complete(
            # The ID of the action execution.
            callback_id,
            output_fields:,
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
