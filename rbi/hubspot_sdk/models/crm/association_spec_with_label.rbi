# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class AssociationSpecWithLabel < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::AssociationSpecWithLabel,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Association category. Can be HUBSPOT_DEFINED, USER_DEFINED, INTEGRATOR_DEFINED
        # or WORK
        sig do
          returns(
            HubSpotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
          )
        end
        attr_accessor :category

        # An integer value used to uniquely identify a specific association type within
        # its Association Category.
        sig { returns(Integer) }
        attr_accessor :type_id

        # An optional descriptor that provides additional context about the relationship
        # between associated records, such as "Mentor" and "Mentee".
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # Defines the type, direction, and details of the relationship between two CRM
        # objects.
        sig do
          params(
            category:
              HubSpotSDK::Crm::AssociationSpecWithLabel::Category::OrSymbol,
            type_id: Integer,
            label: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Association category. Can be HUBSPOT_DEFINED, USER_DEFINED, INTEGRATOR_DEFINED
          # or WORK
          category:,
          # An integer value used to uniquely identify a specific association type within
          # its Association Category.
          type_id:,
          # An optional descriptor that provides additional context about the relationship
          # between associated records, such as "Mentor" and "Mentee".
          label: nil
        )
        end

        sig do
          override.returns(
            {
              category:
                HubSpotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol,
              type_id: Integer,
              label: String
            }
          )
        end
        def to_hash
        end

        # Association category. Can be HUBSPOT_DEFINED, USER_DEFINED, INTEGRATOR_DEFINED
        # or WORK
        module Category
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubSpotSDK::Crm::AssociationSpecWithLabel::Category)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT_DEFINED =
            T.let(
              :HUBSPOT_DEFINED,
              HubSpotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
            )
          INTEGRATOR_DEFINED =
            T.let(
              :INTEGRATOR_DEFINED,
              HubSpotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
            )
          USER_DEFINED =
            T.let(
              :USER_DEFINED,
              HubSpotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubSpotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::AssociationSpecWithLabel::Category::TaggedSymbol
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
