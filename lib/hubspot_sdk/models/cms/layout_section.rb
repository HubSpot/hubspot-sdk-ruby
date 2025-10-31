# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class LayoutSection < HubspotSDK::Internal::Type::BaseModel
        # @!attribute cells
        #
        #   @return [Array<HubspotSDK::Models::Cms::LayoutSection>]
        required :cells, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::LayoutSection] }

        # @!attribute css_class
        #
        #   @return [String]
        required :css_class, String, api_name: :cssClass

        # @!attribute css_id
        #
        #   @return [String]
        required :css_id, String, api_name: :cssId

        # @!attribute css_style
        #
        #   @return [String]
        required :css_style, String, api_name: :cssStyle

        # @!attribute label
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute params
        #   null
        #
        #   @return [Hash{Symbol=>Object}]
        required :params, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute row_meta_data
        #
        #   @return [Array<HubspotSDK::Models::Cms::RowMetaData>]
        required :row_meta_data,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::RowMetaData] },
                 api_name: :rowMetaData

        # @!attribute rows
        #
        #   @return [Array<Hash{Symbol=>HubspotSDK::Models::Cms::LayoutSection}>]
        required :rows,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::LayoutSection]] }

        # @!attribute styles
        #
        #   @return [HubspotSDK::Models::Cms::Styles]
        required :styles, -> { HubspotSDK::Cms::Styles }

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute w
        #
        #   @return [Integer]
        required :w, Integer

        # @!attribute x
        #
        #   @return [Integer]
        required :x, Integer

        # @!method initialize(cells:, css_class:, css_id:, css_style:, label:, name:, params:, row_meta_data:, rows:, styles:, type:, w:, x:)
        #   @param cells [Array<HubspotSDK::Models::Cms::LayoutSection>]
        #
        #   @param css_class [String]
        #
        #   @param css_id [String]
        #
        #   @param css_style [String]
        #
        #   @param label [String]
        #
        #   @param name [String]
        #
        #   @param params [Hash{Symbol=>Object}] null
        #
        #   @param row_meta_data [Array<HubspotSDK::Models::Cms::RowMetaData>]
        #
        #   @param rows [Array<Hash{Symbol=>HubspotSDK::Models::Cms::LayoutSection}>]
        #
        #   @param styles [HubspotSDK::Models::Cms::Styles]
        #
        #   @param type [String]
        #
        #   @param w [Integer]
        #
        #   @param x [Integer]
      end
    end
  end
end
