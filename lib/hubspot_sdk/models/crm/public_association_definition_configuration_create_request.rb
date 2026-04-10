# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class PublicAssociationDefinitionConfigurationCreateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute category
        #   Specifies the category of the association, which can be HUBSPOT_DEFINED,
        #   INTEGRATOR_DEFINED, or USER_DEFINED.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category]
        required :category,
                 enum: -> { HubSpotSDK::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category }

        # @!attribute max_to_object_ids
        #   The maximum number of target object IDs that can be associated with a single
        #   source object.
        #
        #   @return [Integer]
        required :max_to_object_ids, Integer, api_name: :maxToObjectIds

        # @!attribute type_id
        #   An integer used to uniquely identify a specific association type within its
        #   category.
        #
        #   @return [Integer]
        required :type_id, Integer, api_name: :typeId

        # @!method initialize(category:, max_to_object_ids:, type_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationCreateRequest}
        #   for more details.
        #
        #   @param category [Symbol, HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationCreateRequest::Category] Specifies the category of the association, which can be HUBSPOT_DEFINED, INTEGRA
        #
        #   @param max_to_object_ids [Integer] The maximum number of target object IDs that can be associated with a single sou
        #
        #   @param type_id [Integer] An integer used to uniquely identify a specific association type within its cate

        # Specifies the category of the association, which can be HUBSPOT_DEFINED,
        # INTEGRATOR_DEFINED, or USER_DEFINED.
        #
        # @see HubSpotSDK::Models::Crm::PublicAssociationDefinitionConfigurationCreateRequest#category
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
