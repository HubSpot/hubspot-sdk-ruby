# typed: strong

module HubspotSDK
  module Models
    module Automation
      class BatchInputCallbackCompletionBatchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Automation::BatchInputCallbackCompletionBatchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::Automation::CallbackCompletionBatchRequest]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Automation::CallbackCompletionBatchRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubspotSDK::Automation::CallbackCompletionBatchRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
