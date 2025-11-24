# typed: strong

module HubspotSDK
  module Models
    module Crm
      module Associations
        module Schema
          class PublicAssociationDefinitionConfigurationCreateRequest < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::Category::OrSymbol
              )
            end
            attr_accessor :category

            sig { returns(Integer) }
            attr_accessor :max_to_object_ids

            sig { returns(Integer) }
            attr_accessor :type_id

            sig do
              params(
                category:
                  HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::Category::OrSymbol,
                max_to_object_ids: Integer,
                type_id: Integer
              ).returns(T.attached_class)
            end
            def self.new(category:, max_to_object_ids:, type_id:)
            end

            sig do
              override.returns(
                {
                  category:
                    HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::Category::OrSymbol,
                  max_to_object_ids: Integer,
                  type_id: Integer
                }
              )
            end
            def to_hash
            end

            module Category
              extend HubspotSDK::Internal::Type::Enum

              TaggedSymbol =
                T.type_alias do
                  T.all(
                    Symbol,
                    HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::Category
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              HUBSPOT_DEFINED =
                T.let(
                  :HUBSPOT_DEFINED,
                  HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::Category::TaggedSymbol
                )
              INTEGRATOR_DEFINED =
                T.let(
                  :INTEGRATOR_DEFINED,
                  HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::Category::TaggedSymbol
                )
              USER_DEFINED =
                T.let(
                  :USER_DEFINED,
                  HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::Category::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::Crm::Associations::Schema::PublicAssociationDefinitionConfigurationCreateRequest::Category::TaggedSymbol
                  ]
                )
              end
              def self.values
              end
            end
          end
        end
      end
    end
  end
end
