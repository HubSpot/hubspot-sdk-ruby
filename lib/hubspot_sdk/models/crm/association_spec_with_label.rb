# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class AssociationSpecWithLabel < HubspotSDK::Internal::Type::BaseModel
        # @!attribute category
        #   Association category. Can be HUBSPOT_DEFINED, USER_DEFINED, INTEGRATOR_DEFINED
        #   or WORK
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::AssociationSpecWithLabel::Category]
        required :category, enum: -> { HubspotSDK::Crm::AssociationSpecWithLabel::Category }

        # @!attribute type_id
        #   An integer value used to uniquely identify a specific association type within
        #   its Association Category.
        #
        #   @return [Integer]
        required :type_id, Integer, api_name: :typeId

        # @!attribute label
        #   An optional descriptor that provides additional context about the relationship
        #   between associated records, such as "Mentor" and "Mentee".
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
        #   @param category [Symbol, HubspotSDK::Models::Crm::AssociationSpecWithLabel::Category] Association category. Can be HUBSPOT_DEFINED, USER_DEFINED, INTEGRATOR_DEFINED o
        #
        #   @param type_id [Integer] An integer value used to uniquely identify a specific association type within it
        #
        #   @param label [String] An optional descriptor that provides additional context about the relationship b

        # Association category. Can be HUBSPOT_DEFINED, USER_DEFINED, INTEGRATOR_DEFINED
        # or WORK
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
