# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class HubDBTableRowV3Request < HubspotSDK::Internal::Type::BaseModel
        # @!attribute values
        #   List of key value pairs with the column name and column value
        #
        #   @return [Hash{Symbol=>Object}]
        required :values, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute child_table_id
        #   Specifies the value for the column child table id
        #
        #   @return [Integer, nil]
        optional :child_table_id, Integer, api_name: :childTableId

        # @!attribute display_index
        #
        #   @return [Integer, nil]
        optional :display_index, Integer, api_name: :displayIndex

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

        # @!method initialize(values:, child_table_id: nil, display_index: nil, name: nil, path: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::HubDBTableRowV3Request} for more details.
        #
        #   @param values [Hash{Symbol=>Object}] List of key value pairs with the column name and column value
        #
        #   @param child_table_id [Integer] Specifies the value for the column child table id
        #
        #   @param display_index [Integer]
        #
        #   @param name [String] Specifies the value for `hs_name` column, which will be used as title in the dyn
        #
        #   @param path [String] Specifies the value for `hs_path` column, which will be used as slug in the dyna
      end
    end
  end
end
