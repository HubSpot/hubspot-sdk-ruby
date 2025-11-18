# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          class BatchInputPublicAssociationDefinitionConfigurationCreateRequest < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Associations::Schema::BatchInputPublicAssociationDefinitionConfigurationCreateRequest,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest
                ]
              )
            end
            attr_accessor :inputs

            sig do
              params(
                inputs:
                  T::Array[
                    HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::OrHash
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
                      HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest
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
