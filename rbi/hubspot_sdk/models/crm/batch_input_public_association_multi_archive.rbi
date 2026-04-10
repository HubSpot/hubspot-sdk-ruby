# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationMultiArchive < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::BatchInputPublicAssociationMultiArchive,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubSpotSDK::Crm::PublicAssociationMultiArchive])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubSpotSDK::Crm::PublicAssociationMultiArchive::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubSpotSDK::Crm::PublicAssociationMultiArchive] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
