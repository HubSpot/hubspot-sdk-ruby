# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPropertyCreate < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::BatchInputPropertyCreate,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::PropertyCreate]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubSpotSDK::Crm::PropertyCreate::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubSpotSDK::Crm::PropertyCreate] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
