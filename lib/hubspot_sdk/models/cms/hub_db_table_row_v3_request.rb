# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class HubDBTableRowV3Request < HubspotSDK::Internal::Type::BaseModel
        # @!attribute child_table_id
        #   Specifies the value for the column child table id
        #
        #   @return [Integer]
        required :child_table_id, Integer, api_name: :childTableId

        # @!attribute display_index
        #
        #   @return [Integer]
        required :display_index, Integer, api_name: :displayIndex

        # @!attribute values
        #   List of key value pairs with the column name and column value
        #
        #   @return [Hash{Symbol=>HubspotSDK::Models::Cms::Variant}]
        required :values, -> { HubspotSDK::Internal::Type::HashOf[HubspotSDK::Cms::Variant] }

        # @!attribute name
        #   Specifies the value for `hs_name` column, which will be used as title in the
        #   dynamic pages
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute path
        #   Specifies the value for `hs_path` column, which will be used as slug in the
        #   dynamic pages
        #
        #   @return [String, nil]
        optional :path, String

        # @!method initialize(child_table_id:, display_index:, values:, name: nil, path: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::HubDBTableRowV3Request} for more details.
        #
        #   @param child_table_id [Integer] Specifies the value for the column child table id
        #
        #   @param display_index [Integer]
        #
        #   @param values [Hash{Symbol=>HubspotSDK::Models::Cms::Variant}] List of key value pairs with the column name and column value
        #
        #   @param name [String] Specifies the value for `hs_name` column, which will be used as title in the dyn
        #
        #   @param path [String] Specifies the value for `hs_path` column, which will be used as slug in the dyna
      end
    end
  end
end
