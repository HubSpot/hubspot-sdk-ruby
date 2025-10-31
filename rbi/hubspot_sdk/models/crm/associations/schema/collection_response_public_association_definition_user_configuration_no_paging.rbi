# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration
                ]
              )
            end
            attr_accessor :results

            sig do
              params(
                results:
                  T::Array[
                    HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(results:)
            end

            sig do
              override.returns(
                {
                  results:
                    T::Array[
                      HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration
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
