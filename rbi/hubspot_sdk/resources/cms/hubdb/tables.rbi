# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Hubdb
        class Tables
          # Creates a new draft HubDB table given a JSON schema. The table name and label
          # should be unique for each account.
          sig do
            params(
              label: String,
              name: String,
              allow_child_tables: T::Boolean,
              allow_public_api_access: T::Boolean,
              columns: T::Array[HubspotSDK::Cms::ColumnRequest::OrHash],
              dynamic_meta_tags: T::Hash[Symbol, Integer],
              enable_child_table_pages: T::Boolean,
              use_for_pages: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::HubDBTableV3)
          end
          def create(
            # Label of the table
            label:,
            # Name of the table
            name:,
            # Specifies whether child tables can be created
            allow_child_tables: nil,
            # Specifies whether the table can be read by public without authorization
            allow_public_api_access: nil,
            # List of columns in the table
            columns: nil,
            # Specifies the key value pairs of the
            # [metadata fields](https://developers.hubspot.com/docs/cms/guides/dynamic-pages/hubdb#dynamic-pages)
            # with the associated column IDs.
            dynamic_meta_tags: nil,
            # Specifies creation of multi-level dynamic pages using child tables
            enable_child_table_pages: nil,
            # Specifies whether the table can be used for creation of dynamic pages
            use_for_pages: nil,
            request_options: {}
          )
          end

          # Returns the details for the published version of each table defined in an
          # account, including column definitions.
          sig do
            params(
              after: String,
              archived: T::Boolean,
              content_type: String,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              is_get_localized_schema: T::Boolean,
              limit: Integer,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Internal::Page[HubspotSDK::Cms::HubDBTableV3])
          end
          def list(
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            # Specifies whether to return archived tables. Defaults to `false`.
            archived: nil,
            content_type: nil,
            # Only return tables created after the specified time.
            created_after: nil,
            # Only return tables created at exactly the specified time.
            created_at: nil,
            # Only return tables created before the specified time.
            created_before: nil,
            is_get_localized_schema: nil,
            # The maximum number of results to return. Default is 1000.
            limit: nil,
            # Specifies which fields to use for sorting results. Valid fields are `name`,
            # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
            # default.
            sort: nil,
            # Only return tables last updated after the specified time.
            updated_after: nil,
            # Only return tables last updated at exactly the specified time.
            updated_at: nil,
            # Only return tables last updated before the specified time.
            updated_before: nil,
            request_options: {}
          )
          end

          # Archive (soft delete) an existing HubDB table. This archives both the published
          # and draft versions.
          sig do
            params(
              table_id_or_name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The ID or name of the table to archive.
            table_id_or_name,
            request_options: {}
          )
          end

          # Clone an existing HubDB table. The `newName` and `newLabel` of the new table can
          # be sent as JSON in the request body. This will create the cloned table as a
          # draft.
          sig do
            params(
              table_id_or_name: String,
              copy_rows: T::Boolean,
              is_hubspot_defined: T::Boolean,
              new_label: String,
              new_name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::HubDBTableV3)
          end
          def clone_draft(
            # The ID or name of the table to clone.
            table_id_or_name,
            # Specifies whether to copy the rows during clone
            copy_rows:,
            is_hubspot_defined:,
            # The new label for the cloned table
            new_label: nil,
            # The new name for the cloned table
            new_name: nil,
            request_options: {}
          )
          end

          # Delete a specific version of a table
          sig do
            params(
              version_id: Integer,
              table_id_or_name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_version(version_id, table_id_or_name:, request_options: {})
          end

          # Exports the published version of a table in a specified format.
          sig do
            params(
              table_id_or_name: String,
              format_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def export(
            # The ID or name of the table to export.
            table_id_or_name,
            # The file format to export. Possible values include `CSV`, `XLSX`, and `XLS`.
            format_: nil,
            request_options: {}
          )
          end

          # Exports the draft version of a table to CSV / EXCEL format.
          sig do
            params(
              table_id_or_name: String,
              format_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(StringIO)
          end
          def export_draft(
            # The ID or name of the table to export.
            table_id_or_name,
            # The file format to export. Possible values include `CSV`, `XLSX`, and `XLS`.
            format_: nil,
            request_options: {}
          )
          end

          # Returns the details for the published version of the specified table. This will
          # include the definitions for the columns in the table and the number of rows in
          # the table.
          #
          # **Note:** This endpoint can be accessed without any authentication if the table
          # is set to be allowed for public access. To do so, you'll need to include the
          # HubSpot account ID in a `portalId` query parameter.
          sig do
            params(
              table_id_or_name: String,
              archived: T::Boolean,
              include_foreign_ids: T::Boolean,
              is_get_localized_schema: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::HubDBTableV3)
          end
          def get(
            # The ID or name of the table to return.
            table_id_or_name,
            # Set this to `true` to return details for an archived table. Defaults to `false`.
            archived: nil,
            # Set this to `true` to populate foreign ID values in the result.
            include_foreign_ids: nil,
            is_get_localized_schema: nil,
            request_options: {}
          )
          end

          # Get the details for the draft version of a specific HubDB table. This will
          # include the definitions for the columns in the table and the number of rows in
          # the table.
          sig do
            params(
              table_id_or_name: String,
              archived: T::Boolean,
              include_foreign_ids: T::Boolean,
              is_get_localized_schema: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::HubDBTableV3)
          end
          def get_draft(
            # The ID or name of the table to return.
            table_id_or_name,
            # Set this to `true` to return an archived table. Defaults to `false`.
            archived: nil,
            # Set this to `true` to populate foreign ID values in the result.
            include_foreign_ids: nil,
            is_get_localized_schema: nil,
            request_options: {}
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
          sig do
            params(
              table_id_or_name: String,
              config: String,
              file: HubspotSDK::Internal::FileInput,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::ImportResult)
          end
          def import_draft(
            # The ID of the destination table where data will be imported.
            table_id_or_name,
            config: nil,
            file: nil,
            request_options: {}
          )
          end

          # Returns the details for each draft table defined in the specified account,
          # including column definitions.
          sig do
            params(
              after: String,
              archived: T::Boolean,
              content_type: String,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              is_get_localized_schema: T::Boolean,
              limit: Integer,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Cms::CollectionResponseWithTotalHubDBTableV3ForwardPaging
            )
          end
          def list_draft(
            # The cursor token value to get the next set of results. You can get this from the
            # `paging.next.after` JSON property of a paged response containing more results.
            after: nil,
            # Specifies whether to return archived tables. Defaults to `false`.
            archived: nil,
            content_type: nil,
            # Only return tables created after the specified time.
            created_after: nil,
            # Only return tables created at exactly the specified time.
            created_at: nil,
            # Only return tables created before the specified time.
            created_before: nil,
            is_get_localized_schema: nil,
            # The maximum number of results to return. Default is 1000.
            limit: nil,
            # Specifies which fields to use for sorting results. Valid fields are `name`,
            # `createdAt`, `updatedAt`, `createdBy`, `updatedBy`. `createdAt` will be used by
            # default.
            sort: nil,
            # Only return tables last updated after the specified time.
            updated_after: nil,
            # Only return tables last updated at exactly the specified time.
            updated_at: nil,
            # Only return tables last updated before the specified time.
            updated_before: nil,
            request_options: {}
          )
          end

          # Publishes the table by copying the data and table schema changes from draft
          # version to the published version, meaning any website pages using data from the
          # table will be updated.
          sig do
            params(
              table_id_or_name: String,
              include_foreign_ids: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::HubDBTableV3)
          end
          def publish_draft(
            # The ID or name of the table to publish.
            table_id_or_name,
            # Set this to `true` to populate foreign ID values in the response.
            include_foreign_ids: nil,
            request_options: {}
          )
          end

          # Replaces the data in the draft version of the table with values from the
          # published version. Any unpublished changes in the draft will be lost after this
          # call is made.
          sig do
            params(
              table_id_or_name: String,
              include_foreign_ids: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::HubDBTableV3)
          end
          def reset_draft(
            # The ID or name of the table to reset.
            table_id_or_name,
            # Set this to `true` to populate foreign ID values in the response.
            include_foreign_ids: nil,
            request_options: {}
          )
          end

          # Unpublishes the table, meaning any website pages using data from the table will
          # not render any data.
          sig do
            params(
              table_id_or_name: String,
              include_foreign_ids: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::HubDBTableV3)
          end
          def unpublish(
            # The ID or name of the table to publish.
            table_id_or_name,
            # Set this to `true` to populate foreign ID values in the response.
            include_foreign_ids: nil,
            request_options: {}
          )
          end

          # Update an existing HubDB table. You can use this endpoint to add or remove
          # columns to the table as well as restore an archived table. Tables updated using
          # the endpoint will only modify the draft verion of the table. Use the `/publish`
          # endpoint to push all the changes to the published version. To restore a table,
          # include the query parameter `archived=true` and `"archived": false` in the json
          # body. **Note:** You need to include all the columns in the input when you are
          # adding/removing/updating a column. If you do not include an already existing
          # column in the request, it will be deleted.
          sig do
            params(
              table_id_or_name: String,
              label: String,
              name: String,
              archived: T::Boolean,
              include_foreign_ids: T::Boolean,
              is_get_localized_schema: T::Boolean,
              allow_child_tables: T::Boolean,
              allow_public_api_access: T::Boolean,
              columns: T::Array[HubspotSDK::Cms::ColumnRequest::OrHash],
              dynamic_meta_tags: T::Hash[Symbol, Integer],
              enable_child_table_pages: T::Boolean,
              use_for_pages: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::HubDBTableV3)
          end
          def update_draft(
            # Path param: The ID or name of the table to update.
            table_id_or_name,
            # Body param: Label of the table
            label:,
            # Body param: Name of the table
            name:,
            # Query param: Specifies whether to return archived tables. Defaults to `false`.
            archived: nil,
            # Query param: Set this to `true` to populate foreign ID values in the result.
            include_foreign_ids: nil,
            # Query param:
            is_get_localized_schema: nil,
            # Body param: Specifies whether child tables can be created
            allow_child_tables: nil,
            # Body param: Specifies whether the table can be read by public without
            # authorization
            allow_public_api_access: nil,
            # Body param: List of columns in the table
            columns: nil,
            # Body param: Specifies the key value pairs of the
            # [metadata fields](https://developers.hubspot.com/docs/cms/guides/dynamic-pages/hubdb#dynamic-pages)
            # with the associated column IDs.
            dynamic_meta_tags: nil,
            # Body param: Specifies creation of multi-level dynamic pages using child tables
            enable_child_table_pages: nil,
            # Body param: Specifies whether the table can be used for creation of dynamic
            # pages
            use_for_pages: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
