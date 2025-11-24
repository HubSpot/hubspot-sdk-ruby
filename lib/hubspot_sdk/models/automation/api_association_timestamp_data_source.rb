# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIAssociationTimestampDataSource < HubspotSDK::Internal::Type::BaseModel
        # @!attribute association_category
        #
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAssociationTimestampDataSource::AssociationCategory]
        required :association_category,
                 enum: -> { HubspotSDK::Automation::APIAssociationTimestampDataSource::AssociationCategory },
                 api_name: :associationCategory

        # @!attribute association_type_id
        #   The ID representing the type of association.
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
        #   @return [Symbol, HubspotSDK::Models::Automation::APIAssociationTimestampDataSource::Type]
        required :type, enum: -> { HubspotSDK::Automation::APIAssociationTimestampDataSource::Type }

        # @!method initialize(association_category:, association_type_id:, name:, object_type_id:, type:)
        #   @param association_category [Symbol, HubspotSDK::Models::Automation::APIAssociationTimestampDataSource::AssociationCategory]
        #
        #   @param association_type_id [Integer] The ID representing the type of association.
        #
        #   @param name [String]
        #
        #   @param object_type_id [String]
        #
        #   @param type [Symbol, HubspotSDK::Models::Automation::APIAssociationTimestampDataSource::Type]

        # @see HubspotSDK::Models::Automation::APIAssociationTimestampDataSource#association_category
        module AssociationCategory
          extend HubspotSDK::Internal::Type::Enum

          HUBSPOT_DEFINED = :HUBSPOT_DEFINED
          INTEGRATOR_DEFINED = :INTEGRATOR_DEFINED
          USER_DEFINED = :USER_DEFINED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # @see HubspotSDK::Models::Automation::APIAssociationTimestampDataSource#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          ASSOCIATION_TIMESTAMP = :ASSOCIATION_TIMESTAMP

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
