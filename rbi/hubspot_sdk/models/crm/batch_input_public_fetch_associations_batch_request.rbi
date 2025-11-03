# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicFetchAssociationsBatchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchInputPublicFetchAssociationsBatchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::Crm::PublicFetchAssociationsBatchRequest]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Crm::PublicFetchAssociationsBatchRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubspotSDK::Crm::PublicFetchAssociationsBatchRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
