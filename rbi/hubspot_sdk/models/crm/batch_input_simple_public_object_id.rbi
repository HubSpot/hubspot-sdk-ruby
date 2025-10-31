# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchInputSimplePublicObjectID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchInputSimplePublicObjectID,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::SimplePublicObjectID]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubspotSDK::CRM::SimplePublicObjectID::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::CRM::SimplePublicObjectID] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
