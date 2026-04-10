# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class BatchInputRecordIDInput < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::BatchInputRecordIDInput,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::RecordIDInput]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubSpotSDK::Crm::RecordIDInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns({ inputs: T::Array[HubSpotSDK::Crm::RecordIDInput] })
        end
        def to_hash
        end
      end
    end
  end
end
