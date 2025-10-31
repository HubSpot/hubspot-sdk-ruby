# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        module Schema
          class PublicAssociationDefinitionUserConfiguration < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
              )
            end
            attr_accessor :category

            sig { returns(Integer) }
            attr_accessor :type_id

            sig { returns(T.nilable(String)) }
            attr_reader :label

            sig { params(label: String).void }
            attr_writer :label

            sig { returns(T.nilable(Integer)) }
            attr_reader :user_enforced_max_to_object_ids

            sig { params(user_enforced_max_to_object_ids: Integer).void }
            attr_writer :user_enforced_max_to_object_ids

            sig do
              params(
                category:
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category::OrSymbol,
                type_id: Integer,
                label: String,
                user_enforced_max_to_object_ids: Integer
              ).returns(T.attached_class)
            end
            def self.new(
              category:,
              type_id:,
              label: nil,
              user_enforced_max_to_object_ids: nil
            )
            end

            sig do
              override.returns(
                {
                  category:
                    HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol,
                  type_id: Integer,
                  label: String,
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
                    HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category
                  )
                end
              OrSymbol = T.type_alias { T.any(Symbol, String) }

              HUBSPOT_DEFINED =
                T.let(
                  :HUBSPOT_DEFINED,
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
                )
              USER_DEFINED =
                T.let(
                  :USER_DEFINED,
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
                )
              INTEGRATOR_DEFINED =
                T.let(
                  :INTEGRATOR_DEFINED,
                  HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
                )

              sig do
                override.returns(
                  T::Array[
                    HubspotSDK::CRM::Associations::Schema::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
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
