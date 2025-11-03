# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectBatchInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchInputSimplePublicObjectBatchInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::SimplePublicObjectBatchInput]) }
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubspotSDK::Crm::SimplePublicObjectBatchInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::Crm::SimplePublicObjectBatchInput] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
