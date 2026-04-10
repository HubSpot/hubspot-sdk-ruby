# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class IntegratorObjectCreationResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute object_type
        #
        #   @return [HubSpotSDK::Models::Cms::InboundDBObjectType]
        required :object_type, -> { HubSpotSDK::Cms::InboundDBObjectType }, api_name: :objectType

        # @!attribute properties
        #
        #   @return [Array<HubSpotSDK::Models::Cms::PropertyDefinition>]
        required :properties, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::PropertyDefinition] }

        # @!attribute property_groups
        #
        #   @return [Array<HubSpotSDK::Models::Cms::Group>]
        required :property_groups,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Group] },
                 api_name: :propertyGroups

        # @!method initialize(object_type:, properties:, property_groups:)
        #   @param object_type [HubSpotSDK::Models::Cms::InboundDBObjectType]
        #   @param properties [Array<HubSpotSDK::Models::Cms::PropertyDefinition>]
        #   @param property_groups [Array<HubSpotSDK::Models::Cms::Group>]
      end
    end
  end
end
