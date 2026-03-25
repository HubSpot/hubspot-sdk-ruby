# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicDefaultAssociationMultiPost < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchInputPublicDefaultAssociationMultiPost,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(T::Array[HubspotSDK::Crm::PublicDefaultAssociationMultiPost])
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Crm::PublicDefaultAssociationMultiPost::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubspotSDK::Crm::PublicDefaultAssociationMultiPost]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
