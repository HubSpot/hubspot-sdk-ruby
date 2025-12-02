# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Files
      class FileOperations
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FileOperationUpdateParams} for more details.
        #
        # Update properties of file by ID.
        #
        # @overload update(file_id, access: nil, clear_expires: nil, expires_at: nil, is_usable_in_content: nil, name: nil, parent_folder_id: nil, parent_folder_path: nil, request_options: {})
        #
        # @param file_id [String] ID of file to update
        #
        # @param access [Symbol, HubspotSDK::Models::Files::FileUpdateInput::Access] NONE: Do not run any duplicate validation. REJECT: Reject the upload if a duplic
        #
        # @param clear_expires [Boolean]
        #
        # @param expires_at [Time]
        #
        # @param is_usable_in_content [Boolean] Mark whether the file should be used in new content or not.
        #
        # @param name [String] New name for the file.
        #
        # @param parent_folder_id [String] FolderId where the file should be moved to. folderId and folderPath parameters c
        #
        # @param parent_folder_path [String] Folder path where the file should be moved to. folderId and folderPath parameter
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::File]
        #
        # @see HubspotSDK::Models::Files::FileOperationUpdateParams
        def update(file_id, params = {})
          parsed, options = HubspotSDK::Files::FileOperationUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["files/v3/files/%1$s", file_id],
            body: parsed,
            model: HubspotSDK::Files::File,
            options: options
          )
        end

        # Delete a file by ID
        #
        # @overload delete(file_id, request_options: {})
        #
        # @param file_id [String] FileId to delete
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Files::FileOperationDeleteParams
        def delete(file_id, params = {})
          @client.request(
            method: :delete,
            path: ["files/v3/files/%1$s", file_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Delete a file in accordance with GDPR regulations.
        #
        # @overload gdpr_delete(file_id, request_options: {})
        #
        # @param file_id [String] ID of file to GDPR delete
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Files::FileOperationGdprDeleteParams
        def gdpr_delete(file_id, params = {})
          @client.request(
            method: :delete,
            path: ["files/v3/files/%1$s/gdpr-delete", file_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Retrieve a file by its ID.
        #
        # @overload get(file_id, properties: nil, request_options: {})
        #
        # @param file_id [String] ID of the desired file.
        #
        # @param properties [Array<String>]
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::File]
        #
        # @see HubspotSDK::Models::Files::FileOperationGetParams
        def get(file_id, params = {})
          parsed, options = HubspotSDK::Files::FileOperationGetParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["files/v3/files/%1$s", file_id],
            query: parsed,
            model: HubspotSDK::Files::File,
            options: options
          )
        end

        # Retrieve a file by its path.
        #
        # @overload get_by_path(file_path, properties: nil, request_options: {})
        #
        # @param file_path [String] The path of the file.
        #
        # @param properties [Array<String>] Properties to return in the response.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::FileStat]
        #
        # @see HubspotSDK::Models::Files::FileOperationGetByPathParams
        def get_by_path(file_path, params = {})
          parsed, options = HubspotSDK::Files::FileOperationGetByPathParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["files/v3/files/stat/%1$s", file_path],
            query: parsed,
            model: HubspotSDK::Files::FileStat,
            options: options
          )
        end

        # Check the status of requested import.
        #
        # @overload get_import_task_status(task_id, request_options: {})
        #
        # @param task_id [String] Import by URL task ID
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::FileActionResponse]
        #
        # @see HubspotSDK::Models::Files::FileOperationGetImportTaskStatusParams
        def get_import_task_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["files/v3/files/import-from-url/async/tasks/%1$s/status", task_id],
            model: HubspotSDK::Files::FileActionResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FileOperationGetSignedURLParams} for more details.
        #
        # Generates signed URL that allows temporary access to a private file.
        #
        # @overload get_signed_url(file_id, expiration_seconds: nil, size: nil, upscale: nil, request_options: {})
        #
        # @param file_id [String] ID of file.
        #
        # @param expiration_seconds [Integer] How long in seconds the link will provide access to the file.
        #
        # @param size [Symbol, HubspotSDK::Models::Files::FileOperationGetSignedURLParams::Size] For image files. This will resize the image to the desired size before sharing.
        #
        # @param upscale [Boolean] If size is provided, this will upscale the image to fit the size dimensions.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::SignedURL]
        #
        # @see HubspotSDK::Models::Files::FileOperationGetSignedURLParams
        def get_signed_url(file_id, params = {})
          parsed, options = HubspotSDK::Files::FileOperationGetSignedURLParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["files/v3/files/%1$s/signed-url", file_id],
            query: parsed.transform_keys(expiration_seconds: "expirationSeconds"),
            model: HubspotSDK::Files::SignedURL,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FileOperationImportFromURLAsyncParams} for more
        # details.
        #
        # Asynchronously imports the file at the given URL into the file manager.
        #
        # @overload import_from_url_async(access:, url:, duplicate_validation_scope: nil, duplicate_validation_strategy: nil, expires_at: nil, folder_id: nil, folder_path: nil, name: nil, overwrite: nil, ttl: nil, request_options: {})
        #
        # @param access [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::Access] PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
        #
        # @param url [String] URL to download the new file from.
        #
        # @param duplicate_validation_scope [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::DuplicateValidationScope] ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER: Lo
        #
        # @param duplicate_validation_strategy [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::DuplicateValidationStrategy] NONE: Do not run any duplicate validation. REJECT: Reject the upload if a duplic
        #
        # @param expires_at [Time] Specifies the date and time when the file will expire.
        #
        # @param folder_id [String] One of folderId or folderPath is required. Destination folderId for the uploaded
        #
        # @param folder_path [String] One of folderPath or folderId is required. Destination folder path for the uploa
        #
        # @param name [String] Name to give the resulting file in the file manager.
        #
        # @param overwrite [Boolean] If true, will overwrite existing file if one with the same name and extension ex
        #
        # @param ttl [String] Time to live. If specified the file will be deleted after the given time frame.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::ImportFromURLTaskLocator]
        #
        # @see HubspotSDK::Models::Files::FileOperationImportFromURLAsyncParams
        def import_from_url_async(params)
          parsed, options = HubspotSDK::Files::FileOperationImportFromURLAsyncParams.dump_request(params)
          @client.request(
            method: :post,
            path: "files/v3/files/import-from-url/async",
            body: parsed,
            model: HubspotSDK::Files::ImportFromURLTaskLocator,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FileOperationReplaceParams} for more details.
        #
        # Replace existing file data with new file data. Can be used to change image
        # content without having to upload a new file and update all references.
        #
        # @overload replace(file_id, charset_hunch: nil, file: nil, options: nil, request_options: {})
        #
        # @param file_id [String] ID of the desired file.
        #
        # @param charset_hunch [String] Character set of given file data.
        #
        # @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart] File data that will replace existing file in the file manager.
        #
        # @param options [String] JSON string representing FileReplaceOptions. Includes options to set the access
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::File]
        #
        # @see HubspotSDK::Models::Files::FileOperationReplaceParams
        def replace(file_id, params = {})
          parsed, options = HubspotSDK::Files::FileOperationReplaceParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["files/v3/files/%1$s", file_id],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubspotSDK::Files::File,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FileOperationSearchParams} for more details.
        #
        # Search through files in the file manager. Does not display hidden or archived
        # files.
        #
        # @overload search(after: nil, allows_anonymous_access: nil, before: nil, created_at: nil, created_at_gte: nil, created_at_lte: nil, encoding: nil, expires_at: nil, expires_at_gte: nil, expires_at_lte: nil, extension: nil, file_md5: nil, height: nil, height_gte: nil, height_lte: nil, id_gte: nil, id_lte: nil, ids: nil, is_usable_in_content: nil, limit: nil, name: nil, parent_folder_ids: nil, path: nil, properties: nil, size: nil, size_gte: nil, size_lte: nil, sort: nil, type: nil, updated_at: nil, updated_at_gte: nil, updated_at_lte: nil, url: nil, width: nil, width_gte: nil, width_lte: nil, request_options: {})
        #
        # @param after [String] Offset search results by this value. The default offset is 0 and the maximum off
        #
        # @param allows_anonymous_access [Boolean] Search files by access. If `true`, will show only public files. If `false`, will
        #
        # @param before [String]
        #
        # @param created_at [Time] Search files by time of creation.
        #
        # @param created_at_gte [Time] Search files by greater than or equal to time of creation. Can be used with `cre
        #
        # @param created_at_lte [Time] Search files by less than or equal to time of creation. Can be used with `create
        #
        # @param encoding [String] Search files by specified encoding.
        #
        # @param expires_at [Time] Search files by exact expires time. Time must be epoch time in milliseconds.
        #
        # @param expires_at_gte [Time] Search files by greater than or equal to expires time. Can be used with `expires
        #
        # @param expires_at_lte [Time] Search files by less than or equal to expires time. Can be used with `expiresAtG
        #
        # @param extension [String] Search files by given extension.
        #
        # @param file_md5 [String] Search files by a specific md5 hash.
        #
        # @param height [Integer] Search files by height of image or video.
        #
        # @param height_gte [Integer] Search files by greater than or equal to height of image or video. Can be used w
        #
        # @param height_lte [Integer] Search files by less than or equal to height of image or video. Can be used with
        #
        # @param id_gte [Integer]
        #
        # @param id_lte [Integer]
        #
        # @param ids [Array<Integer>] Search by a list of file IDs.
        #
        # @param is_usable_in_content [Boolean] If `true`, shows files that have been marked to be used in new content. If `fals
        #
        # @param limit [Integer] Number of items to return. Default limit is 10, maximum limit is 100.
        #
        # @param name [String] Search for files containing the given name.
        #
        # @param parent_folder_ids [Array<Integer>] Search files within given `folderId`.
        #
        # @param path [String] Search files by path.
        #
        # @param properties [Array<String>] A list of file properties to return.
        #
        # @param size [Integer] Search files by exact file size in bytes.
        #
        # @param size_gte [Integer] Search files by greater than or equal to file size. Can be used with `sizeLte` t
        #
        # @param size_lte [Integer] Search files by less than or equal to file size. Can be used with `sizeGte` to c
        #
        # @param sort [Array<String>] Sort files by a given field.
        #
        # @param type [String] Filter by provided file type.
        #
        # @param updated_at [Time] Search files by time of latest updated.
        #
        # @param updated_at_gte [Time] Search files by greater than or equal to time of latest update. Can be used with
        #
        # @param updated_at_lte [Time] Search files by less than or equal to time of latest update. Can be used with `u
        #
        # @param url [String] Search by file URL.
        #
        # @param width [Integer] Search files by width of image or video.
        #
        # @param width_gte [Integer] Search files by greater than or equal to width of image or video. Can be used wi
        #
        # @param width_lte [Integer] Search files by less than or equal to width of image or video. Can be used with
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Files::File>]
        #
        # @see HubspotSDK::Models::Files::FileOperationSearchParams
        def search(params = {})
          parsed, options = HubspotSDK::Files::FileOperationSearchParams.dump_request(params)
          @client.request(
            method: :get,
            path: "files/v3/files/search",
            query: parsed.transform_keys(
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

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FileOperationUploadParams} for more details.
        #
        # Upload a single file with content specified in request body.
        #
        # @overload upload(charset_hunch: nil, file: nil, file_name: nil, folder_id: nil, folder_path: nil, options: nil, request_options: {})
        #
        # @param charset_hunch [String] Character set of the uploaded file.
        #
        # @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart] File to be uploaded.
        #
        # @param file_name [String] Desired name for the uploaded file.
        #
        # @param folder_id [String] Either 'folderId' or 'folderPath' is required. folderId is the ID of the folder
        #
        # @param folder_path [String] Either 'folderPath' or 'folderId' is required. This field represents the destina
        #
        # @param options [String] JSON string representing FileUploadOptions.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::File]
        #
        # @see HubspotSDK::Models::Files::FileOperationUploadParams
        def upload(params = {})
          parsed, options = HubspotSDK::Files::FileOperationUploadParams.dump_request(params)
          @client.request(
            method: :post,
            path: "files/v3/files",
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
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
