# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Hubdb
        class Rows
          # @return [HubspotSDK::Resources::Cms::Hubdb::Rows::Batch]
          attr_reader :batch

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::RowCreateParams} for more details.
          #
          # Add a new row to a HubDB table. New rows will be added to the draft version of
          # the table. Use the `/publish` endpoint to push these changes to published
          # version.
          #
          # @overload create(table_id_or_name, values:, child_table_id: nil, display_index: nil, name: nil, path: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the target table.
          #
          # @param values [Hash{Symbol=>Object}] List of key value pairs with the column name and column value
          #
          # @param child_table_id [Integer] Specifies the value for the column child table id
          #
          # @param display_index [Integer]
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
              path: ["cms/v3/hubdb/tables/%1$s/rows", table_id_or_name],
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
          # @param table_id_or_name [String] The ID or name of the table to query.
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param archived [Boolean]
          #
          # @param limit [Integer] The maximum number of results to return. Default is `1000`.
          #
          # @param offset [Integer]
          #
          # @param properties [Array<String>] Specify the column names to get results containing only the required columns ins
          #
          # @param sort [Array<String>] Specifies the column names to sort the results by. See the above description for
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<Object>]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowListParams
          def list(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::RowListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/hubdb/tables/%1$s/rows", table_id_or_name],
              query: parsed,
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Internal::Type::Unknown,
              options: options
            )
          end

          # Clones a single row in the draft version of a table.
          #
          # @overload clone_draft(row_id, table_id_or_name:, name: nil, request_options: {})
          #
          # @param row_id [String] Path param: The ID of the row
          #
          # @param table_id_or_name [String] Path param: The ID or name of the table
          #
          # @param name [String] Query param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowCloneDraftParams
          def clone_draft(row_id, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowCloneDraftParams.dump_request(params)
            table_id_or_name =
              parsed.delete(:table_id_or_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :post,
              path: ["cms/v3/hubdb/tables/%1$s/rows/%2$s/draft/clone", table_id_or_name, row_id],
              query: parsed,
              model: HubspotSDK::Cms::HubDBTableRowV3,
              options: options
            )
          end

          # Permanently deletes a row from a table's draft version.
          #
          # @overload delete_draft(row_id, table_id_or_name:, request_options: {})
          #
          # @param row_id [String] The ID of the row
          #
          # @param table_id_or_name [String] The ID or name of the table
          #
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
              path: ["cms/v3/hubdb/tables/%1$s/rows/%2$s/draft", table_id_or_name, row_id],
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
          # @param row_id [String] Path param: The ID of the row
          #
          # @param table_id_or_name [String] Path param: The ID or name of the table
          #
          # @param archived [Boolean] Query param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowGetParams
          def get(row_id, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowGetParams.dump_request(params)
            table_id_or_name =
              parsed.delete(:table_id_or_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["cms/v3/hubdb/tables/%1$s/rows/%2$s", table_id_or_name, row_id],
              query: parsed,
              model: HubspotSDK::Cms::HubDBTableRowV3,
              options: options
            )
          end

          # Get a single row by ID from a table's draft version.
          #
          # @overload get_draft(row_id, table_id_or_name:, archived: nil, request_options: {})
          #
          # @param row_id [String] Path param: The ID of the row
          #
          # @param table_id_or_name [String] Path param: The ID or name of the table
          #
          # @param archived [Boolean] Query param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::HubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowGetDraftParams
          def get_draft(row_id, params)
            parsed, options = HubspotSDK::Cms::Hubdb::RowGetDraftParams.dump_request(params)
            table_id_or_name =
              parsed.delete(:table_id_or_name) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["cms/v3/hubdb/tables/%1$s/rows/%2$s/draft", table_id_or_name, row_id],
              query: parsed,
              model: HubspotSDK::Cms::HubDBTableRowV3,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::RowListDraftParams} for more details.
          #
          # Returns rows in the draft version of the specified table. Row results can be
          # filtered and sorted. Filtering and sorting options will be sent as query
          # parameters to the API request. For example, by adding the query parameters
          # `column1__gt=5&sort=-column1`, API returns the rows with values for column
          # `column1` greater than 5 and in the descending order of `column1` values. Refer
          # to the
          # [overview section](https://developers.hubspot.com/docs/api/cms/hubdb#filtering-and-sorting-table-rows)
          # for detailed filtering and sorting options.
          #
          # @overload list_draft(table_id_or_name, after: nil, archived: nil, limit: nil, offset: nil, properties: nil, sort: nil, request_options: {})
          #
          # @param table_id_or_name [String] The ID or name of the table to query.
          #
          # @param after [String] The cursor token value to get the next set of results. You can get this from the
          #
          # @param archived [Boolean]
          #
          # @param limit [Integer] The maximum number of results to return. Default is `1000`.
          #
          # @param offset [Integer]
          #
          # @param properties [Array<String>] Specify the column names to get results containing only the required columns ins
          #
          # @param sort [Array<String>] Specifies the column names to sort the results by.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Cms::RandomAccessCollectionResponseWithTotalHubDBTableRowV3, HubspotSDK::Models::Cms::StreamingCollectionResponseWithTotalHubDBTableRowV3]
          #
          # @see HubspotSDK::Models::Cms::Hubdb::RowListDraftParams
          def list_draft(table_id_or_name, params = {})
            parsed, options = HubspotSDK::Cms::Hubdb::RowListDraftParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["cms/v3/hubdb/tables/%1$s/rows/draft", table_id_or_name],
              query: parsed,
              model: HubspotSDK::Cms::UnifiedCollectionResponseWithTotalBaseHubDBTableRowV3,
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
          # @overload replace_draft(row_id, table_id_or_name:, values:, child_table_id: nil, display_index: nil, name: nil, path: nil, request_options: {})
          #
          # @param row_id [String] Path param: The ID of the row
          #
          # @param table_id_or_name [String] Path param: The ID or name of the table
          #
          # @param values [Hash{Symbol=>Object}] Body param: List of key value pairs with the column name and column value
          #
          # @param child_table_id [Integer] Body param: Specifies the value for the column child table id
          #
          # @param display_index [Integer] Body param:
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
              path: ["cms/v3/hubdb/tables/%1$s/rows/%2$s/draft", table_id_or_name, row_id],
              body: parsed,
              model: HubspotSDK::Cms::HubDBTableRowV3,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Cms::Hubdb::RowUpdateDraftParams} for more details.
          #
          # Sparse updates a single row in the table's draft version. All the column values
          # need not be specified. Only the columns or fields that needs to be modified can
          # be specified. See the "Create a row" endpoint for instructions on how to format
          # the JSON row definitions.
          #
          # @overload update_draft(row_id, table_id_or_name:, values:, child_table_id: nil, display_index: nil, name: nil, path: nil, request_options: {})
          #
          # @param row_id [String] Path param: The ID of the row
          #
          # @param table_id_or_name [String] Path param: The ID or name of the table
          #
          # @param values [Hash{Symbol=>Object}] Body param: List of key value pairs with the column name and column value
          #
          # @param child_table_id [Integer] Body param: Specifies the value for the column child table id
          #
          # @param display_index [Integer] Body param:
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
              path: ["cms/v3/hubdb/tables/%1$s/rows/%2$s/draft", table_id_or_name, row_id],
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
            @batch = HubspotSDK::Resources::Cms::Hubdb::Rows::Batch.new(client: client)
          end
        end
      end
    end
  end
end
