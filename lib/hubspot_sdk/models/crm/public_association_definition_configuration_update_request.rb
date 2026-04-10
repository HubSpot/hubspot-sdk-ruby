# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionConfigurationUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute category
        #   Specifies the category of the association, which can be HUBSPOT_DEFINED,
        #   INTEGRATOR_DEFINED, or USER_DEFINED.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category]
        required :category,
                 enum: -> { HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category }

        # @!attribute max_to_object_ids
        #   Defines the maximum number of target object IDs that can be associated.
        #
        #   @return [Integer]
        required :max_to_object_ids, Integer, api_name: :maxToObjectIds

        # @!attribute type_id
        #   A unique identifier for the association type.
        #
        #   @return [Integer]
        required :type_id, Integer, api_name: :typeId

        # @!method initialize(category:, max_to_object_ids:, type_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateRequest}
        #   for more details.
        #
        #   @param category [Symbol, HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateRequest::Category] Specifies the category of the association, which can be HUBSPOT_DEFINED, INTEGRA
        #
        #   @param max_to_object_ids [Integer] Defines the maximum number of target object IDs that can be associated.
        #
        #   @param type_id [Integer] A unique identifier for the association type.

        # Specifies the category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        #
        # @see HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationUpdateRequest#category
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
