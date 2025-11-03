# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchInputSimplePublicObjectID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchInputSimplePublicObjectID,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::SimplePublicObjectID]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubspotSDK::Crm::SimplePublicObjectID::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::Crm::SimplePublicObjectID] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
