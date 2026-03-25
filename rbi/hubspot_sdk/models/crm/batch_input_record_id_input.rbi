# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchInputRecordIDInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchInputRecordIDInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::RecordIDInput]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubspotSDK::Crm::RecordIDInput::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns({ inputs: T::Array[HubspotSDK::Crm::RecordIDInput] })
        end
        def to_hash
        end
      end
    end
  end
end
