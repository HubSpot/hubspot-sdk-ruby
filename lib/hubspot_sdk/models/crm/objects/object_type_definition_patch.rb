# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        class ObjectTypeDefinitionPatch < HubspotSDK::Internal::Type::BaseModel
          # @!attribute clear_description
          #
          #   @return [Boolean, nil]
          optional :clear_description, HubspotSDK::Internal::Type::Boolean, api_name: :clearDescription

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute labels
          #
          #   @return [HubspotSDK::Models::ObjectTypeDefinitionLabels, nil]
          optional :labels, -> { HubspotSDK::ObjectTypeDefinitionLabels }

          # @!attribute primary_display_property
          #   The name of the primary property for this object. This will be displayed as
          #   primary on the HubSpot record page for this object type.
          #
          #   @return [String, nil]
          optional :primary_display_property, String, api_name: :primaryDisplayProperty

          # @!attribute required_properties
          #   The names of properties that should be **required** when creating an object of
          #   this type.
          #
          #   @return [Array<String>, nil]
          optional :required_properties,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :requiredProperties

          # @!attribute restorable
          #
          #   @return [Boolean, nil]
          optional :restorable, HubspotSDK::Internal::Type::Boolean

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

          # @!method initialize(clear_description: nil, description: nil, labels: nil, primary_display_property: nil, required_properties: nil, restorable: nil, searchable_properties: nil, secondary_display_properties: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Objects::ObjectTypeDefinitionPatch} for more details.
          #
          #   Defines attributes to update on an object type.
          #
          #   @param clear_description [Boolean]
          #
          #   @param description [String]
          #
          #   @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels]
          #
          #   @param primary_display_property [String] The name of the primary property for this object. This will be displayed as prim
          #
          #   @param required_properties [Array<String>] The names of properties that should be **required** when creating an object of t
          #
          #   @param restorable [Boolean]
          #
          #   @param searchable_properties [Array<String>] Names of properties that will be indexed for this object type in by HubSpot's pr
          #
          #   @param secondary_display_properties [Array<String>] The names of secondary properties for this object. These will be displayed as se
        end
      end

      ObjectTypeDefinitionPatch = Objects::ObjectTypeDefinitionPatch
    end
  end
end
