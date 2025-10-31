# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class HubDBTableV3 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute deleted_at
        #
        #   @return [Time]
        required :deleted_at, Time, api_name: :deletedAt

        # @!attribute label
        #   Label of the table
        #
        #   @return [String]
        required :label, String

        # @!attribute name
        #   Name of the table
        #
        #   @return [String]
        required :name, String

        # @!attribute id
        #   Id of the table
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute allow_child_tables
        #   Specifies whether child tables can be created
        #
        #   @return [Boolean, nil]
        optional :allow_child_tables, HubspotSDK::Internal::Type::Boolean, api_name: :allowChildTables

        # @!attribute allow_public_api_access
        #   Specifies whether the table can be read by public without authorization
        #
        #   @return [Boolean, nil]
        optional :allow_public_api_access,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :allowPublicApiAccess

        # @!attribute column_count
        #   Number of columns including deleted
        #
        #   @return [Integer, nil]
        optional :column_count, Integer, api_name: :columnCount

        # @!attribute columns
        #   List of columns in the table
        #
        #   @return [Array<HubspotSDK::Models::Cms::Column>, nil]
        optional :columns, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::Column] }

        # @!attribute created_at
        #   Timestamp at which the table is created
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute created_by
        #
        #   @return [HubspotSDK::Models::Cms::SimpleUser, nil]
        optional :created_by, -> { HubspotSDK::Cms::SimpleUser }, api_name: :createdBy

        # @!attribute deleted
        #
        #   @return [Boolean, nil]
        optional :deleted, HubspotSDK::Internal::Type::Boolean

        # @!attribute dynamic_meta_tags
        #   Specifies the key value pairs of the
        #   [metadata fields](https://developers.hubspot.com/docs/cms/guides/dynamic-pages/hubdb#dynamic-pages)
        #   with the associated column IDs.
        #
        #   @return [Hash{Symbol=>Integer}, nil]
        optional :dynamic_meta_tags, HubspotSDK::Internal::Type::HashOf[Integer], api_name: :dynamicMetaTags

        # @!attribute enable_child_table_pages
        #   Specifies creation of multi-level dynamic pages using child tables
        #
        #   @return [Boolean, nil]
        optional :enable_child_table_pages,
                 HubspotSDK::Internal::Type::Boolean,
                 api_name: :enableChildTablePages

        # @!attribute is_ordered_manually
        #
        #   @return [Boolean, nil]
        optional :is_ordered_manually, HubspotSDK::Internal::Type::Boolean, api_name: :isOrderedManually

        # @!attribute published
        #
        #   @return [Boolean, nil]
        optional :published, HubspotSDK::Internal::Type::Boolean

        # @!attribute published_at
        #   Timestamp at which the table is published recently
        #
        #   @return [Time, nil]
        optional :published_at, Time, api_name: :publishedAt

        # @!attribute row_count
        #   Number of rows in the table
        #
        #   @return [Integer, nil]
        optional :row_count, Integer, api_name: :rowCount

        # @!attribute updated_at
        #   Timestamp at which the table is updated recently
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!attribute updated_by
        #
        #   @return [HubspotSDK::Models::Cms::SimpleUser, nil]
        optional :updated_by, -> { HubspotSDK::Cms::SimpleUser }, api_name: :updatedBy

        # @!attribute use_for_pages
        #   Specifies whether the table can be used for creation of dynamic pages
        #
        #   @return [Boolean, nil]
        optional :use_for_pages, HubspotSDK::Internal::Type::Boolean, api_name: :useForPages

        # @!method initialize(deleted_at:, label:, name:, id: nil, allow_child_tables: nil, allow_public_api_access: nil, column_count: nil, columns: nil, created_at: nil, created_by: nil, deleted: nil, dynamic_meta_tags: nil, enable_child_table_pages: nil, is_ordered_manually: nil, published: nil, published_at: nil, row_count: nil, updated_at: nil, updated_by: nil, use_for_pages: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::HubDBTableV3} for more details.
        #
        #   @param deleted_at [Time]
        #
        #   @param label [String] Label of the table
        #
        #   @param name [String] Name of the table
        #
        #   @param id [String] Id of the table
        #
        #   @param allow_child_tables [Boolean] Specifies whether child tables can be created
        #
        #   @param allow_public_api_access [Boolean] Specifies whether the table can be read by public without authorization
        #
        #   @param column_count [Integer] Number of columns including deleted
        #
        #   @param columns [Array<HubspotSDK::Models::Cms::Column>] List of columns in the table
        #
        #   @param created_at [Time] Timestamp at which the table is created
        #
        #   @param created_by [HubspotSDK::Models::Cms::SimpleUser]
        #
        #   @param deleted [Boolean]
        #
        #   @param dynamic_meta_tags [Hash{Symbol=>Integer}] Specifies the key value pairs of the [metadata fields](https://developers.hubspo
        #
        #   @param enable_child_table_pages [Boolean] Specifies creation of multi-level dynamic pages using child tables
        #
        #   @param is_ordered_manually [Boolean]
        #
        #   @param published [Boolean]
        #
        #   @param published_at [Time] Timestamp at which the table is published recently
        #
        #   @param row_count [Integer] Number of rows in the table
        #
        #   @param updated_at [Time] Timestamp at which the table is updated recently
        #
        #   @param updated_by [HubspotSDK::Models::Cms::SimpleUser]
        #
        #   @param use_for_pages [Boolean] Specifies whether the table can be used for creation of dynamic pages
      end
    end
  end
end
