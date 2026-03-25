# typed: strong

module HubspotSDK
  module Models
    module Crm
      class CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubspotSDK::Crm::PublicAssociationDefinitionUserConfiguration
            ]
          )
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubspotSDK::Crm::PublicAssociationDefinitionUserConfiguration::OrHash
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
                  HubspotSDK::Crm::PublicAssociationDefinitionUserConfiguration
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
