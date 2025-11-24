# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIAssociationDataSource < HubspotSDK::Internal::Type::BaseModel
        # @!attribute association_category
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAssociationDataSource::AssociationCategory]
        required :association_category,
                 enum: -> { HubspotSDK::Automation::APIAssociationDataSource::AssociationCategory },
                 api_name: :associationCategory

        # @!attribute association_type_id
        #
        #   @return [Integer]
        required :association_type_id, Integer, api_name: :associationTypeId

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute type
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAssociationDataSource::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIAssociationDataSource::Type }

        # @!attribute sort_by
        #
        #   @return [HubspotSDK::Models::Automation::APISort, nil]
        optional :sort_by, -> { HubspotSDK::Automation::APISort }, api_name: :sortBy

        # @!method initialize(association_category:, association_type_id:, name:, object_type_id:, type:, sort_by: nil)
        #   @param association_category [Symbol, HubspotSDK::Models::Automation::APIAssociationDataSource::AssociationCategory]
        #   @param association_type_id [Integer]
        #   @param name [String]
        #   @param object_type_id [String]
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIAssociationDataSource::Type]
        #   @param sort_by [HubspotSDK::Models::Automation::APISort]

        # @see HubspotSDK::Models::Automation::APIAssociationDataSource#association_category
        module AssociationCategory
          extend HubspotSDK::Internal::Type::Enum

          HUBSPOT_DEFINED = :HUBSPOT_DEFINED
          INTEGRATOR_DEFINED = :INTEGRATOR_DEFINED
          USER_DEFINED = :USER_DEFINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Automation::APIAssociationDataSource#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ASSOCIATION = :ASSOCIATION

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
