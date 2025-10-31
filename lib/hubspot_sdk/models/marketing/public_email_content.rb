# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicEmailContent < HubspotSDK::Internal::Type::BaseModel
        # @!attribute flex_areas
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :flex_areas,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :flexAreas

        # @!attribute plain_text_version
        #
        #   @return [String, nil]
        optional :plain_text_version, String, api_name: :plainTextVersion

        # @!attribute smart_fields
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :smart_fields,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :smartFields

        # @!attribute style_settings
        #
        #   @return [HubspotSDK::Models::Marketing::PublicEmailStyleSettings, nil]
        optional :style_settings,
                 -> {
                   HubspotSDK::Marketing::PublicEmailStyleSettings
                 },
                 api_name: :styleSettings

        # @!attribute template_path
        #
        #   @return [String, nil]
        optional :template_path, String, api_name: :templatePath

        # @!attribute theme_settings_values
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :theme_settings_values,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :themeSettingsValues

        # @!attribute widget_containers
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :widget_containers,
                 HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown],
                 api_name: :widgetContainers

        # @!attribute widgets
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :widgets, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

        # @!method initialize(flex_areas: nil, plain_text_version: nil, smart_fields: nil, style_settings: nil, template_path: nil, theme_settings_values: nil, widget_containers: nil, widgets: nil)
        #   Data structure representing the content of the email.
        #
        #   @param flex_areas [Hash{Symbol=>Object}]
        #   @param plain_text_version [String]
        #   @param smart_fields [Hash{Symbol=>Object}]
        #   @param style_settings [HubspotSDK::Models::Marketing::PublicEmailStyleSettings]
        #   @param template_path [String]
        #   @param theme_settings_values [Hash{Symbol=>Object}]
        #   @param widget_containers [Hash{Symbol=>Object}]
        #   @param widgets [Hash{Symbol=>Object}]
      end
    end
  end
end
