# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PublicAssociationSpec < HubspotSDK::Internal::Type::BaseModel
        # @!attribute category
        #   Specifies the category of the association, which can be HUBSPOT_DEFINED,
        #   INTEGRATOR_DEFINED, or USER_DEFINED.
        #
        #   @return [String]
        required :category, String

        # @!attribute type_id
        #   A unique integer identifier for the specific association type within its
        #   category.
        #
        #   @return [Integer]
        required :type_id, Integer, api_name: :typeId

        # @!method initialize(category:, type_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::PublicAssociationSpec} for more details.
        #
        #   @param category [String] Specifies the category of the association, which can be HUBSPOT_DEFINED, INTEGRA
        #
        #   @param type_id [Integer] A unique integer identifier for the specific association type within its categor
      end
    end
  end
end
