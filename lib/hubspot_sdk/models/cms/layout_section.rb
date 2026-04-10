# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class LayoutSection < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute cells
        #
        #   @return [Array<HubSpotSDK::Models::Cms::LayoutSection>]
        required :cells, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::LayoutSection] }

        # @!attribute css_class
        #   The CSS class applied to the layout section.
        #
        #   @return [String]
        required :css_class, String, api_name: :cssClass

        # @!attribute css_id
        #   The CSS ID applied to the layout section.
        #
        #   @return [String]
        required :css_id, String, api_name: :cssId

        # @!attribute css_style
        #   Custom CSS styles applied to the layout section.
        #
        #   @return [String]
        required :css_style, String, api_name: :cssStyle

        # @!attribute label
        #   The label for the layout section.
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   The name assigned to the layout section.
        #
        #   @return [String]
        required :name, String

        # @!attribute params
        #   null
        #
        #   @return [Hash{Symbol=>Object}]
        required :params, HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Internal::Type::Unknown]

        # @!attribute row_meta_data
        #
        #   @return [Array<HubSpotSDK::Models::Cms::RowMetaData>]
        required :row_meta_data,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::RowMetaData] },
                 api_name: :rowMetaData

        # @!attribute rows
        #
        #   @return [Array<Hash{Symbol=>HubSpotSDK::Models::Cms::LayoutSection}>]
        required :rows,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Internal::Type::HashOf[HubSpotSDK::Cms::LayoutSection]] }

        # @!attribute styles
        #
        #   @return [HubSpotSDK::Models::Cms::Styles]
        required :styles, -> { HubSpotSDK::Cms::Styles }

        # @!attribute type
        #   The type of the layout section.
        #
        #   @return [String]
        required :type, String

        # @!attribute w
        #   The width of the layout section.
        #
        #   @return [Integer]
        required :w, Integer

        # @!attribute x
        #   The x-coordinate position of the layout section.
        #
        #   @return [Integer]
        required :x, Integer

        # @!method initialize(cells:, css_class:, css_id:, css_style:, label:, name:, params:, row_meta_data:, rows:, styles:, type:, w:, x:)
        #   @param cells [Array<HubSpotSDK::Models::Cms::LayoutSection>]
        #
        #   @param css_class [String] The CSS class applied to the layout section.
        #
        #   @param css_id [String] The CSS ID applied to the layout section.
        #
        #   @param css_style [String] Custom CSS styles applied to the layout section.
        #
        #   @param label [String] The label for the layout section.
        #
        #   @param name [String] The name assigned to the layout section.
        #
        #   @param params [Hash{Symbol=>Object}] null
        #
        #   @param row_meta_data [Array<HubSpotSDK::Models::Cms::RowMetaData>]
        #
        #   @param rows [Array<Hash{Symbol=>HubSpotSDK::Models::Cms::LayoutSection}>]
        #
        #   @param styles [HubSpotSDK::Models::Cms::Styles]
        #
        #   @param type [String] The type of the layout section.
        #
        #   @param w [Integer] The width of the layout section.
        #
        #   @param x [Integer] The x-coordinate position of the layout section.
      end
    end
  end
end
