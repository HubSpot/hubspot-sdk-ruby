# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::CollectionResponsePublicAssociationDefinitionUserConfigurationNoPaging,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            T::Array[
              HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration
            ]
          )
        end
        attr_accessor :results

        sig do
          params(
            results:
              T::Array[
                HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration::OrHash
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
                  HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration
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
