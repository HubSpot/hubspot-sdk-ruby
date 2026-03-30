# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::ObjectSchemas#create
      class ObjectSchema < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   A unique ID for this schema's object type. Will be defined as
        #   {meta-type}-{unique ID}.
        #
        #   @return [String]
        required :id, String

        # @!attribute allows_sensitive_properties
        #
        #   @return [Boolean]
        required :allows_sensitive_properties,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :allowsSensitiveProperties

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute associations
        #   Associations defined for a given object type.
        #
        #   @return [Array<HubspotSDK::Models::AssociationDefinition>]
        required :associations, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::AssociationDefinition] }

        # @!attribute fully_qualified_name
        #   An assigned unique ID for the object, including portal ID and object name.
        #
        #   @return [String]
        required :fully_qualified_name, String, api_name: :fullyQualifiedName

        # @!attribute labels
        #
        #   @return [HubspotSDK::Models::ObjectTypeDefinitionLabels]
        required :labels, -> { HubspotSDK::ObjectTypeDefinitionLabels }

        # @!attribute name
        #   A unique name for the schema's object type.
        #
        #   @return [String]
        required :name, String

        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute properties
        #   Properties defined for this object type.
        #
        #   @return [Array<HubspotSDK::Models::Property>]
        required :properties, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Property] }

        # @!attribute required_properties
        #   The names of properties that should be **required** when creating an object of
        #   this type.
        #
        #   @return [Array<String>]
        required :required_properties,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :requiredProperties

        # @!attribute searchable_properties
        #   Names of properties that will be indexed for this object type in by HubSpot's
        #   product search.
        #
        #   @return [Array<String>]
        required :searchable_properties,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :searchableProperties

        # @!attribute secondary_display_properties
        #   The names of secondary properties for this object. These will be displayed as
        #   secondary on the HubSpot record page for this object type.
        #
        #   @return [Array<String>]
        required :secondary_display_properties,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :secondaryDisplayProperties

        # @!attribute created_at
        #   When the object schema was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_by_user_id
        #
        #   @return [Integer, nil]
        optional :created_by_user_id, Integer, api_name: :createdByUserId

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

        # @!attribute updated_at
        #   When the object schema was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_by_user_id
        #
        #   @return [Integer, nil]
        optional :updated_by_user_id, Integer, api_name: :updatedByUserId

        # @!method initialize(id:, allows_sensitive_properties:, archived:, associations:, fully_qualified_name:, labels:, name:, object_type_id:, properties:, required_properties:, searchable_properties:, secondary_display_properties:, created_at: nil, created_by_user_id: nil, description: nil, primary_display_property: nil, updated_at: nil, updated_by_user_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::ObjectSchema} for more details.
        #
        #   @param id [String] A unique ID for this schema's object type. Will be defined as {meta-type}-{uniqu
        #
        #   @param allows_sensitive_properties [Boolean]
        #
        #   @param archived [Boolean]
        #
        #   @param associations [Array<HubspotSDK::Models::AssociationDefinition>] Associations defined for a given object type.
        #
        #   @param fully_qualified_name [String] An assigned unique ID for the object, including portal ID and object name.
        #
        #   @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels]
        #
        #   @param name [String] A unique name for the schema's object type.
        #
        #   @param object_type_id [String]
        #
        #   @param properties [Array<HubspotSDK::Models::Property>] Properties defined for this object type.
        #
        #   @param required_properties [Array<String>] The names of properties that should be **required** when creating an object of t
        #
        #   @param searchable_properties [Array<String>] Names of properties that will be indexed for this object type in by HubSpot's pr
        #
        #   @param secondary_display_properties [Array<String>] The names of secondary properties for this object. These will be displayed as se
        #
        #   @param created_at [Time] When the object schema was created.
        #
        #   @param created_by_user_id [Integer]
        #
        #   @param description [String]
        #
        #   @param primary_display_property [String] The name of the primary property for this object. This will be displayed as prim
        #
        #   @param updated_at [Time] When the object schema was last updated.
        #
        #   @param updated_by_user_id [Integer]
      end
    end
  end
end
