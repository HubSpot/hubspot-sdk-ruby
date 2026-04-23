# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#get_schema
      class ObjectSchema < HubSpotSDK::Internal::Type::BaseModel
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

        # @!attribute associations
        #
        #   @return [Array<HubSpotSDK::Models::BaseAssociationDefinition>]
        required :associations, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::BaseAssociationDefinition] }

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

        # @!attribute properties
        #
        #   @return [Array<HubSpotSDK::Models::Cms::Property1>]
        required :properties, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Property1] }

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

        # @!attribute created_by_user_id
        #
        #   @return [Integer, nil]
        optional :created_by_user_id, Integer, api_name: :createdByUserId

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute primary_display_property
        #
        #   @return [String, nil]
        optional :primary_display_property, String, api_name: :primaryDisplayProperty

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_by_user_id
        #
        #   @return [Integer, nil]
        optional :updated_by_user_id, Integer, api_name: :updatedByUserId

        # @!method initialize(id:, allows_sensitive_properties:, archived:, associations:, fully_qualified_name:, labels:, name:, object_type_id:, properties:, required_properties:, searchable_properties:, secondary_display_properties:, created_at: nil, created_by_user_id: nil, description: nil, primary_display_property: nil, updated_at: nil, updated_by_user_id: nil)
        #   @param id [String]
        #   @param allows_sensitive_properties [Boolean]
        #   @param archived [Boolean]
        #   @param associations [Array<HubSpotSDK::Models::BaseAssociationDefinition>]
        #   @param fully_qualified_name [String]
        #   @param labels [HubSpotSDK::Models::ObjectTypeDefinitionLabels]
        #   @param name [String]
        #   @param object_type_id [String]
        #   @param properties [Array<HubSpotSDK::Models::Cms::Property1>]
        #   @param required_properties [Array<String>]
        #   @param searchable_properties [Array<String>]
        #   @param secondary_display_properties [Array<String>]
        #   @param created_at [Time]
        #   @param created_by_user_id [Integer]
        #   @param description [String]
        #   @param primary_display_property [String]
        #   @param updated_at [Time]
        #   @param updated_by_user_id [Integer]
      end
    end
  end
end
