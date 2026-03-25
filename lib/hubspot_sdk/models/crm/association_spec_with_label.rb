# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class AssociationSpecWithLabel < HubspotSDK::Internal::Type::BaseModel
        # @!attribute category
        #   The category of the association, such as HUBSPOT_DEFINED, USER_DEFINED, or
        #   INTEGRATOR_DEFINED.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::AssociationSpecWithLabel::Category]
        required :category, enum: -> { HubspotSDK::Crm::AssociationSpecWithLabel::Category }

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
        #   {HubspotSDK::Models::Crm::AssociationSpecWithLabel} for more details.
        #
        #   Defines the type, direction, and details of the relationship between two CRM
        #   objects.
        #
        #   @param category [Symbol, HubspotSDK::Models::Crm::AssociationSpecWithLabel::Category] The category of the association, such as HUBSPOT_DEFINED, USER_DEFINED, or INTEG
        #
        #   @param type_id [Integer] The unique identifier for the type of association.
        #
        #   @param label [String] A label describing the association between two objects.

        # The category of the association, such as HUBSPOT_DEFINED, USER_DEFINED, or
        # INTEGRATOR_DEFINED.
        #
        # @see HubspotSDK::Models::Crm::AssociationSpecWithLabel#category
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
