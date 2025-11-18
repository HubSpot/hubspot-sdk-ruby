# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Hubdb
        class Tables
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::TableCreateParams} for more details.
          #
          # Creates a new draft HubDB table given a JSON schema. The table name and label
          # should be unique for each account.
          #
          # @overload create(allow_child_tables:, allow_public_api_access:, columns:, dynamic_meta_tags:, enable_child_table_pages:, label:, name:, use_for_pages:, request_options: {})
          #
          # @param allow_child_tables [Boolean] Specifies whether child tables can be created
          #
          # @param allow_public_api_access [Boolean] Specifies whether the table can be read by public without authorization
          #
          # @param columns [Array<HubspotSDK::Models::Cms::ColumnRequest>] List of columns in the table
          #
          # @param dynamic_meta_tags [Hash{Symbol=>Integer}] Specifies the key value pairs of the [metadata fields](https://developers.hubspo
          #
          # @param enable_child_table_pages [Boolean] Specifies creation of multi-level dynamic pages using child tables
          #
          # @param label [String] Label of the table
          #
          # @param name [String] Name of the table
          #
          # @param use_for_pages [Boolean] Specifies whether the table can be used for creation of dynamic pages
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableCreateParams
          def create(params)
            parsed, options = HubspotSDK::Cms::Hubdb::TableCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: "cms/v3/hubdb/tables",
              body: parsed,
              model: HubspotSDK::Cms::HubDBTableV3,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::TableListParams} for more details.
          #
          # Returns the details for the published version of each table defined in an
          # account, including column definitions.
          #
          # @overload list(after: nil, archived: nil, content_type: nil, created_after: nil, created_at: nil, created_before: nil, is_get_localized_schema: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param archived [Boolean] Specifies whether to return archived tables. Defaults to `false`.
          #
          # @param content_type [String]
          #
          # @param created_after [Time] Only return tables created after the specified time.
          #
          # @param created_at [Time] Only return tables created at exactly the specified time.
          #
          # @param created_before [Time] Only return tables created before the specified time.
          #
          # @param is_get_localized_schema [Boolean]
          #
          # @param limit [Integer] The maximum number of results to return. Default is 1000.
          #
          # @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `name`, `cre
          #
          # @param updated_after [Time] Only return tables last updated after the specified time.
          #
          # @param updated_at [Time] Only return tables last updated at exactly the specified time.
          #
          # @param updated_before [Time] Only return tables last updated before the specified time.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::HubDBTableV3>]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableListParams
          def list(params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::TableListParams.dump_request(params)
            @client.request(
              method: :get,
              path: "cms/v3/hubdb/tables",
              query: parsed.transform_keys(
                content_type: "contentType",
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                is_get_localized_schema: "isGetLocalizedSchema",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::HubDBTableV3,
              options: options
            )
          end

          # Archive (soft delete) an existing HubDB table. This archives both the published
          # and draft versions.
          #
          # @overload delete(table_id_or_name, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the table to archive.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableDeleteParams
          def delete(table_id_or_name, params = {})
            @client.request(
              method: :delete,
              path: ["cms/v3/hubdb/tables/%1$s", table_id_or_name],
              model: NilClass,
              options: params[:request_options]
            )
          end

          # Clone an existing HubDB table. The `newName` and `newLabel` of the new table can
          # be sent as JSON in the request body. This will create the cloned table as a
          # draft.
          #
          # @overload clone_draft(table_id_or_name, copy_rows:, is_hubspot_defined:, new_label: nil, new_name: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the table to clone.
          #
          # @param copy_rows [Boolean] Specifies whether to copy the rows during clone
          #
          # @param is_hubspot_defined [Boolean]
          #
          # @param new_label [String] The new label for the cloned table
          #
          # @param new_name [String] The new name for the cloned table
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableCloneDraftParams
          def clone_draft(table_id_or_name, params)
            parsed, options = HubspotSDK::Cms::Hubdb::TableCloneDraftParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/v3/hubdb/tables/%1$s/draft/clone", table_id_or_name],
              body: parsed,
              model: HubspotSDK::Cms::HubDBTableV3,
              options: options
            )
          end

          # Delete a specific version of a table
          #
          # @overload delete_version(version_id, table_id_or_name:, request_options: {})
          #
          # @param version_id [Integer]
          # @param table_id_or_name [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableDeleteVersionParams
          def delete_version(version_id, params)
            parsed, options = HubspotSDK::Cms::Hubdb::TableDeleteVersionParams.dump_request(params)
            table_id_or_name =
              parsed.delete(:table_id_or_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["cms/v3/hubdb/tables/%1$s/versions/%2$s", table_id_or_name, version_id],
              model: NilClass,
              options: options
            )
          end

          # Exports the published version of a table in a specified format.
          #
          # @overload export(table_id_or_name, format_: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the table to export.
          #
          # @param format_ [String] The file format to export. Possible values include `CSV`, `XLSX`, and `XLS`.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableExportParams
          def export(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::TableExportParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/hubdb/tables/%1$s/export", table_id_or_name],
              query: parsed.transform_keys(format_: "format"),
              headers: {"accept" => "application/vnd.ms-excel"},
              model: StringIO,
              options: options
            )
          end

          # Exports the draft version of a table to CSV / EXCEL format.
          #
          # @overload export_draft(table_id_or_name, format_: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the table to export.
          #
          # @param format_ [String] The file format to export. Possible values include `CSV`, `XLSX`, and `XLS`.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [StringIO]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableExportDraftParams
          def export_draft(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::TableExportDraftParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/hubdb/tables/%1$s/draft/export", table_id_or_name],
              query: parsed.transform_keys(format_: "format"),
              headers: {"accept" => "application/vnd.ms-excel"},
              model: StringIO,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::TableGetParams} for more details.
          #
          # Returns the details for the published version of the specified table. This will
          # include the definitions for the columns in the table and the number of rows in
          # the table.
          #
          # **Note:** This endpoint can be accessed without any authentication if the table
          # is set to be allowed for public access. To do so, you'll need to include the
          # HubSpot account ID in a `portalId` query parameter.
          #
          # @overload get(table_id_or_name, archived: nil, include_foreign_ids: nil, is_get_localized_schema: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the table to return.
          #
          # @param archived [Boolean] Set this to `true` to return details for an archived table. Defaults to `false`.
          #
          # @param include_foreign_ids [Boolean] Set this to `true` to populate foreign ID values in the result.
          #
          # @param is_get_localized_schema [Boolean]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableGetParams
          def get(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::TableGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/hubdb/tables/%1$s", table_id_or_name],
              query: parsed.transform_keys(
                include_foreign_ids: "includeForeignIds",
                is_get_localized_schema: "isGetLocalizedSchema"
              ),
              model: HubspotSDK::Cms::HubDBTableV3,
              options: options
            )
          end

          # Get the details for the draft version of a specific HubDB table. This will
          # include the definitions for the columns in the table and the number of rows in
          # the table.
          #
          # @overload get_draft(table_id_or_name, archived: nil, include_foreign_ids: nil, is_get_localized_schema: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the table to return.
          #
          # @param archived [Boolean] Set this to `true` to return an archived table. Defaults to `false`.
          #
          # @param include_foreign_ids [Boolean] Set this to `true` to populate foreign ID values in the result.
          #
          # @param is_get_localized_schema [Boolean]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableGetDraftParams
          def get_draft(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::TableGetDraftParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/hubdb/tables/%1$s/draft", table_id_or_name],
              query: parsed.transform_keys(
                include_foreign_ids: "includeForeignIds",
                is_get_localized_schema: "isGetLocalizedSchema"
              ),
              model: HubspotSDK::Cms::HubDBTableV3,
              options: options
            )
          end

          # Import the contents of a CSV file into an existing HubDB table. The data will
          # always be imported into the draft version of the table. Use the `/publish`
          # endpoint to push these changes to the published version. This endpoint takes a
          # multi-part POST request. The first part will be a set of JSON-formatted options
          # for the import and you can specify this with the name as `config`. The second
          # part will be the CSV file you want to import and you can specify this with the
          # name as `file`. Refer the
          # [overview section](https://developers.hubspot.com/docs/api/cms/hubdb#importing-tables)
          # to check the details and format of the JSON-formatted options for the import.
          #
          # @overload import_draft(table_id_or_name, config: nil, file: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID of the destination table where data will be imported.
          #
          # @param config [String]
          #
          # @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::ImportResult]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableImportDraftParams
          def import_draft(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::TableImportDraftParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/v3/hubdb/tables/%1$s/draft/import", table_id_or_name],
              headers: {"content-type" => "multipart/form-data"},
              body: parsed,
              model: HubspotSDK::Cms::ImportResult,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::TableListDraftParams} for more details.
          #
          # Returns the details for each draft table defined in the specified account,
          # including column definitions.
          #
          # @overload list_draft(after: nil, archived: nil, content_type: nil, created_after: nil, created_at: nil, created_before: nil, is_get_localized_schema: nil, limit: nil, sort: nil, updated_after: nil, updated_at: nil, updated_before: nil, request_options: {})
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param archived [Boolean] Specifies whether to return archived tables. Defaults to `false`.
          #
          # @param content_type [String]
          #
          # @param created_after [Time] Only return tables created after the specified time.
          #
          # @param created_at [Time] Only return tables created at exactly the specified time.
          #
          # @param created_before [Time] Only return tables created before the specified time.
          #
          # @param is_get_localized_schema [Boolean]
          #
          # @param limit [Integer] The maximum number of results to return. Default is 1000.
          #
          # @param sort [Array<String>] Specifies which fields to use for sorting results. Valid fields are `name`, `cre
          #
          # @param updated_after [Time] Only return tables last updated after the specified time.
          #
          # @param updated_at [Time] Only return tables last updated at exactly the specified time.
          #
          # @param updated_before [Time] Only return tables last updated before the specified time.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Cms::HubDBTableV3>]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableListDraftParams
          def list_draft(params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::TableListDraftParams.dump_request(params)
            @client.request(
              method: :get,
              path: "cms/v3/hubdb/tables/draft",
              query: parsed.transform_keys(
                content_type: "contentType",
                created_after: "createdAfter",
                created_at: "createdAt",
                created_before: "createdBefore",
                is_get_localized_schema: "isGetLocalizedSchema",
                updated_after: "updatedAfter",
                updated_at: "updatedAt",
                updated_before: "updatedBefore"
              ),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Cms::HubDBTableV3,
              options: options
            )
          end

          # Publishes the table by copying the data and table schema changes from draft
          # version to the published version, meaning any website pages using data from the
          # table will be updated.
          #
          # @overload publish_draft(table_id_or_name, include_foreign_ids: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the table to publish.
          #
          # @param include_foreign_ids [Boolean] Set this to `true` to populate foreign ID values in the response.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TablePublishDraftParams
          def publish_draft(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::TablePublishDraftParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/v3/hubdb/tables/%1$s/draft/publish", table_id_or_name],
              query: parsed.transform_keys(include_foreign_ids: "includeForeignIds"),
              model: HubspotSDK::Cms::HubDBTableV3,
              options: options
            )
          end

          # Replaces the data in the draft version of the table with values from the
          # published version. Any unpublished changes in the draft will be lost after this
          # call is made.
          #
          # @overload reset_draft(table_id_or_name, include_foreign_ids: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the table to reset.
          #
          # @param include_foreign_ids [Boolean] Set this to `true` to populate foreign ID values in the response.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableResetDraftParams
          def reset_draft(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::TableResetDraftParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/v3/hubdb/tables/%1$s/draft/reset", table_id_or_name],
              query: parsed.transform_keys(include_foreign_ids: "includeForeignIds"),
              model: HubspotSDK::Cms::HubDBTableV3,
              options: options
            )
          end

          # Unpublishes the table, meaning any website pages using data from the table will
          # not render any data.
          #
          # @overload unpublish(table_id_or_name, include_foreign_ids: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the table to publish.
          #
          # @param include_foreign_ids [Boolean] Set this to `true` to populate foreign ID values in the response.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableUnpublishParams
          def unpublish(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::TableUnpublishParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/v3/hubdb/tables/%1$s/unpublish", table_id_or_name],
              query: parsed.transform_keys(include_foreign_ids: "includeForeignIds"),
              model: HubspotSDK::Cms::HubDBTableV3,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::TableUpdateDraftParams} for more details.
          #
          # Update an existing HubDB table. You can use this endpoint to add or remove
          # columns to the table as well as restore an archived table. Tables updated using
          # the endpoint will only modify the draft verion of the table. Use the `/publish`
          # endpoint to push all the changes to the published version. To restore a table,
          # include the query parameter `archived=true` and `"archived": false` in the json
          # body. **Note:** You need to include all the columns in the input when you are
          # adding/removing/updating a column. If you do not include an already existing
          # column in the request, it will be deleted.
          #
          # @overload update_draft(table_id_or_name, allow_child_tables:, allow_public_api_access:, columns:, dynamic_meta_tags:, enable_child_table_pages:, label:, name:, use_for_pages:, archived: nil, include_foreign_ids: nil, is_get_localized_schema: nil, request_options: {})
          #
          # @param table_id_or_name [String] Path param: The ID or name of the table to update.
          #
          # @param allow_child_tables [Boolean] Body param: Specifies whether child tables can be created
          #
          # @param allow_public_api_access [Boolean] Body param: Specifies whether the table can be read by public without authorizat
          #
          # @param columns [Array<HubspotSDK::Models::Cms::ColumnRequest>] Body param: List of columns in the table
          #
          # @param dynamic_meta_tags [Hash{Symbol=>Integer}] Body param: Specifies the key value pairs of the [metadata fields](https://devel
          #
          # @param enable_child_table_pages [Boolean] Body param: Specifies creation of multi-level dynamic pages using child tables
          #
          # @param label [String] Body param: Label of the table
          #
          # @param name [String] Body param: Name of the table
          #
          # @param use_for_pages [Boolean] Body param: Specifies whether the table can be used for creation of dynamic page
          #
          # @param archived [Boolean] Query param: Specifies whether to return archived tables. Defaults to `false`.
          #
          # @param include_foreign_ids [Boolean] Query param: Set this to `true` to populate foreign ID values in the result.
          #
          # @param is_get_localized_schema [Boolean] Query param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::TableUpdateDraftParams
          def update_draft(table_id_or_name, params)
            parsed, options = HubspotSDK::Cms::Hubdb::TableUpdateDraftParams.dump_request(params)
            query_params = [:archived, :include_foreign_ids, :is_get_localized_schema]
            @client.request(
              method: :patch,
              path: ["cms/v3/hubdb/tables/%1$s/draft", table_id_or_name],
              query: parsed.slice(*query_params).transform_keys(
                include_foreign_ids: "includeForeignIds",
                is_get_localized_schema: "isGetLocalizedSchema"
              ),
              body: parsed.except(*query_params),
              model: HubspotSDK::Cms::HubDBTableV3,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
