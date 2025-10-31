# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class CollectionResponsePublicAssociationDefinitionUserConfiguration < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Associations::Schema::CollectionResponsePublicAssociationDefinitionUserConfiguration,
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

            # Contains information pagination of results.
            sig { returns(T.nilable(HubspotSDK::Marketing::Paging)) }
            attr_reader :paging

            sig { params(paging: HubspotSDK::Marketing::Paging::OrHash).void }
            attr_writer :paging

            sig do
              params(
                results:
                  T::Array[
                    HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::OrHash
                  ],
                paging: HubspotSDK::Marketing::Paging::OrHash
              ).returns(T.attached_class)
            end
            def self.new(
              results:,
              # Contains information pagination of results.
              paging: nil
            )
            end

            sig do
              override.returns(
                {
                  results:
                    T::Array[
                      HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration
                    ],
                  paging: HubspotSDK::Marketing::Paging
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
