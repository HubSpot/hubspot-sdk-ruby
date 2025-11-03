# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Associations
        class AssociationSpec1 < HubspotSDK::Internal::Type::BaseModel
          # @!attribute association_category
          #   The category of the association, such as "HUBSPOT_DEFINED".
          #
          #   @return [Symbol, HubspotSDK::Models::Crm::Associations::AssociationSpec1::AssociationCategory]
          required :association_category,
                   enum: -> { HubspotSDK::Crm::Associations::AssociationSpec1::AssociationCategory },
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
          #   @param association_category [Symbol, HubspotSDK::Models::Crm::Associations::AssociationSpec1::AssociationCategory] The category of the association, such as "HUBSPOT_DEFINED".
          #
          #   @param association_type_id [Integer] The ID representing the specific type of association.

          # The category of the association, such as "HUBSPOT_DEFINED".
          #
          # @see HubspotSDK::Models::Crm::Associations::AssociationSpec1#association_category
          module AssociationCategory
            extend HubspotSDK::Internal::Type::Enum

            HUBSPOT_DEFINED = :HUBSPOT_DEFINED
            USER_DEFINED = :USER_DEFINED
            INTEGRATOR_DEFINED = :INTEGRATOR_DEFINED

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
