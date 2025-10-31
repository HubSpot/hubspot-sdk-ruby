# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class PublicAssociationDefinitionConfigurationUpdateResult < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
              )
            end
            attr_accessor :category

            sig { returns(Integer) }
            attr_accessor :type_id

            sig { returns(T.nilable(Integer)) }
            attr_reader :user_enforced_max_to_object_ids

            sig { params(user_enforced_max_to_object_ids: Integer).void }
            attr_writer :user_enforced_max_to_object_ids

            sig do
              params(
                category:
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category::OrSymbol,
                type_id: Integer,
                user_enforced_max_to_object_ids: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              category:,
              type_id:,
              user_enforced_max_to_object_ids: nil
            )
            end

            sig do
              override.returns(
                {
                  category:
                    HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol,
                  type_id: Integer,
                  user_enforced_max_to_object_ids: Integer
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
                    HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              HUBSPOT_DEFINED =
                T.let(
                  :HUBSPOT_DEFINED,
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
                )
              USER_DEFINED =
                T.let(
                  :USER_DEFINED,
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
                )
              INTEGRATOR_DEFINED =
                T.let(
                  :INTEGRATOR_DEFINED,
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
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
