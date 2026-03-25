# typed: strong

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionConfigurationUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest,
              HubspotSDK::Internal::AnyHash
            )
          end

        # Specifies the category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        sig do
          returns(
            HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category::OrSymbol
          )
        end
        attr_accessor :category

        # Defines the maximum number of target object IDs that can be associated.
        sig { returns(Integer) }
        attr_accessor :max_to_object_ids

        # A unique identifier for the association type.
        sig { returns(Integer) }
        attr_accessor :type_id

        sig do
          params(
            category:
              HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category::OrSymbol,
            max_to_object_ids: Integer,
            type_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the category of the association, which can be HUBSPOT_DEFINED,
          # INTEGRATOR_DEFINED, or USER_DEFINED.
          category:,
          # Defines the maximum number of target object IDs that can be associated.
          max_to_object_ids:,
          # A unique identifier for the association type.
          type_id:
        )
        end

        sig do
          override.returns(
            {
              category:
                HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category::OrSymbol,
              max_to_object_ids: Integer,
              type_id: Integer
            }
          )
        end
        def to_hash
        end

        # Specifies the category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        module Category
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT_DEFINED =
            T.let(
              :HUBSPOT_DEFINED,
              HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category::TaggedSymbol
            )
          INTEGRATOR_DEFINED =
            T.let(
              :INTEGRATOR_DEFINED,
              HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category::TaggedSymbol
            )
          USER_DEFINED =
            T.let(
              :USER_DEFINED,
              HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category::TaggedSymbol
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
