# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        class BatchInputPublicFetchAssociationsBatchRequest < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Associations::BatchInputPublicFetchAssociationsBatchRequest,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::Crm::Associations::PublicFetchAssociationsBatchRequest
              ]
            )
          end
          attr_accessor :inputs

          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::Crm::Associations::PublicFetchAssociationsBatchRequest::OrHash
                ]
            ).returns(T.attached_class)
          end
          def self.new(inputs:)
          end

          sig do
            override.returns(
              {
                inputs:
                  T::Array[
                    HubspotSDK::Crm::Associations::PublicFetchAssociationsBatchRequest
                  ]
              }
            )
          end
          def to_hash
          end
        end
      end
    end
  end
end
