# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class HubDBTableRowV3 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The id of the table row
        #
        #   @return [String]
        required :id, String

        # @!attribute child_table_id
        #   Specifies the value for the column child table id
        #
        #   @return [String]
        required :child_table_id, String, api_name: :childTableId

        # @!attribute created_at
        #   Timestamp at which the row is created
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute name
        #   Specifies the value for `hs_name` column, which will be used as title in the
        #   dynamic pages
        #
        #   @return [String]
        required :name, String

        # @!attribute path
        #   Specifies the value for `hs_path` column, which will be used as slug in the
        #   dynamic pages
        #
        #   @return [String]
        required :path, String

        # @!attribute published_at
        #
        #   @return [Time]
        required :published_at, Time, api_name: :publishedAt

        # @!attribute updated_at
        #   Timestamp at which the row is updated last time
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute values
        #   List of key value pairs with the column name and column value
        #
        #   @return [Hash{Symbol=>Object}]
        required :values, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

        # @!method initialize(id:, child_table_id:, created_at:, name:, path:, published_at:, updated_at:, values:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::HubDBTableRowV3} for more details.
        #
        #   @param id [String] The id of the table row
        #
        #   @param child_table_id [String] Specifies the value for the column child table id
        #
        #   @param created_at [Time] Timestamp at which the row is created
        #
        #   @param name [String] Specifies the value for `hs_name` column, which will be used as title in the dyn
        #
        #   @param path [String] Specifies the value for `hs_path` column, which will be used as slug in the dyna
        #
        #   @param published_at [Time]
        #
        #   @param updated_at [Time] Timestamp at which the row is updated last time
        #
        #   @param values [Hash{Symbol=>Object}] List of key value pairs with the column name and column value
      end
    end
  end
end
