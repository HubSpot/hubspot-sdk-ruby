# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Hubdb
        class Rows
          class Batch
            # Clones rows in the draft version of the specified table, given a set of row ids.
            # Maximum of 100 row ids per call.
            sig do
              params(
                table_id_or_name: String,
                inputs:
                  T::Array[
                    HubspotSDK::Cms::HubDBTableRowBatchCloneRequest::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Cms::BatchResponseHubDBTableRowV3)
            end
            def clone_batch(
              # The ID or name of the table
              table_id_or_name,
              inputs:,
              request_options: {}
            )
            end

            # Creates rows in the draft version of the specified table, given an array of row
            # objects. Maximum of 100 row object per call. See the overview section for more
            # details with an example.
            sig do
              params(
                table_id_or_name: String,
                inputs:
                  T::Array[HubspotSDK::Cms::HubDBTableRowV3Request::OrHash],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Cms::BatchResponseHubDBTableRowV3)
            end
            def create_batch(
              # The ID or name of the table
              table_id_or_name,
              inputs:,
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
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Cms::BatchResponseHubDBTableRowV3)
            end
            def get_batch(
              # The ID or name of the table to query.
              table_id_or_name,
              # Strings to input.
              inputs:,
              request_options: {}
            )
            end

            # Returns rows in the draft version of the specified table, given a set of row
            # IDs.
            sig do
              params(
                table_id_or_name: String,
                inputs: T::Array[String],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Cms::BatchResponseHubDBTableRowV3)
            end
            def get_draft_batch(
              # The ID or name of the table
              table_id_or_name,
              # Strings to input.
              inputs:,
              request_options: {}
            )
            end

            # Permanently deletes rows from the draft version of the table, given a set of row
            # IDs. Maximum of 100 row IDs per call.
            sig do
              params(
                table_id_or_name: String,
                inputs: T::Array[String],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).void
            end
            def purge_batch(
              # The ID or name of the table
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
                    HubspotSDK::Cms::HubDBTableRowV3BatchUpdateRequest::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Cms::BatchResponseHubDBTableRowV3)
            end
            def replace_batch(
              # The ID or name of the table
              table_id_or_name,
              inputs:,
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
                    HubspotSDK::Cms::HubDBTableRowV3BatchUpdateRequest::OrHash
                  ],
                request_options: HubspotSDK::RequestOptions::OrHash
              ).returns(HubspotSDK::Cms::BatchResponseHubDBTableRowV3)
            end
            def update_batch(
              # The ID or name of the table
              table_id_or_name,
              inputs:,
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
end
