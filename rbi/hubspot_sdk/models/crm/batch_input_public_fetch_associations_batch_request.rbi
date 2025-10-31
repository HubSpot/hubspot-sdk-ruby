# typed: strong

module HubspotSDK
  module Models
    module CRM
      class BatchInputPublicFetchAssociationsBatchRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::BatchInputPublicFetchAssociationsBatchRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[HubspotSDK::CRM::PublicFetchAssociationsBatchRequest]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::CRM::PublicFetchAssociationsBatchRequest::OrHash
              ]
          ).returns(T.attached_class)
        end
        def self.new(inputs:)
        end

        sig do
          override.returns(
            {
              inputs:
                T::Array[HubspotSDK::CRM::PublicFetchAssociationsBatchRequest]
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
