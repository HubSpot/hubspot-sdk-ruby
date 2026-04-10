# typed: strong

module HubSpotSDK
  module Resources
    class Cms
      class Hubdb
        class Rows
          # Add a new row to a HubDB table. New rows will be added to the draft version of
          # the table. Use the `/publish` endpoint to push these changes to published
          # version.
          sig do
            params(
              table_id_or_name: String,
              child_table_id: Integer,
              display_index: Integer,
              values: T::Hash[Symbol, T.anything],
              name: String,
              path: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::HubDBTableRowV3)
          end
          def create(
            table_id_or_name,
            # Specifies the value for the column child table id
            child_table_id:,
            # The index position for displaying the row within the table.
            display_index:,
            # List of key value pairs with the column name and column value
            values:,
            # Specifies the value for `hs_name` column, which will be used as title in the
            # dynamic pages
            name: nil,
            # Specifies the value for `hs_path` column, which will be used as slug in the
            # dynamic pages
            path: nil,
            request_options: {}
          )
          end

          # Returns a set of rows in the published version of the specified table. Row
          # results can be filtered and sorted. Filtering and sorting options will be sent
          # as query parameters to the API request. For example, by adding the query
          # parameters `column1__gt=5&sort=-column1`, API returns the rows with values for
          # column `column1` greater than 5 and in the descending order of `column1` values.
          # Refer to the
          # [overview section](https://developers.hubspot.com/docs/api/cms/hubdb#filtering-and-sorting-table-rows)
          # for detailed filtering and sorting options. **Note:** This endpoint can be
          # accessed without any authentication, if the table is set to be allowed for
          # public access.
          sig do
            params(
              table_id_or_name: String,
              after: String,
              archived: T::Boolean,
              limit: Integer,
              offset: Integer,
              properties: T::Array[String],
              sort: T::Array[String],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Cms::UnifiedCollectionResponseWithTotalBaseHubDBTableRowV3::Variants
            )
          end
          def list(
            table_id_or_name,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            # The maximum number of results to display per page.
            limit: nil,
            offset: nil,
            properties: nil,
            sort: nil,
            request_options: {}
          )
          end

          # Clones rows in the draft version of the specified table, given a set of row ids.
          # Maximum of 100 row ids per call.
          sig do
            params(
              table_id_or_name: String,
              inputs:
                T::Array[
                  HubSpotSDK::Cms::HubDBTableRowBatchCloneRequest::OrHash
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::BatchResponseHubDBTableRowV3)
          end
          def clone_batch(table_id_or_name, inputs:, request_options: {})
          end

          # Clones a single row in the draft version of a table.
          sig do
            params(
              row_id: String,
              table_id_or_name: String,
              name: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::HubDBTableRowV3)
          end
          def clone_draft(
            # Path param
            row_id,
            # Path param
            table_id_or_name:,
            # Query param
            name: nil,
            request_options: {}
          )
          end

          # Creates rows in the draft version of the specified table, given an array of row
          # objects. Maximum of 100 row object per call. See the overview section for more
          # details with an example.
          sig do
            params(
              table_id_or_name: String,
              inputs: T::Array[HubSpotSDK::Cms::HubDBTableRowV3Request::OrHash],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::BatchResponseHubDBTableRowV3)
          end
          def create_batch(table_id_or_name, inputs:, request_options: {})
          end

          # Permanently deletes a row from a table's draft version.
          sig do
            params(
              row_id: String,
              table_id_or_name: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_draft(row_id, table_id_or_name:, request_options: {})
          end

          # Get a single row by ID from the published version of a table. **Note:** This
          # endpoint can be accessed without any authentication, if the table is set to be
          # allowed for public access.
          sig do
            params(
              row_id: String,
              table_id_or_name: String,
              archived: T::Boolean,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::HubDBTableRowV3)
          end
          def get(
            # Path param
            row_id,
            # Path param
            table_id_or_name:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          # Returns rows in the published version of the specified table, given a set of row
          # IDs. **Note:** This endpoint can be accessed without any authentication if the
          # table is set to be allowed for public access.
          sig do
            params(
              table_id_or_name: String,
              inputs: T::Array[String],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::BatchResponseHubDBTableRowV3)
          end
          def get_batch(
            table_id_or_name,
            # Strings to input.
            inputs:,
            request_options: {}
          )
          end

          # Get a single row by ID from a table's draft version.
          sig do
            params(
              row_id: String,
              table_id_or_name: String,
              archived: T::Boolean,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::HubDBTableRowV3)
          end
          def get_draft(
            # Path param
            row_id,
            # Path param
            table_id_or_name:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          # Returns rows in the draft version of the specified table, given a set of row
          # IDs.
          sig do
            params(
              table_id_or_name: String,
              inputs: T::Array[String],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::BatchResponseHubDBTableRowV3)
          end
          def get_draft_batch(
            table_id_or_name,
            # Strings to input.
            inputs:,
            request_options: {}
          )
          end

          # Permanently delete rows from the draft version of a table, given a set of row
          # IDs. Maximum of 100 row IDs per call.
          sig do
            params(
              table_id_or_name: String,
              inputs: T::Array[String],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def purge_batch(
            table_id_or_name,
            # Strings to input.
            inputs:,
            request_options: {}
          )
          end

          # Replaces multiple rows as a batch in the draft version of the table, with a
          # maximum of 100 rows per call. See the endpoint
          # `PUT /tables/{tableIdOrName}/rows/{rowId}/draft` for details on updating a
          # single row.
          sig do
            params(
              table_id_or_name: String,
              inputs:
                T::Array[
                  HubSpotSDK::Cms::HubDBTableRowV3BatchUpdateRequest::OrHash
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::BatchResponseHubDBTableRowV3)
          end
          def replace_batch(table_id_or_name, inputs:, request_options: {})
          end

          # Replace a single row in the draft version of a table. All column values must be
          # specified. If a column has a value in the target table and this request doesn't
          # define that value, it will be deleted. See the "Create a row" endpoint for
          # instructions on how to format the JSON row definitions.
          sig do
            params(
              row_id: String,
              table_id_or_name: String,
              child_table_id: Integer,
              display_index: Integer,
              values: T::Hash[Symbol, T.anything],
              name: String,
              path: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::HubDBTableRowV3)
          end
          def replace_draft(
            # Path param
            row_id,
            # Path param
            table_id_or_name:,
            # Body param: Specifies the value for the column child table id
            child_table_id:,
            # Body param: The index position for displaying the row within the table.
            display_index:,
            # Body param: List of key value pairs with the column name and column value
            values:,
            # Body param: Specifies the value for `hs_name` column, which will be used as
            # title in the dynamic pages
            name: nil,
            # Body param: Specifies the value for `hs_path` column, which will be used as slug
            # in the dynamic pages
            path: nil,
            request_options: {}
          )
          end

          # Updates multiple rows as a batch in the draft version of the table, with a
          # maximum of 100 rows per call. See the endpoint
          # `PATCH /tables/{tableIdOrName}/rows/{rowId}/draft` for details on updating a
          # single row.
          sig do
            params(
              table_id_or_name: String,
              inputs:
                T::Array[
                  HubSpotSDK::Cms::HubDBTableRowV3BatchUpdateRequest::OrHash
                ],
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::BatchResponseHubDBTableRowV3)
          end
          def update_batch(table_id_or_name, inputs:, request_options: {})
          end

          # Partially update a single row in the table's draft version. All the column
          # values need not be specified. Only the columns or fields that needs to be
          # modified can be specified. See the "Create a row" endpoint for instructions on
          # how to format the JSON row definitions.
          sig do
            params(
              row_id: String,
              table_id_or_name: String,
              child_table_id: Integer,
              display_index: Integer,
              values: T::Hash[Symbol, T.anything],
              name: String,
              path: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Cms::HubDBTableRowV3)
          end
          def update_draft(
            # Path param
            row_id,
            # Path param
            table_id_or_name:,
            # Body param: Specifies the value for the column child table id
            child_table_id:,
            # Body param: The index position for displaying the row within the table.
            display_index:,
            # Body param: List of key value pairs with the column name and column value
            values:,
            # Body param: Specifies the value for `hs_name` column, which will be used as
            # title in the dynamic pages
            name: nil,
            # Body param: Specifies the value for `hs_path` column, which will be used as slug
            # in the dynamic pages
            path: nil,
            request_options: {}
          )
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
