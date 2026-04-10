# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicEmailContent < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute flex_areas
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :flex_areas,
                 HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown],
                 api_name: :flexAreas

        # @!attribute plain_text_version
        #
        #   @return [String, nil]
        optional :plain_text_version, String, api_name: :plainTextVersion

        # @!attribute smart_fields
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :smart_fields,
                 HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown],
                 api_name: :smartFields

        # @!attribute style_settings
        #
        #   @return [HubSpotSDK::Models::Marketing::PublicEmailStyleSettings, nil]
        optional :style_settings,
                 -> {
                   HubSpotSDK::Marketing::PublicEmailStyleSettings
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
                 HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown],
                 api_name: :themeSettingsValues

        # @!attribute widget_containers
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :widget_containers,
                 HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown],
                 api_name: :widgetContainers

        # @!attribute widgets
        #
        #   @return [Hash{Symbol=>Object}, nil]
        optional :widgets, HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]

        # @!method initialize(flex_areas: nil, plain_text_version: nil, smart_fields: nil, style_settings: nil, template_path: nil, theme_settings_values: nil, widget_containers: nil, widgets: nil)
        #   @param flex_areas [Hash{Symbol=>Object}]
        #   @param plain_text_version [String]
        #   @param smart_fields [Hash{Symbol=>Object}]
        #   @param style_settings [HubSpotSDK::Models::Marketing::PublicEmailStyleSettings]
        #   @param template_path [String]
        #   @param theme_settings_values [Hash{Symbol=>Object}]
        #   @param widget_containers [Hash{Symbol=>Object}]
        #   @param widgets [Hash{Symbol=>Object}]
      end
    end
  end
end
