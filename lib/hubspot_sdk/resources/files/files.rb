# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Files
      class Files
        # Check the status of requested import.
        #
        # @overload get_import_task_status(task_id, request_options: {})
        #
        # @param task_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::FileActionResponse]
        #
        # @see HubspotSDK::Models::Files::FileGetImportTaskStatusParams
        def get_import_task_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["files/2026-03/files/import-from-url/async/tasks/%1$s/status", task_id],
            model: HubspotSDK::Files::FileActionResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FileImportFromURLAsyncParams} for more details.
        #
        # Asynchronously imports the file at the given URL into the file manager.
        #
        # @overload import_from_url_async(access:, duplicate_validation_scope:, duplicate_validation_strategy:, overwrite:, expires_at: nil, folder_id: nil, folder_path: nil, name: nil, ttl: nil, url: nil, request_options: {})
        #
        # @param access [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::Access] PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
        #
        # @param duplicate_validation_scope [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::DuplicateValidationScope] ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER: Lo
        #
        # @param duplicate_validation_strategy [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::DuplicateValidationStrategy] NONE: Do not run any duplicate validation. REJECT: Reject the upload if a duplic
        #
        # @param overwrite [Boolean] If true, will overwrite existing file if one with the same name and extension ex
        #
        # @param expires_at [Time] Specifies the date and time when the file will expire.
        #
        # @param folder_id [String] One of folderId or folderPath is required. Destination folderId for the uploaded
        #
        # @param folder_path [String] One of folderPath or folderId is required. Destination folder path for the uploa
        #
        # @param name [String] Name to give the resulting file in the file manager.
        #
        # @param ttl [String] Time to live. If specified the file will be deleted after the given time frame.
        #
        # @param url [String] URL to download the new file from.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::ImportFromURLTaskLocator]
        #
        # @see HubspotSDK::Models::Files::FileImportFromURLAsyncParams
        def import_from_url_async(params)
          parsed, options = HubspotSDK::Files::FileImportFromURLAsyncParams.dump_request(params)
          @client.request(
            method: :post,
            path: "files/2026-03/files/import-from-url/async",
            body: parsed,
            model: HubspotSDK::Files::ImportFromURLTaskLocator,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FileSearchParams} for more details.
        #
        # Search through files in the file manager. Does not display hidden or archived
        # files.
        #
        # @overload search(after: nil, allows_anonymous_access: nil, before: nil, created_at: nil, created_at_gte: nil, created_at_lte: nil, encoding: nil, expires_at: nil, expires_at_gte: nil, expires_at_lte: nil, extension: nil, file_md5: nil, height: nil, height_gte: nil, height_lte: nil, id_gte: nil, id_lte: nil, ids: nil, is_usable_in_content: nil, limit: nil, name: nil, parent_folder_ids: nil, path: nil, properties: nil, size: nil, size_gte: nil, size_lte: nil, sort: nil, type: nil, updated_at: nil, updated_at_gte: nil, updated_at_lte: nil, url: nil, width: nil, width_gte: nil, width_lte: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param allows_anonymous_access [Boolean]
        #
        # @param before [String]
        #
        # @param created_at [Time]
        #
        # @param created_at_gte [Time]
        #
        # @param created_at_lte [Time]
        #
        # @param encoding [String]
        #
        # @param expires_at [Time]
        #
        # @param expires_at_gte [Time]
        #
        # @param expires_at_lte [Time]
        #
        # @param extension [String]
        #
        # @param file_md5 [String]
        #
        # @param height [Integer]
        #
        # @param height_gte [Integer]
        #
        # @param height_lte [Integer]
        #
        # @param id_gte [Integer]
        #
        # @param id_lte [Integer]
        #
        # @param ids [Array<Integer>]
        #
        # @param is_usable_in_content [Boolean]
        #
        # @param limit [Integer] The maximum number of results to display per page.
        #
        # @param name [String]
        #
        # @param parent_folder_ids [Array<Integer>]
        #
        # @param path [String]
        #
        # @param properties [Array<String>]
        #
        # @param size [Integer]
        #
        # @param size_gte [Integer]
        #
        # @param size_lte [Integer]
        #
        # @param sort [Array<String>]
        #
        # @param type [String]
        #
        # @param updated_at [Time]
        #
        # @param updated_at_gte [Time]
        #
        # @param updated_at_lte [Time]
        #
        # @param url [String]
        #
        # @param width [Integer]
        #
        # @param width_gte [Integer]
        #
        # @param width_lte [Integer]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Files::File>]
        #
        # @see HubspotSDK::Models::Files::FileSearchParams
        def search(params = {})
          parsed, options = HubspotSDK::Files::FileSearchParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "files/2026-03/files/search",
            query: query.transform_keys(
              allows_anonymous_access: "allowsAnonymousAccess",
              created_at: "createdAt",
              created_at_gte: "createdAtGte",
              created_at_lte: "createdAtLte",
              expires_at: "expiresAt",
              expires_at_gte: "expiresAtGte",
              expires_at_lte: "expiresAtLte",
              file_md5: "fileMd5",
              height_gte: "heightGte",
              height_lte: "heightLte",
              id_gte: "idGte",
              id_lte: "idLte",
              is_usable_in_content: "isUsableInContent",
              parent_folder_ids: "parentFolderIds",
              size_gte: "sizeGte",
              size_lte: "sizeLte",
              updated_at: "updatedAt",
              updated_at_gte: "updatedAtGte",
              updated_at_lte: "updatedAtLte",
              width_gte: "widthGte",
              width_lte: "widthLte"
            ),
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Files::File,
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
