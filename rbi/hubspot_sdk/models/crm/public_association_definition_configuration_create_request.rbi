# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionConfigurationCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # Specifies the category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        sig do
          returns(
            HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category::OrSymbol
          )
        end
        attr_accessor :category

        # The maximum number of target object IDs that can be associated with a single
        # source object.
        sig { returns(Integer) }
        attr_accessor :max_to_object_ids

        # An integer used to uniquely identify a specific association type within its
        # category.
        sig { returns(Integer) }
        attr_accessor :type_id

        sig do
          params(
            category:
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category::OrSymbol,
            max_to_object_ids: Integer,
            type_id: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # Specifies the category of the association, which can be HUBSPOT_DEFINED,
          # INTEGRATOR_DEFINED, or USER_DEFINED.
          category:,
          # The maximum number of target object IDs that can be associated with a single
          # source object.
          max_to_object_ids:,
          # An integer used to uniquely identify a specific association type within its
          # category.
          type_id:
        )
        end

        sig do
          override.returns(
            {
              category:
                HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category::OrSymbol,
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
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT_DEFINED =
            T.let(
              :HUBSPOT_DEFINED,
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category::TaggedSymbol
            )
          INTEGRATOR_DEFINED =
            T.let(
              :INTEGRATOR_DEFINED,
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category::TaggedSymbol
            )
          USER_DEFINED =
            T.let(
              :USER_DEFINED,
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category::TaggedSymbol
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
