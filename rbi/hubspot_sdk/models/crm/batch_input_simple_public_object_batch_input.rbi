# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchInputSimplePublicObjectBatchInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchInputSimplePublicObjectBatchInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::SimplePublicObjectBatchInput]) }
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubspotSDK::CRM::SimplePublicObjectBatchInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::CRM::SimplePublicObjectBatchInput] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
