# typed: strong

module HubSpotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowBatchCloneRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Cms::BatchInputHubDBTableRowBatchCloneRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Cms::HubDBTableRowBatchCloneRequest])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubSpotSDK::Cms::HubDBTableRowBatchCloneRequest::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs: T::Array[HubSpotSDK::Cms::HubDBTableRowBatchCloneRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
