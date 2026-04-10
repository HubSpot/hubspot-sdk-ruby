# frozen_string_literal: true

module HubSpotSDK
  module Models
    class AssociationSpec < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute association_category
      #   The category of the association, such as "HUBSPOT_DEFINED".
      #
      #   @return [Symbol, HubSpotSDK::Models::AssociationSpec::AssociationCategory]
      required :association_category,
               enum: -> { HubSpotSDK::AssociationSpec::AssociationCategory },
               api_name: :associationCategory

      # @!attribute association_type_id
      #   The ID representing the specific type of association.
      #
      #   @return [Integer]
      required :association_type_id, Integer, api_name: :associationTypeId

      # @!method initialize(association_category:, association_type_id:)
      #   Defines the type, direction, and details of the relationship between two CRM
      #   objects.
      #
      #   @param association_category [Symbol, HubSpotSDK::Models::AssociationSpec::AssociationCategory] The category of the association, such as "HUBSPOT_DEFINED".
      #
      #   @param association_type_id [Integer] The ID representing the specific type of association.

      # The category of the association, such as "HUBSPOT_DEFINED".
      #
      # @see HubSpotSDK::Models::AssociationSpec#association_category
      module AssociationCategory
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
