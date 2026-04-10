# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionUserConfiguration < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        sig do
          returns(
            HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
          )
        end
        attr_accessor :category

        # A unique integer identifier for the association type within its category.
        sig { returns(Integer) }
        attr_accessor :type_id

        # A descriptor providing context about the relationship between associated
        # records.
        sig { returns(T.nilable(String)) }
        attr_reader :label

        sig { params(label: String).void }
        attr_writer :label

        # The maximum number of target object IDs that a user can enforce in an
        # association.
        sig { returns(T.nilable(Integer)) }
        attr_reader :user_enforced_max_to_object_ids

        sig { params(user_enforced_max_to_object_ids: Integer).void }
        attr_writer :user_enforced_max_to_object_ids

        sig do
          params(
            category:
              HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration::Category::OrSymbol,
            type_id: Integer,
            label: String,
            user_enforced_max_to_object_ids: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The category of the association, which can be HUBSPOT_DEFINED,
          # INTEGRATOR_DEFINED, or USER_DEFINED.
          category:,
          # A unique integer identifier for the association type within its category.
          type_id:,
          # A descriptor providing context about the relationship between associated
          # records.
          label: nil,
          # The maximum number of target object IDs that a user can enforce in an
          # association.
          user_enforced_max_to_object_ids: nil
        )
        end

        sig do
          override.returns(
            {
              category:
                HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol,
              type_id: Integer,
              label: String,
              user_enforced_max_to_object_ids: Integer
            }
          )
        end
        def to_hash
        end

        # The category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        module Category
          extend HubSpotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT_DEFINED =
            T.let(
              :HUBSPOT_DEFINED,
              HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
            )
          INTEGRATOR_DEFINED =
            T.let(
              :INTEGRATOR_DEFINED,
              HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
            )
          USER_DEFINED =
            T.let(
              :USER_DEFINED,
              HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicAssociationDefinitionUserConfiguration::Category::TaggedSymbol
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
