# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Hubdb
        class Rows
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::RowCreateParams} for more details.
          #
          # Add a new row to a HubDB table. New rows will be added to the draft version of
          # the table. Use the `/publish` endpoint to push these changes to published
          # version.
          #
          # @overload create(table_id_or_name, child_table_id:, display_index:, values:, name: nil, path: nil, request_options: {})
          #
          # @param table_id_or_name [String]
          #
          # @param child_table_id [Integer] Specifies the value for the column child table id
          #
          # @param display_index [Integer] The index position for displaying the row within the table.
          #
          # @param values [Hash{Symbol=>Object}] List of key value pairs with the column name and column value
          #
          # @param name [String] Specifies the value for `hs_name` column, which will be used as title in the dyn
          #
          # @param path [String] Specifies the value for `hs_path` column, which will be used as slug in the dyna
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowCreateParams
          def create(table_id_or_name, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows", table_id_or_name],
              body: parsed,
              model: HubspotSDK::Cms::HubDBTableRowV3,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::RowListParams} for more details.
          #
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
          #
          # @overload list(table_id_or_name, after: nil, archived: nil, limit: nil, offset: nil, properties: nil, sort: nil, request_options: {})
          #
          # @param table_id_or_name [String]
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param offset [Integer]
          #
          # @param properties [Array<String>]
          #
          # @param sort [Array<String>]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3, HubspotSDK::Models::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowListParams
          def list(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::RowListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows", table_id_or_name],
              query: query,
              model: HubspotSDK::Cms::UnifiedCollectionResponseWithTotalBaseHubDBTableRowV3,
              options: options
            )
          end

          # Clones rows in the draft version of the specified table, given a set of row ids.
          # Maximum of 100 row ids per call.
          #
          # @overload clone_batch(table_id_or_name, inputs:, request_options: {})
          #
          # @param table_id_or_name [String]
          # @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowBatchCloneRequest>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowCloneBatchParams
          def clone_batch(table_id_or_name, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowCloneBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/draft/batch/clone", table_id_or_name],
              body: parsed,
              model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
              options: options
            )
          end

          # Clones a single row in the draft version of a table.
          #
          # @overload clone_draft(row_id, table_id_or_name:, name: nil, request_options: {})
          #
          # @param row_id [String] Path param
          #
          # @param table_id_or_name [String] Path param
          #
          # @param name [String] Query param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowCloneDraftParams
          def clone_draft(row_id, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowCloneDraftParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            table_id_or_name =
              parsed.delete(:table_id_or_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/%2$s/draft/clone", table_id_or_name, row_id],
              query: query,
              model: HubspotSDK::Cms::HubDBTableRowV3,
              options: options
            )
          end

          # Creates rows in the draft version of the specified table, given an array of row
          # objects. Maximum of 100 row object per call. See the overview section for more
          # details with an example.
          #
          # @overload create_batch(table_id_or_name, inputs:, request_options: {})
          #
          # @param table_id_or_name [String]
          # @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowV3Request>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowCreateBatchParams
          def create_batch(table_id_or_name, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowCreateBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/draft/batch/create", table_id_or_name],
              body: parsed,
              model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
              options: options
            )
          end

          # Permanently deletes a row from a table's draft version.
          #
          # @overload delete_draft(row_id, table_id_or_name:, request_options: {})
          #
          # @param row_id [String]
          # @param table_id_or_name [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowDeleteDraftParams
          def delete_draft(row_id, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowDeleteDraftParams.dump_request(params)
            table_id_or_name =
              parsed.delete(:table_id_or_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/%2$s/draft", table_id_or_name, row_id],
              model: NilClass,
              options: options
            )
          end

          # Get a single row by ID from the published version of a table. **Note:** This
          # endpoint can be accessed without any authentication, if the table is set to be
          # allowed for public access.
          #
          # @overload get(row_id, table_id_or_name:, archived: nil, request_options: {})
          #
          # @param row_id [String] Path param
          #
          # @param table_id_or_name [String] Path param
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowGetParams
          def get(row_id, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowGetParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            table_id_or_name =
              parsed.delete(:table_id_or_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/%2$s", table_id_or_name, row_id],
              query: query,
              model: HubspotSDK::Cms::HubDBTableRowV3,
              options: options
            )
          end

          # Returns rows in the published version of the specified table, given a set of row
          # IDs. **Note:** This endpoint can be accessed without any authentication if the
          # table is set to be allowed for public access.
          #
          # @overload get_batch(table_id_or_name, inputs:, request_options: {})
          #
          # @param table_id_or_name [String]
          #
          # @param inputs [Array<String>] Strings to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowGetBatchParams
          def get_batch(table_id_or_name, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowGetBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/batch/read", table_id_or_name],
              body: parsed,
              model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
              options: options
            )
          end

          # Get a single row by ID from a table's draft version.
          #
          # @overload get_draft(row_id, table_id_or_name:, archived: nil, request_options: {})
          #
          # @param row_id [String] Path param
          #
          # @param table_id_or_name [String] Path param
          #
          # @param archived [Boolean] Query param: Whether to return only results that have been archived.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowGetDraftParams
          def get_draft(row_id, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowGetDraftParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            table_id_or_name =
              parsed.delete(:table_id_or_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/%2$s/draft", table_id_or_name, row_id],
              query: query,
              model: HubspotSDK::Cms::HubDBTableRowV3,
              options: options
            )
          end

          # Returns rows in the draft version of the specified table, given a set of row
          # IDs.
          #
          # @overload get_draft_batch(table_id_or_name, inputs:, request_options: {})
          #
          # @param table_id_or_name [String]
          #
          # @param inputs [Array<String>] Strings to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowGetDraftBatchParams
          def get_draft_batch(table_id_or_name, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowGetDraftBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/draft/batch/read", table_id_or_name],
              body: parsed,
              model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
              options: options
            )
          end

          # Permanently delete rows from the draft version of a table, given a set of row
          # IDs. Maximum of 100 row IDs per call.
          #
          # @overload purge_batch(table_id_or_name, inputs:, request_options: {})
          #
          # @param table_id_or_name [String]
          #
          # @param inputs [Array<String>] Strings to input.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowPurgeBatchParams
          def purge_batch(table_id_or_name, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowPurgeBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/draft/batch/purge", table_id_or_name],
              body: parsed,
              model: NilClass,
              options: options
            )
          end

          # Replaces multiple rows as a batch in the draft version of the table, with a
          # maximum of 100 rows per call. See the endpoint
          # `PUT /tables/{tableIdOrName}/rows/{rowId}/draft` for details on updating a
          # single row.
          #
          # @overload replace_batch(table_id_or_name, inputs:, request_options: {})
          #
          # @param table_id_or_name [String]
          # @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowV3BatchUpdateRequest>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowReplaceBatchParams
          def replace_batch(table_id_or_name, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowReplaceBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/draft/batch/replace", table_id_or_name],
              body: parsed,
              model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::RowReplaceDraftParams} for more details.
          #
          # Replace a single row in the draft version of a table. All column values must be
          # specified. If a column has a value in the target table and this request doesn't
          # define that value, it will be deleted. See the "Create a row" endpoint for
          # instructions on how to format the JSON row definitions.
          #
          # @overload replace_draft(row_id, table_id_or_name:, child_table_id:, display_index:, values:, name: nil, path: nil, request_options: {})
          #
          # @param row_id [String] Path param
          #
          # @param table_id_or_name [String] Path param
          #
          # @param child_table_id [Integer] Body param: Specifies the value for the column child table id
          #
          # @param display_index [Integer] Body param: The index position for displaying the row within the table.
          #
          # @param values [Hash{Symbol=>Object}] Body param: List of key value pairs with the column name and column value
          #
          # @param name [String] Body param: Specifies the value for `hs_name` column, which will be used as titl
          #
          # @param path [String] Body param: Specifies the value for `hs_path` column, which will be used as slug
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowReplaceDraftParams
          def replace_draft(row_id, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowReplaceDraftParams.dump_request(params)
            table_id_or_name =
              parsed.delete(:table_id_or_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/%2$s/draft", table_id_or_name, row_id],
              body: parsed,
              model: HubspotSDK::Cms::HubDBTableRowV3,
              options: options
            )
          end

          # Updates multiple rows as a batch in the draft version of the table, with a
          # maximum of 100 rows per call. See the endpoint
          # `PATCH /tables/{tableIdOrName}/rows/{rowId}/draft` for details on updating a
          # single row.
          #
          # @overload update_batch(table_id_or_name, inputs:, request_options: {})
          #
          # @param table_id_or_name [String]
          # @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowV3BatchUpdateRequest>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowUpdateBatchParams
          def update_batch(table_id_or_name, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowUpdateBatchParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/draft/batch/update", table_id_or_name],
              body: parsed,
              model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::RowUpdateDraftParams} for more details.
          #
          # Partially update a single row in the table's draft version. All the column
          # values need not be specified. Only the columns or fields that needs to be
          # modified can be specified. See the "Create a row" endpoint for instructions on
          # how to format the JSON row definitions.
          #
          # @overload update_draft(row_id, table_id_or_name:, child_table_id:, display_index:, values:, name: nil, path: nil, request_options: {})
          #
          # @param row_id [String] Path param
          #
          # @param table_id_or_name [String] Path param
          #
          # @param child_table_id [Integer] Body param: Specifies the value for the column child table id
          #
          # @param display_index [Integer] Body param: The index position for displaying the row within the table.
          #
          # @param values [Hash{Symbol=>Object}] Body param: List of key value pairs with the column name and column value
          #
          # @param name [String] Body param: Specifies the value for `hs_name` column, which will be used as titl
          #
          # @param path [String] Body param: Specifies the value for `hs_path` column, which will be used as slug
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowUpdateDraftParams
          def update_draft(row_id, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowUpdateDraftParams.dump_request(params)
            table_id_or_name =
              parsed.delete(:table_id_or_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: ["cms/hubdb/2026-03/tables/%1$s/rows/%2$s/draft", table_id_or_name, row_id],
              body: parsed,
              model: HubspotSDK::Cms::HubDBTableRowV3,
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
