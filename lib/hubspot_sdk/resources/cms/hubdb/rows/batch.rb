# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Cms
      class Hubdb
        class Rows
          class Batch
            # Clones rows in the draft version of the specified table, given a set of row ids.
            # Maximum of 100 row ids per call.
            #
            # @overload clone_batch(table_id_or_name, inputs:, request_options: {})
            #
            # @param table_id_or_name [String] The ID or name of the table
            #
            # @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowBatchCloneRequest>]
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
            #
            # @see HubspotSDK::Models::Cms::Hubdb::Rows::BatchCloneBatchParams
            def clone_batch(table_id_or_name, params)
              parsed, options = HubspotSDK::Cms::Hubdb::Rows::BatchCloneBatchParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["cms/v3/hubdb/tables/%1$s/rows/draft/batch/clone", table_id_or_name],
                body: parsed,
                model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
                options: options
              )
            end

            # Creates rows in the draft version of the specified table, given an array of row
            # objects. Maximum of 100 row object per call. See the overview section for more
            # details with an example.
            #
            # @overload create_batch(table_id_or_name, inputs:, request_options: {})
            #
            # @param table_id_or_name [String] The ID or name of the table
            #
            # @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowV3Request>]
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
            #
            # @see HubspotSDK::Models::Cms::Hubdb::Rows::BatchCreateBatchParams
            def create_batch(table_id_or_name, params)
              parsed, options = HubspotSDK::Cms::Hubdb::Rows::BatchCreateBatchParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["cms/v3/hubdb/tables/%1$s/rows/draft/batch/create", table_id_or_name],
                body: parsed,
                model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
                options: options
              )
            end

            # Returns rows in the published version of the specified table, given a set of row
            # IDs. **Note:** This endpoint can be accessed without any authentication if the
            # table is set to be allowed for public access.
            #
            # @overload get_batch(table_id_or_name, inputs:, request_options: {})
            #
            # @param table_id_or_name [String] The ID or name of the table to query.
            #
            # @param inputs [Array<String>] Strings to input.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
            #
            # @see HubspotSDK::Models::Cms::Hubdb::Rows::BatchGetBatchParams
            def get_batch(table_id_or_name, params)
              parsed, options = HubspotSDK::Cms::Hubdb::Rows::BatchGetBatchParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["cms/v3/hubdb/tables/%1$s/rows/batch/read", table_id_or_name],
                body: parsed,
                model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
                options: options
              )
            end

            # Returns rows in the draft version of the specified table, given a set of row
            # IDs.
            #
            # @overload get_draft_batch(table_id_or_name, inputs:, request_options: {})
            #
            # @param table_id_or_name [String] The ID or name of the table
            #
            # @param inputs [Array<String>] Strings to input.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
            #
            # @see HubspotSDK::Models::Cms::Hubdb::Rows::BatchGetDraftBatchParams
            def get_draft_batch(table_id_or_name, params)
              parsed, options = HubspotSDK::Cms::Hubdb::Rows::BatchGetDraftBatchParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["cms/v3/hubdb/tables/%1$s/rows/draft/batch/read", table_id_or_name],
                body: parsed,
                model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
                options: options
              )
            end

            # Permanently deletes rows from the draft version of the table, given a set of row
            # IDs. Maximum of 100 row IDs per call.
            #
            # @overload purge_batch(table_id_or_name, inputs:, request_options: {})
            #
            # @param table_id_or_name [String] The ID or name of the table
            #
            # @param inputs [Array<String>] Strings to input.
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [nil]
            #
            # @see HubspotSDK::Models::Cms::Hubdb::Rows::BatchPurgeBatchParams
            def purge_batch(table_id_or_name, params)
              parsed, options = HubspotSDK::Cms::Hubdb::Rows::BatchPurgeBatchParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["cms/v3/hubdb/tables/%1$s/rows/draft/batch/purge", table_id_or_name],
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
            # @param table_id_or_name [String] The ID or name of the table
            #
            # @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowV3BatchUpdateRequest>]
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
            #
            # @see HubspotSDK::Models::Cms::Hubdb::Rows::BatchReplaceBatchParams
            def replace_batch(table_id_or_name, params)
              parsed, options = HubspotSDK::Cms::Hubdb::Rows::BatchReplaceBatchParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["cms/v3/hubdb/tables/%1$s/rows/draft/batch/replace", table_id_or_name],
                body: parsed,
                model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
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
            # @param table_id_or_name [String] The ID or name of the table
            #
            # @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowV3BatchUpdateRequest>]
            #
            # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
            #
            # @return [HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3]
            #
            # @see HubspotSDK::Models::Cms::Hubdb::Rows::BatchUpdateBatchParams
            def update_batch(table_id_or_name, params)
              parsed, options = HubspotSDK::Cms::Hubdb::Rows::BatchUpdateBatchParams.dump_request(params)
              @client.request(
                method: :post,
                path: ["cms/v3/hubdb/tables/%1$s/rows/draft/batch/update", table_id_or_name],
                body: parsed,
                model: HubspotSDK::Cms::BatchResponseHubDBTableRowV3,
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
end
