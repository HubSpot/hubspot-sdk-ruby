# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationSpec < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::BatchInputPublicAssociationSpec,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubSpotSDK::Crm::PublicAssociationSpec]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubSpotSDK::Crm::PublicAssociationSpec::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubSpotSDK::Crm::PublicAssociationSpec] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
