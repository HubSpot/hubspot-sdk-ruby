# typed: strong

module HubspotSDK
  module Models
    module Crm
      class AssociationSpecWithLabel < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::AssociationSpecWithLabel,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The category of the association, such as HUBSPOT_DEFINED, USER_DEFINED, or
        # INTEGRATOR_DEFINED.
        sig do
          returns(
            HubspotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
          )
        end
        attr_accessor :category

        # The unique identifier for the type of association.
        sig { returns(Integer) }
        attr_accessor :type_id

        # A label describing the association between two objects.
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # Defines the type, direction, and details of the relationship between two CRM
        # objects.
        sig do
          params(
            category:
              HubspotSDK::Crm::AssociationSpecWithLabel::Category::OrSymbol,
            type_id: Integer,
            label: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The category of the association, such as HUBSPOT_DEFINED, USER_DEFINED, or
          # INTEGRATOR_DEFINED.
          category:,
          # The unique identifier for the type of association.
          type_id:,
          # A label describing the association between two objects.
          label: nil
        )
        end

        sig do
          override.returns(
            {
              category:
                HubspotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol,
              type_id: Integer,
              label: String
            }
          )
        end
        def to_hash
        end

        # The category of the association, such as HUBSPOT_DEFINED, USER_DEFINED, or
        # INTEGRATOR_DEFINED.
        module Category
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Crm::AssociationSpecWithLabel::Category)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT_DEFINED =
            T.let(
              :HUBSPOT_DEFINED,
              HubspotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
            )
          INTEGRATOR_DEFINED =
            T.let(
              :INTEGRATOR_DEFINED,
              HubspotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
            )
          USER_DEFINED =
            T.let(
              :USER_DEFINED,
              HubspotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubspotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
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
