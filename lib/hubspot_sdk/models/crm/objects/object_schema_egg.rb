# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        class ObjectSchemaEgg < HubspotSDK::Internal::Type::BaseModel
          # @!attribute associated_objects
          #   Associations defined for this object type.
          #
          #   @return [Array<String>]
          required :associated_objects,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :associatedObjects

          # @!attribute labels
          #
          #   @return [HubspotSDK::Models::ObjectTypeDefinitionLabels]
          required :labels, -> { HubspotSDK::ObjectTypeDefinitionLabels }

          # @!attribute name
          #   A unique name for this object. For internal use only.
          #
          #   @return [String]
          required :name, String

          # @!attribute properties
          #   Properties defined for this object type.
          #
          #   @return [Array<HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate>]
          required :properties,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::Objects::ObjectTypePropertyCreate] }

          # @!attribute required_properties
          #   The names of properties that should be **required** when creating an object of
          #   this type.
          #
          #   @return [Array<String>]
          required :required_properties,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :requiredProperties

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute primary_display_property
          #   The name of the primary property for this object. This will be displayed as
          #   primary on the HubSpot record page for this object type.
          #
          #   @return [String, nil]
          optional :primary_display_property, String, api_name: :primaryDisplayProperty

          # @!attribute searchable_properties
          #   Names of properties that will be indexed for this object type in by HubSpot's
          #   product search.
          #
          #   @return [Array<String>, nil]
          optional :searchable_properties,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :searchableProperties

          # @!attribute secondary_display_properties
          #   The names of secondary properties for this object. These will be displayed as
          #   secondary on the HubSpot record page for this object type.
          #
          #   @return [Array<String>, nil]
          optional :secondary_display_properties,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :secondaryDisplayProperties

          # @!method initialize(associated_objects:, labels:, name:, properties:, required_properties:, description: nil, primary_display_property: nil, searchable_properties: nil, secondary_display_properties: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Objects::ObjectSchemaEgg} for more details.
          #
          #   Defines a new object type, its properties, and associations.
          #
          #   @param associated_objects [Array<String>] Associations defined for this object type.
          #
          #   @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels]
          #
          #   @param name [String] A unique name for this object. For internal use only.
          #
          #   @param properties [Array<HubspotSDK::Models::Crm::Objects::ObjectTypePropertyCreate>] Properties defined for this object type.
          #
          #   @param required_properties [Array<String>] The names of properties that should be **required** when creating an object of t
          #
          #   @param description [String]
          #
          #   @param primary_display_property [String] The name of the primary property for this object. This will be displayed as prim
          #
          #   @param searchable_properties [Array<String>] Names of properties that will be indexed for this object type in by HubSpot's pr
          #
          #   @param secondary_display_properties [Array<String>] The names of secondary properties for this object. These will be displayed as se
        end
      end
    end
  end
end
