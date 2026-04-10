# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class RowMetaData < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute css_class
        #   The CSS class applied to the row.
        #
        #   @return [String]
        required :css_class, String, api_name: :cssClass

        # @!attribute styles
        #
        #   @return [HubSpotSDK::Models::Cms::Styles]
        required :styles, -> { HubSpotSDK::Cms::Styles }

        # @!method initialize(css_class:, styles:)
        #   @param css_class [String] The CSS class applied to the row.
        #
        #   @param styles [HubSpotSDK::Models::Cms::Styles]
      end
    end
  end
end
