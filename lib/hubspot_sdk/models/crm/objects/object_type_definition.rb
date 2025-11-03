# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Objects
        # @see HubspotSDK::Resources::Crm::Objects::Schemas#update
        class ObjectTypeDefinition < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   A unique ID for this object type. Will be defined as {meta-type}-{unique ID}.
          #
          #   @return [String]
          required :id, String

          # @!attribute labels
          #
          #   @return [HubspotSDK::Models::ObjectTypeDefinitionLabels]
          required :labels, -> { HubspotSDK::ObjectTypeDefinitionLabels }

          # @!attribute name
          #   A unique name for this object. For internal use only.
          #
          #   @return [String]
          required :name, String

          # @!attribute required_properties
          #   The names of properties that should be **required** when creating an object of
          #   this type.
          #
          #   @return [Array<String>]
          required :required_properties,
                   HubspotSDK::Internal::Type::ArrayOf[String],
                   api_name: :requiredProperties

          # @!attribute archived
          #
          #   @return [Boolean, nil]
          optional :archived, HubspotSDK::Internal::Type::Boolean

          # @!attribute created_at
          #   When the object type was created.
          #
          #   @return [Time, nil]
          optional :created_at, Time, api_name: :createdAt

          # @!attribute description
          #
          #   @return [String, nil]
          optional :description, String

          # @!attribute fully_qualified_name
          #
          #   @return [String, nil]
          optional :fully_qualified_name, String, api_name: :fullyQualifiedName

          # @!attribute object_type_id
          #
          #   @return [String, nil]
          optional :object_type_id, String, api_name: :objectTypeId

          # @!attribute portal_id
          #   The ID of the account that this object type is specific to.
          #
          #   @return [Integer, nil]
          optional :portal_id, Integer, api_name: :portalId

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

          # @!attribute updated_at
          #   When the object type was last updated.
          #
          #   @return [Time, nil]
          optional :updated_at, Time, api_name: :updatedAt

          # @!method initialize(id:, labels:, name:, required_properties:, archived: nil, created_at: nil, description: nil, fully_qualified_name: nil, object_type_id: nil, portal_id: nil, primary_display_property: nil, searchable_properties: nil, secondary_display_properties: nil, updated_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Crm::Objects::ObjectTypeDefinition} for more details.
          #
          #   Defines an object type.
          #
          #   @param id [String] A unique ID for this object type. Will be defined as {meta-type}-{unique ID}.
          #
          #   @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels]
          #
          #   @param name [String] A unique name for this object. For internal use only.
          #
          #   @param required_properties [Array<String>] The names of properties that should be **required** when creating an object of t
          #
          #   @param archived [Boolean]
          #
          #   @param created_at [Time] When the object type was created.
          #
          #   @param description [String]
          #
          #   @param fully_qualified_name [String]
          #
          #   @param object_type_id [String]
          #
          #   @param portal_id [Integer] The ID of the account that this object type is specific to.
          #
          #   @param primary_display_property [String] The name of the primary property for this object. This will be displayed as prim
          #
          #   @param searchable_properties [Array<String>] Names of properties that will be indexed for this object type in by HubSpot's pr
          #
          #   @param secondary_display_properties [Array<String>] The names of secondary properties for this object. These will be displayed as se
          #
          #   @param updated_at [Time] When the object type was last updated.
        end
      end
    end
  end
end
