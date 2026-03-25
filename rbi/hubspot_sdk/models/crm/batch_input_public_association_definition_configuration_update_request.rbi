# typed: strong

module HubspotSDK
  module Models
    module Crm
      class BatchInputPublicAssociationDefinitionConfigurationUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::BatchInputPublicAssociationDefinitionConfigurationUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest
            ]
          )
        end
        attr_accessor :inputs

        sig do
          params(
            inputs:
              T::Array[
                HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::OrHash
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
                  HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest
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
