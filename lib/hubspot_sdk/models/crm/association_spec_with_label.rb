# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class AssociationSpecWithLabel < HubspotSDK::Internal::Type::BaseModel
        # @!attribute category
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::AssociationSpecWithLabel::Category]
        required :category, enum: -> { HubspotSDK::Crm::AssociationSpecWithLabel::Category }

        # @!attribute type_id
        #
        #   @return [Integer]
        required :type_id, Integer, api_name: :typeId

        # @!attribute label
        #
        #   @return [String, nil]
        optional :label, String

        # @!method initialize(category:, type_id:, label: nil)
        #   @param category [Symbol, HubspotSDK::Models::Crm::AssociationSpecWithLabel::Category]
        #   @param type_id [Integer]
        #   @param label [String]

        # @see HubspotSDK::Models::Crm::AssociationSpecWithLabel#category
        module Category
          extend HubspotSDK::Internal::Type::Enum

          HUBSPOT_DEFINED = :HUBSPOT_DEFINED
          INTEGRATOR_DEFINED = :INTEGRATOR_DEFINED
          USER_DEFINED = :USER_DEFINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
