# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionUserConfiguration < HubspotSDK::Internal::Type::BaseModel
        # @!attribute category
        #   The category of the association, which can be HUBSPOT_DEFINED,
        #   INTEGRATOR_DEFINED, or USER_DEFINED.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration::Category]
        required :category, enum: -> { HubspotSDK::Crm::PublicAssociationDefinitionUserConfiguration::Category }

        # @!attribute type_id
        #   A unique integer identifier for the association type within its category.
        #
        #   @return [Integer]
        required :type_id, Integer, api_name: :typeId

        # @!attribute label
        #   A descriptor providing context about the relationship between associated
        #   records.
        #
        #   @return [String, nil]
        optional :label, String

        # @!attribute user_enforced_max_to_object_ids
        #   The maximum number of target object IDs that a user can enforce in an
        #   association.
        #
        #   @return [Integer, nil]
        optional :user_enforced_max_to_object_ids, Integer, api_name: :userEnforcedMaxToObjectIds

        # @!method initialize(category:, type_id:, label: nil, user_enforced_max_to_object_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration} for more
        #   details.
        #
        #   @param category [Symbol, HubspotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration::Category] The category of the association, which can be HUBSPOT_DEFINED, INTEGRATOR_DEFINE
        #
        #   @param type_id [Integer] A unique integer identifier for the association type within its category.
        #
        #   @param label [String] A descriptor providing context about the relationship between associated records
        #
        #   @param user_enforced_max_to_object_ids [Integer] The maximum number of target object IDs that a user can enforce in an associatio

        # The category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        #
        # @see HubspotSDK::Models::Crm::PublicAssociationDefinitionUserConfiguration#category
        module Category
          extend HubspotSDK::Internal::Type::Enum

          HUBSPOT_DEFINED = :HUBSPOT_DEFINED
          INTEGRATOR_DEFINED = :INTEGRATOR_DEFINED
          USER_DEFINED = :USER_DEFINED
          WORK = :WORK

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
