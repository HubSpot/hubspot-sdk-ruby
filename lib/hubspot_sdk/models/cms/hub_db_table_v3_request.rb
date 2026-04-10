# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class HubDBTableV3Request < HubSpotSDK::Internal::Type::BaseModel
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

        # @!attribute columns
        #   List of columns in the table
        #
        #   @return [Array<HubSpotSDK::Models::Cms::ColumnRequest>]
        required :columns, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ColumnRequest] }

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

        # @!attribute use_for_pages
        #   Specifies whether the table can be used for creation of dynamic pages
        #
        #   @return [Boolean]
        required :use_for_pages, HubSpotSDK::Internal::Type::Boolean, api_name: :useForPages

        # @!method initialize(allow_child_tables:, allow_public_api_access:, columns:, dynamic_meta_tags:, enable_child_table_pages:, label:, name:, use_for_pages:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Cms::HubDBTableV3Request} for more details.
        #
        #   @param allow_child_tables [Boolean] Specifies whether child tables can be created
        #
        #   @param allow_public_api_access [Boolean] Specifies whether the table can be read by public without authorization
        #
        #   @param columns [Array<HubSpotSDK::Models::Cms::ColumnRequest>] List of columns in the table
        #
        #   @param dynamic_meta_tags [Hash{Symbol=>Integer}] Specifies the key value pairs of the [metadata fields](https://developers.hubspo
        #
        #   @param enable_child_table_pages [Boolean] Specifies creation of multi-level dynamic pages using child tables
        #
        #   @param label [String] Label of the table
        #
        #   @param name [String] Name of the table
        #
        #   @param use_for_pages [Boolean] Specifies whether the table can be used for creation of dynamic pages
      end
    end
  end
end
