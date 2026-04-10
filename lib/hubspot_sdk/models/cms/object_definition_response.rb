# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      # @see HubSpotSDK::Resources::Cms::MediaBridge#list_object_types_by_media_type
      class ObjectDefinitionResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_type_id
        #
        #   @return [String]
        required :object_type_id, String, api_name: :objectTypeId

        # @!attribute object_type_name
        #
        #   @return [String]
        required :object_type_name, String, api_name: :objectTypeName

        # @!attribute properties
        #
        #   @return [Array<HubSpotSDK::Models::Cms::PropertyDefinition>]
        required :properties, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PropertyDefinition] }

        # @!attribute property_groups
        #
        #   @return [Array<HubSpotSDK::Models::Cms::GroupView>]
        required :property_groups,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::GroupView] },
                 api_name: :propertyGroups

        # @!attribute schema
        #
        #   @return [HubSpotSDK::Models::Cms::InboundDBObjectType, nil]
        optional :schema, -> { HubSpotSDK::Cms::InboundDBObjectType }

        # @!method initialize(object_type_id:, object_type_name:, properties:, property_groups:, schema: nil)
        #   @param object_type_id [String]
        #   @param object_type_name [String]
        #   @param properties [Array<HubSpotSDK::Models::Cms::PropertyDefinition>]
        #   @param property_groups [Array<HubSpotSDK::Models::Cms::GroupView>]
        #   @param schema [HubSpotSDK::Models::Cms::InboundDBObjectType]
      end
    end
  end
end
