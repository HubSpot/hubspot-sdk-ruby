# typed: strong

module HubSpotSDK
  module Models
    module Automation
      class BatchInputCallbackCompletionBatchRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Automation::BatchInputCallbackCompletionBatchRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubSpotSDK::Automation::CallbackCompletionBatchRequest]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::Automation::CallbackCompletionBatchRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubSpotSDK::Automation::CallbackCompletionBatchRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
