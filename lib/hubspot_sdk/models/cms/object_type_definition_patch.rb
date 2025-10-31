# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class ObjectTypeDefinitionPatch < HubspotSDK::Internal::Type::BaseModel
        # @!attribute clear_description
        #
        #   @return [Boolean]
        required :clear_description, HubspotSDK::Internal::Type::Boolean, api_name: :clearDescription

        # @!attribute allows_sensitive_properties
        #
        #   @return [Boolean, nil]
        optional :allows_sensitive_properties,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :allowsSensitiveProperties

        # @!attribute description
        #
        #   @return [String, nil]
        optional :description, String

        # @!attribute labels
        #
        #   @return [HubspotSDK::Models::ObjectTypeDefinitionLabels, nil]
        optional :labels, -> { HubspotSDK::ObjectTypeDefinitionLabels }

        # @!attribute primary_display_property
        #
        #   @return [String, nil]
        optional :primary_display_property, String, api_name: :primaryDisplayProperty

        # @!attribute required_properties
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
        #
        #   @return [Array<String>, nil]
        optional :searchable_properties,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :searchableProperties

        # @!attribute secondary_display_properties
        #
        #   @return [Array<String>, nil]
        optional :secondary_display_properties,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :secondaryDisplayProperties

        # @!method initialize(clear_description:, allows_sensitive_properties: nil, description: nil, labels: nil, primary_display_property: nil, required_properties: nil, restorable: nil, searchable_properties: nil, secondary_display_properties: nil)
        #   @param clear_description [Boolean]
        #   @param allows_sensitive_properties [Boolean]
        #   @param description [String]
        #   @param labels [HubspotSDK::Models::ObjectTypeDefinitionLabels]
        #   @param primary_display_property [String]
        #   @param required_properties [Array<String>]
        #   @param restorable [Boolean]
        #   @param searchable_properties [Array<String>]
        #   @param secondary_display_properties [Array<String>]
      end
    end
  end
end
