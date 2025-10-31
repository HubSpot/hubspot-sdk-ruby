# typed: strong

module HubspotSDK
  module Models
    module CRM
      module Associations
        class AssociationSpec1 < HubspotSDK::Internal::Type::BaseModel
          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::CRM::Associations::AssociationSpec1,
                HubspotSDK::Internal::AnyHash
              )
            end

          # The category of the association, such as "HUBSPOT_DEFINED".
          sig do
            returns(
              HubspotSDK::CRM::Associations::AssociationSpec1::AssociationCategory::OrSymbol
            )
          end
          attr_accessor :association_category

          # The ID representing the specific type of association.
          sig { returns(Integer) }
          attr_accessor :association_type_id

          # Defines the type, direction, and details of the relationship between two CRM
          # objects.
          sig do
            params(
              association_category:
                HubspotSDK::CRM::Associations::AssociationSpec1::AssociationCategory::OrSymbol,
              association_type_id: Integer
            ).returns(T.attached_class)
          end
          def self.new(
            # The category of the association, such as "HUBSPOT_DEFINED".
            association_category:,
            # The ID representing the specific type of association.
            association_type_id:
          )
          end

          sig do
            override.returns(
              {
                association_category:
                  HubspotSDK::CRM::Associations::AssociationSpec1::AssociationCategory::OrSymbol,
                association_type_id: Integer
              }
            )
          end
          def to_hash
          end

          # The category of the association, such as "HUBSPOT_DEFINED".
          module AssociationCategory
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::CRM::Associations::AssociationSpec1::AssociationCategory
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HUBSPOT_DEFINED =
              T.let(
                :HUBSPOT_DEFINED,
                HubspotSDK::CRM::Associations::AssociationSpec1::AssociationCategory::TaggedSymbol
              )
            USER_DEFINED =
              T.let(
                :USER_DEFINED,
                HubspotSDK::CRM::Associations::AssociationSpec1::AssociationCategory::TaggedSymbol
              )
            INTEGRATOR_DEFINED =
              T.let(
                :INTEGRATOR_DEFINED,
                HubspotSDK::CRM::Associations::AssociationSpec1::AssociationCategory::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::CRM::Associations::AssociationSpec1::AssociationCategory::TaggedSymbol
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
