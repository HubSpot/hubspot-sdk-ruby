# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class IntegratorObjectCreationResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute object_type
        #
        #   @return [HubspotSDK::Models::Cms::InboundDBObjectType]
        required :object_type, -> { HubspotSDK::Cms::InboundDBObjectType }, api_name: :objectType

        # @!attribute properties
        #
        #   @return [Array<HubspotSDK::Models::Cms::PropertyDefinition>]
        required :properties, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::PropertyDefinition] }

        # @!attribute property_groups
        #
        #   @return [Array<HubspotSDK::Models::Cms::Group>]
        required :property_groups,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Group] },
                 api_name: :propertyGroups

        # @!method initialize(object_type:, properties:, property_groups:)
        #   @param object_type [HubspotSDK::Models::Cms::InboundDBObjectType]
        #   @param properties [Array<HubspotSDK::Models::Cms::PropertyDefinition>]
        #   @param property_groups [Array<HubspotSDK::Models::Cms::Group>]
      end
    end
  end
end
