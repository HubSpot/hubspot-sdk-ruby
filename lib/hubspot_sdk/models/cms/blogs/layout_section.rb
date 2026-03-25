# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class LayoutSection < HubspotSDK::Internal::Type::BaseModel
          # @!attribute cells
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::LayoutSection>]
          required :cells, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::LayoutSection] }

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
          #   Parameters associated with the layout section.
          #
          #   @return [Hash{Symbol=>Object}]
          required :params, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

          # @!attribute row_meta_data
          #
          #   @return [Array<HubspotSDK::Models::Cms::Blogs::RowMetaData>]
          required :row_meta_data,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Blogs::RowMetaData] },
                   api_name: :rowMetaData

          # @!attribute rows
          #
          #   @return [Array<Hash{Symbol=>HubspotSDK::Models::Cms::Blogs::LayoutSection}>]
          required :rows,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::Blogs::LayoutSection]] }

          # @!attribute styles
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Styles]
          required :styles, -> { HubspotSDK::Cms::Blogs::Styles }

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
          #   @param cells [Array<HubspotSDK::Models::Cms::Blogs::LayoutSection>]
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
          #   @param params [Hash{Symbol=>Object}] Parameters associated with the layout section.
          #
          #   @param row_meta_data [Array<HubspotSDK::Models::Cms::Blogs::RowMetaData>]
          #
          #   @param rows [Array<Hash{Symbol=>HubspotSDK::Models::Cms::Blogs::LayoutSection}>]
          #
          #   @param styles [HubspotSDK::Models::Cms::Blogs::Styles]
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
end
