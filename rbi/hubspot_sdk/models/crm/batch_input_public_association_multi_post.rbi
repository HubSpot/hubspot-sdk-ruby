# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchInputPublicAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchInputPublicAssociationMultiPost,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Array[HubspotSDK::CRM::PublicAssociationMultiPost]) }
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[HubspotSDK::CRM::PublicAssociationMultiPost::OrHash]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            { inputs: T::Array[HubspotSDK::CRM::PublicAssociationMultiPost] }
          )
        end
        def to_hash
        end
      end
    end
  end
end
