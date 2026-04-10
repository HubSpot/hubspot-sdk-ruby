# typed: strong

module HubSpotSDK
  module Models
    module Events
      class BatchedBehavioralEventHTTPCompletionRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Events::BatchedBehavioralEventHTTPCompletionRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubSpotSDK::Events::BehavioralEventHTTPCompletionRequest]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubSpotSDK::Events::BehavioralEventHTTPCompletionRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[
                  HubSpotSDK::Events::BehavioralEventHTTPCompletionRequest
                ]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
