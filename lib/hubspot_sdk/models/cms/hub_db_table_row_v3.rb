# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class HubDBTableRowV3 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute values
        #   List of key value pairs with the column name and column value
        #
        #   @return [Hash{Symbol=>Object}]
        required :values, HubspotSDK::Internal::Type::HashOf[HubspotSDK::Internal::Type::Unknown]

        # @!attribute id
        #   The id of the table row
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute child_table_id
        #   Specifies the value for the column child table id
        #
        #   @return [String, nil]
        optional :child_table_id, String, api_name: :childTableId

        # @!attribute created_at
        #   Timestamp at which the row is created
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

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

        # @!attribute published_at
        #
        #   @return [Time, nil]
        optional :published_at, Time, api_name: :publishedAt

        # @!attribute updated_at
        #   Timestamp at which the row is updated last time
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(values:, id: nil, child_table_id: nil, created_at: nil, name: nil, path: nil, published_at: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::HubDBTableRowV3} for more details.
        #
        #   @param values [Hash{Symbol=>Object}] List of key value pairs with the column name and column value
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
      end
    end
  end
end
