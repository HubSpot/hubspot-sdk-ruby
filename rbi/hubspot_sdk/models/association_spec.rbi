# typed: strong

module HubspotSDK
  module Models
    class AssociationSpec < HubspotSDK::Internal::Type::BaseModel
      OrHash =
        T.type_alias do
          T.any(HubspotSDK::AssociationSpec, HubspotSDK::Internal::AnyHash)
        end

      # The category of the association, such as "HUBSPOT_DEFINED".
      sig do
        returns(HubspotSDK::AssociationSpec::AssociationCategory::OrSymbol)
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
            HubspotSDK::AssociationSpec::AssociationCategory::OrSymbol,
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
              HubspotSDK::AssociationSpec::AssociationCategory::OrSymbol,
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
            T.all(Symbol, HubspotSDK::AssociationSpec::AssociationCategory)
          end
        OrSymbol = T.type_alias { T.any(Symbol, String) }

        HUBSPOT_DEFINED =
          T.let(
            :HUBSPOT_DEFINED,
            HubspotSDK::AssociationSpec::AssociationCategory::TaggedSymbol
          )
        USER_DEFINED =
          T.let(
            :USER_DEFINED,
            HubspotSDK::AssociationSpec::AssociationCategory::TaggedSymbol
          )
        INTEGRATOR_DEFINED =
          T.let(
            :INTEGRATOR_DEFINED,
            HubspotSDK::AssociationSpec::AssociationCategory::TaggedSymbol
          )

        sig do
          override.returns(
            T::Array[
              HubspotSDK::AssociationSpec::AssociationCategory::TaggedSymbol
            ]
          )
        end
        def self.values
        end
      end
    end
  end
end
