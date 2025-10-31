# typed: strong

module HubspotSDK
  module Models
    module CRM
      class AssociationSpecWithLabel < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::CRM::AssociationSpecWithLabel,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig do
          returns(
            HubspotSDK::CRM::AssociationSpecWithLabel::Category::TaggedSymbol
          )
        end
        attr_accessor :category

        sig { returns(Integer) }
        attr_accessor :type_id

        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        sig do
          params(
            category:
              HubspotSDK::CRM::AssociationSpecWithLabel::Category::OrSymbol,
            type_id: Integer,
            label: String
          ).returns(T.attached_class)
        end
        def self.new(category:, type_id:, label: nil)
        end

        sig do
          override.returns(
            {
              category:
                HubspotSDK::CRM::AssociationSpecWithLabel::Category::TaggedSymbol,
              type_id: Integer,
              label: String
            }
          )
        end
        def to_hash
        end

        module Category
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::CRM::AssociationSpecWithLabel::Category)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT_DEFINED =
            T.let(
              :HUBSPOT_DEFINED,
              HubspotSDK::CRM::AssociationSpecWithLabel::Category::TaggedSymbol
            )
          USER_DEFINED =
            T.let(
              :USER_DEFINED,
              HubspotSDK::CRM::AssociationSpecWithLabel::Category::TaggedSymbol
            )
          INTEGRATOR_DEFINED =
            T.let(
              :INTEGRATOR_DEFINED,
              HubspotSDK::CRM::AssociationSpecWithLabel::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::CRM::AssociationSpecWithLabel::Category::TaggedSymbol
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
