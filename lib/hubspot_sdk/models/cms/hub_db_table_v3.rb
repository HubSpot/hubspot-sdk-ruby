# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class HubDBTableV3 < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   Id of the table
        #
        #   @return [String]
        required :id, String

        # @!attribute allow_child_tables
        #   Specifies whether child tables can be created
        #
        #   @return [Boolean]
        required :allow_child_tables, HubSpotSDK::Internal::Type::Boolean, api_name: :allowChildTables

        # @!attribute allow_public_api_access
        #   Specifies whether the table can be read by public without authorization
        #
        #   @return [Boolean]
        required :allow_public_api_access,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :allowPublicApiAccess

        # @!attribute column_count
        #   Number of columns including deleted
        #
        #   @return [Integer]
        required :column_count, Integer, api_name: :columnCount

        # @!attribute columns
        #   List of columns in the table
        #
        #   @return [Array<HubSpotSDK::Models::Cms::Column>]
        required :columns, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::Column] }

        # @!attribute created_at
        #   Timestamp at which the table is created
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute deleted
        #   Specifies whether the table is marked as deleted.
        #
        #   @return [Boolean]
        required :deleted, HubSpotSDK::Internal::Type::Boolean

        # @!attribute deleted_at
        #   The timestamp indicating when the table was deleted.
        #
        #   @return [Time]
        required :deleted_at, Time, api_name: :deletedAt

        # @!attribute dynamic_meta_tags
        #   Specifies the key value pairs of the
        #   [metadata fields](https://developers.hubspot.com/docs/cms/guides/dynamic-pages/hubdb#dynamic-pages)
        #   with the associated column IDs.
        #
        #   @return [Hash{Symbol=>Integer}]
        required :dynamic_meta_tags, HubSpotSDK::Internal::Type::HashOf[Integer], api_name: :dynamicMetaTags

        # @!attribute enable_child_table_pages
        #   Specifies creation of multi-level dynamic pages using child tables
        #
        #   @return [Boolean]
        required :enable_child_table_pages,
                 HubSpotSDK::Internal::Type::Boolean,
                 api_name: :enableChildTablePages

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

        # @!attribute published
        #   Indicates whether the table is currently published.
        #
        #   @return [Boolean]
        required :published, HubSpotSDK::Internal::Type::Boolean

        # @!attribute published_at
        #   Timestamp at which the table is published recently
        #
        #   @return [Time]
        required :published_at, Time, api_name: :publishedAt

        # @!attribute row_count
        #   Number of rows in the table
        #
        #   @return [Integer]
        required :row_count, Integer, api_name: :rowCount

        # @!attribute updated_at
        #   Timestamp at which the table is updated recently
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute use_for_pages
        #   Specifies whether the table can be used for creation of dynamic pages
        #
        #   @return [Boolean]
        required :use_for_pages, HubSpotSDK::Internal::Type::Boolean, api_name: :useForPages

        # @!attribute created_by
        #
        #   @return [HubSpotSDK::Models::Cms::SimpleUser, nil]
        optional :created_by, -> { HubSpotSDK::Cms::SimpleUser }, api_name: :createdBy

        # @!attribute is_ordered_manually
        #   Indicates whether the table rows are ordered manually.
        #
        #   @return [Boolean, nil]
        optional :is_ordered_manually, HubSpotSDK::Internal::Type::Boolean, api_name: :isOrderedManually

        # @!attribute updated_by
        #
        #   @return [HubSpotSDK::Models::Cms::SimpleUser, nil]
        optional :updated_by, -> { HubSpotSDK::Cms::SimpleUser }, api_name: :updatedBy

        # @!method initialize(id:, allow_child_tables:, allow_public_api_access:, column_count:, columns:, created_at:, deleted:, deleted_at:, dynamic_meta_tags:, enable_child_table_pages:, label:, name:, published:, published_at:, row_count:, updated_at:, use_for_pages:, created_by: nil, is_ordered_manually: nil, updated_by: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Cms::HubDBTableV3} for more details.
        #
        #   @param id [String] Id of the table
        #
        #   @param allow_child_tables [Boolean] Specifies whether child tables can be created
        #
        #   @param allow_public_api_access [Boolean] Specifies whether the table can be read by public without authorization
        #
        #   @param column_count [Integer] Number of columns including deleted
        #
        #   @param columns [Array<HubSpotSDK::Models::Cms::Column>] List of columns in the table
        #
        #   @param created_at [Time] Timestamp at which the table is created
        #
        #   @param deleted [Boolean] Specifies whether the table is marked as deleted.
        #
        #   @param deleted_at [Time] The timestamp indicating when the table was deleted.
        #
        #   @param dynamic_meta_tags [Hash{Symbol=>Integer}] Specifies the key value pairs of the [metadata fields](https://developers.hubspo
        #
        #   @param enable_child_table_pages [Boolean] Specifies creation of multi-level dynamic pages using child tables
        #
        #   @param label [String] Label of the table
        #
        #   @param name [String] Name of the table
        #
        #   @param published [Boolean] Indicates whether the table is currently published.
        #
        #   @param published_at [Time] Timestamp at which the table is published recently
        #
        #   @param row_count [Integer] Number of rows in the table
        #
        #   @param updated_at [Time] Timestamp at which the table is updated recently
        #
        #   @param use_for_pages [Boolean] Specifies whether the table can be used for creation of dynamic pages
        #
        #   @param created_by [HubSpotSDK::Models::Cms::SimpleUser]
        #
        #   @param is_ordered_manually [Boolean] Indicates whether the table rows are ordered manually.
        #
        #   @param updated_by [HubSpotSDK::Models::Cms::SimpleUser]
      end
    end
  end
end
