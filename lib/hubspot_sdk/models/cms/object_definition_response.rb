# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::MediaBridge#list_object_types_by_media_type
      class ObjectDefinitionResponse < HubspotSDK::Internal::Type::BaseModel
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
        #   @return [Array<HubspotSDK::Models::Cms::PropertyDefinition>]
        required :properties, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::PropertyDefinition] }

        # @!attribute property_groups
        #
        #   @return [Array<HubspotSDK::Models::Cms::GroupView>]
        required :property_groups,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::GroupView] },
                 api_name: :propertyGroups

        # @!attribute schema
        #
        #   @return [HubspotSDK::Models::Cms::InboundDBObjectType, nil]
        optional :schema, -> { HubspotSDK::Cms::InboundDBObjectType }

        # @!method initialize(object_type_id:, object_type_name:, properties:, property_groups:, schema: nil)
        #   @param object_type_id [String]
        #   @param object_type_name [String]
        #   @param properties [Array<HubspotSDK::Models::Cms::PropertyDefinition>]
        #   @param property_groups [Array<HubspotSDK::Models::Cms::GroupView>]
        #   @param schema [HubspotSDK::Models::Cms::InboundDBObjectType]
      end
    end
  end
end
