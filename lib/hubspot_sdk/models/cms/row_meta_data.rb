# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class RowMetaData < HubspotSDK::Internal::Type::BaseModel
        # @!attribute css_class
        #   The CSS class applied to the row.
        #
        #   @return [String]
        required :css_class, String, api_name: :cssClass

        # @!attribute styles
        #
        #   @return [HubspotSDK::Models::Cms::Styles]
        required :styles, -> { HubspotSDK::Cms::Styles }

        # @!method initialize(css_class:, styles:)
        #   @param css_class [String] The CSS class applied to the row.
        #
        #   @param styles [HubspotSDK::Models::Cms::Styles]
      end
    end
  end
end
