# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class ObjectSchemaEgg < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute allows_sensitive_properties
        #   Determines if the object type can include properties that are marked as
        #   sensitive.
        #
        #   @return [Boolean]
        required :allows_sensitive_properties,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :allowsSensitiveProperties

        # @!attribute associated_objects
        #   Associations defined for this object type.
        #
        #   @return [Array<String>]
        required :associated_objects,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :associatedObjects

        # @!attribute labels
        #
        #   @return [HubSpotSDK::Models::ObjectTypeDefinitionLabels]
        required :labels, -> { HubSpotSDK::ObjectTypeDefinitionLabels }

        # @!attribute name
        #   A unique name for this object. For internal use only.
        #
        #   @return [String]
        required :name, String

        # @!attribute properties
        #   Properties defined for this object type.
        #
        #   @return [Array<HubSpotSDK::Models::Crm::ObjectTypePropertyCreate>]
        required :properties,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::ObjectTypePropertyCreate] }

        # @!attribute required_properties
        #   The names of properties that should be **required** when creating an object of
        #   this type.
        #
        #   @return [Array<String>]
        required :required_properties,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :requiredProperties

        # @!attribute searchable_properties
        #   Names of properties that will be indexed for this object type in by HubSpot's
        #   product search.
        #
        #   @return [Array<String>]
        required :searchable_properties,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :searchableProperties

        # @!attribute secondary_display_properties
        #   The names of secondary properties for this object. These will be displayed as
        #   secondary on the HubSpot record page for this object type.
        #
        #   @return [Array<String>]
        required :secondary_display_properties,
                 HubSpotSDK::Internal::Type::ArrayOf[String],
                 api_name: :secondaryDisplayProperties

        # @!attribute description
        #   A brief explanation of the object type.
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute primary_display_property
        #   The name of the primary property for this object. This will be displayed as
        #   primary on the HubSpot record page for this object type.
        #
        #   @return [String, nil]
        optional :primary_display_property, String, api_name: :primaryDisplayProperty

        # @!method initialize(allows_sensitive_properties:, associated_objects:, labels:, name:, properties:, required_properties:, searchable_properties:, secondary_display_properties:, description: nil, primary_display_property: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::ObjectSchemaEgg} for more details.
        #
        #   @param allows_sensitive_properties [Boolean] Determines if the object type can include properties that are marked as sensitiv
        #
        #   @param associated_objects [Array<String>] Associations defined for this object type.
        #
        #   @param labels [HubSpotSDK::Models::ObjectTypeDefinitionLabels]
        #
        #   @param name [String] A unique name for this object. For internal use only.
        #
        #   @param properties [Array<HubSpotSDK::Models::Crm::ObjectTypePropertyCreate>] Properties defined for this object type.
        #
        #   @param required_properties [Array<String>] The names of properties that should be **required** when creating an object of t
        #
        #   @param searchable_properties [Array<String>] Names of properties that will be indexed for this object type in by HubSpot's pr
        #
        #   @param secondary_display_properties [Array<String>] The names of secondary properties for this object. These will be displayed as se
        #
        #   @param description [String] A brief explanation of the object type.
        #
        #   @param primary_display_property [String] The name of the primary property for this object. This will be displayed as prim
      end
    end
  end
end
