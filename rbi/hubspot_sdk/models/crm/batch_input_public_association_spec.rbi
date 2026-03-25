# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationSpec < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchInputPublicAssociationSpec,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::Crm::PublicAssociationSpec]) }
        attr_accessor :inputs

        sig do
          params(
            inputs: T::Array[HubspotSDK::Crm::PublicAssociationSpec::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::Crm::PublicAssociationSpec] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
