# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionConfigurationUpdateResult < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute category
        #   The category of the association, which can be HUBSPOT_DEFINED,
        #   INTEGRATOR_DEFINED, or USER_DEFINED.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category]
        required :category,
                 enum: -> { HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category }

        # @!attribute type_id
        #   An integer value used to uniquely identify a specific association type within
        #   its Association Category.
        #
        #   @return [Integer]
        required :type_id, Integer, api_name: :typeId

        # @!attribute user_enforced_max_to_object_ids
        #   The maximum number of object IDs that a user can enforce for associations.
        #
        #   @return [Integer, nil]
        optional :user_enforced_max_to_object_ids, Integer, api_name: :userEnforcedMaxToObjectIds

        # @!method initialize(category:, type_id:, user_enforced_max_to_object_ids: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateResult}
        #   for more details.
        #
        #   @param category [Symbol, HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateResult::Category] The category of the association, which can be HUBSPOT_DEFINED, INTEGRATOR_DEFINE
        #
        #   @param type_id [Integer] An integer value used to uniquely identify a specific association type within it
        #
        #   @param user_enforced_max_to_object_ids [Integer] The maximum number of object IDs that a user can enforce for associations.

        # The category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        #
        # @see HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateResult#category
        module Category
          extend HubSpotSDK::Internal::Type::Enum

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
