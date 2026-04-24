# frozen_string_literal: true

module HubSpotSDK
  module Models
    class ObjectTypeDefinition < HubSpotSDK::Internal::Type::BaseModel
      # @!attribute id
      #
      #   @return [String]
      required :id, String

      # @!attribute allows_sensitive_properties
      #
      #   @return [Boolean]
      required :allows_sensitive_properties,
               HubSpotSDK::Internal::Type::Boolean,
               api_name: :allowsSensitiveProperties

      # @!attribute archived
      #
      #   @return [Boolean]
      required :archived, HubSpotSDK::Internal::Type::Boolean

      # @!attribute fully_qualified_name
      #
      #   @return [String]
      required :fully_qualified_name, String, api_name: :fullyQualifiedName

      # @!attribute labels
      #
      #   @return [HubSpotSDK::Models::ObjectTypeDefinitionLabels]
      required :labels, -> { HubSpotSDK::ObjectTypeDefinitionLabels }

      # @!attribute name
      #
      #   @return [String]
      required :name, String

      # @!attribute object_type_id
      #
      #   @return [String]
      required :object_type_id, String, api_name: :objectTypeId

      # @!attribute required_properties
      #
      #   @return [Array<String>]
      required :required_properties,
               HubSpotSDK::Internal::Type::ArrayOf[String],
               api_name: :requiredProperties

      # @!attribute searchable_properties
      #
      #   @return [Array<String>]
      required :searchable_properties,
               HubSpotSDK::Internal::Type::ArrayOf[String],
               api_name: :searchableProperties

      # @!attribute secondary_display_properties
      #
      #   @return [Array<String>]
      required :secondary_display_properties,
               HubSpotSDK::Internal::Type::ArrayOf[String],
               api_name: :secondaryDisplayProperties

      # @!attribute created_at
      #
      #   @return [Time, nil]
      optional :created_at, Time, api_name: :createdAt

      # @!attribute description
      #
      #   @return [String, nil]
      optional :description, String

      # @!attribute portal_id
      #
      #   @return [Integer, nil]
      optional :portal_id, Integer, api_name: :portalId

      # @!attribute primary_display_property
      #
      #   @return [String, nil]
      optional :primary_display_property, String, api_name: :primaryDisplayProperty

      # @!attribute updated_at
      #
      #   @return [Time, nil]
      optional :updated_at, Time, api_name: :updatedAt

      # @!method initialize(id:, allows_sensitive_properties:, archived:, fully_qualified_name:, labels:, name:, object_type_id:, required_properties:, searchable_properties:, secondary_display_properties:, created_at: nil, description: nil, portal_id: nil, primary_display_property: nil, updated_at: nil)
      #   @param id [String]
      #   @param allows_sensitive_properties [Boolean]
      #   @param archived [Boolean]
      #   @param fully_qualified_name [String]
      #   @param labels [HubSpotSDK::Models::ObjectTypeDefinitionLabels]
      #   @param name [String]
      #   @param object_type_id [String]
      #   @param required_properties [Array<String>]
      #   @param searchable_properties [Array<String>]
      #   @param secondary_display_properties [Array<String>]
      #   @param created_at [Time]
      #   @param description [String]
      #   @param portal_id [Integer]
      #   @param primary_display_property [String]
      #   @param updated_at [Time]
    end
  end
end
