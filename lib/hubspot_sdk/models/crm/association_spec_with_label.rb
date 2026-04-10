# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class AssociationSpecWithLabel < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute category
        #   The category of the association, such as HUBSPOT_DEFINED, USER_DEFINED, or
        #   INTEGRATOR_DEFINED.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::AssociationSpecWithLabel::Category]
        required :category, enum: -> { HubSpotSDK::Crm::AssociationSpecWithLabel::Category }

        # @!attribute type_id
        #   The unique identifier for the type of association.
        #
        #   @return [Integer]
        required :type_id, Integer, api_name: :typeId

        # @!attribute label
        #   A label describing the association between two objects.
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(category:, type_id:, label: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::AssociationSpecWithLabel} for more details.
        #
        #   Defines the type, direction, and details of the relationship between two CRM
        #   objects.
        #
        #   @param category [Symbol, HubSpotSDK::Models::Crm::AssociationSpecWithLabel::Category] The category of the association, such as HUBSPOT_DEFINED, USER_DEFINED, or INTEG
        #
        #   @param type_id [Integer] The unique identifier for the type of association.
        #
        #   @param label [String] A label describing the association between two objects.

        # The category of the association, such as HUBSPOT_DEFINED, USER_DEFINED, or
        # INTEGRATOR_DEFINED.
        #
        # @see HubSpotSDK::Models::Crm::AssociationSpecWithLabel#category
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
