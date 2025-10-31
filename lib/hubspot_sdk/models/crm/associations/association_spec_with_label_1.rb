# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      module Associations
        class AssociationSpecWithLabel1 < HubspotSDK::Internal::Type::BaseModel
          # @!attribute category
          #
          #   @return [Symbol, HubspotSDK::Models::CRM::Associations::AssociationSpecWithLabel1::Category]
          required :category, enum: -> { HubspotSDK::CRM::Associations::AssociationSpecWithLabel1::Category }

          # @!attribute type_id
          #
          #   @return [Integer]
          required :type_id, Integer, api_name: :typeId

          # @!attribute label
          #
          #   @return [String, nil]
          optional :label, String

          # @!method initialize(category:, type_id:, label: nil)
          #   @param category [Symbol, HubspotSDK::Models::CRM::Associations::AssociationSpecWithLabel1::Category]
          #   @param type_id [Integer]
          #   @param label [String]

          # @see HubspotSDK::Models::CRM::Associations::AssociationSpecWithLabel1#category
          module Category
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
