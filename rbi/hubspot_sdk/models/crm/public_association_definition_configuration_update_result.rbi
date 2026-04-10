# typed: strong

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionConfigurationUpdateResult < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult,
              HubSpotSDK::Internal::AnyHash
            )
          end

        # The category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        sig do
          returns(
            HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
          )
        end
        attr_accessor :category

        # An integer value used to uniquely identify a specific association type within
        # its Association Category.
        sig { returns(Integer) }
        attr_accessor :type_id

        # The maximum number of object IDs that a user can enforce for associations.
        sig { returns(T.nilable(Integer)) }
        attr_reader :user_enforced_max_to_object_ids

        sig { params(user_enforced_max_to_object_ids: Integer).void }
        attr_writer :user_enforced_max_to_object_ids

        sig do
          params(
            category:
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category::OrSymbol,
            type_id: Integer,
            user_enforced_max_to_object_ids: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # The category of the association, which can be HUBSPOT_DEFINED,
          # INTEGRATOR_DEFINED, or USER_DEFINED.
          category:,
          # An integer value used to uniquely identify a specific association type within
          # its Association Category.
          type_id:,
          # The maximum number of object IDs that a user can enforce for associations.
          user_enforced_max_to_object_ids: nil
        )
        end

        sig do
          override.returns(
            {
              category:
                HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol,
              type_id: Integer,
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
                HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HUBSPOT_DEFINED =
            T.let(
              :HUBSPOT_DEFINED,
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
            )
          INTEGRATOR_DEFINED =
            T.let(
              :INTEGRATOR_DEFINED,
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
            )
          USER_DEFINED =
            T.let(
              :USER_DEFINED,
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
            )
          WORK =
            T.let(
              :WORK,
              HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category::TaggedSymbol
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
