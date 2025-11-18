# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          class BatchInputPublicAssociationDefinitionConfigurationUpdateRequest < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Associations::Schema::BatchInputPublicAssociationDefinitionConfigurationUpdateRequest,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest
                ]
              )
            end
            attr_accessor :inputs

            sig do
              params(
                inputs:
                  T::Array[
                    HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest::OrHash
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
                      HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateRequest
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
end
