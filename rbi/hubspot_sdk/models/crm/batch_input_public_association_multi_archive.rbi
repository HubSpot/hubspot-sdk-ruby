# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchInputPublicAssociationMultiArchive < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchInputPublicAssociationMultiArchive,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::CRM::PublicAssociationMultiArchive])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubspotSDK::CRM::PublicAssociationMultiArchive::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::CRM::PublicAssociationMultiArchive] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
