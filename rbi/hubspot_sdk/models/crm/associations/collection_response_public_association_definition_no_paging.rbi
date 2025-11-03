# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        class CollectionResponsePublicAssociationDefinitionNoPaging < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Crm::Associations::CollectionResponsePublicAssociationDefinitionNoPaging,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                HubspotSDK::Crm::Associations::PublicAssociationDefinition
              ]
            )
          end
          attr_accessor :results

          sig do
            params(
              results:
                T::Array[
                  HubspotSDK::Crm::Associations::PublicAssociationDefinition::OrHash
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
                    HubspotSDK::Crm::Associations::PublicAssociationDefinition
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
