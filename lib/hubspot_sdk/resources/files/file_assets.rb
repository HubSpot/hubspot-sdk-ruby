# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Files
      class FileAssets
        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Files::FileAssetCreateParams} for more details.
        #
        # Creates a folder.
        #
        # @overload create(name:, parent_folder_id: nil, parent_path: nil, request_options: {})
        #
        # @param name [String] Desired name for the folder.
        #
        # @param parent_folder_id [String] FolderId of the parent of the created folder. If not specified, the folder will
        #
        # @param parent_path [String] Path of the parent of the created folder. If not specified the folder will be cr
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::Folder]
        #
        # @see HubSpotSDK::Models::Files::FileAssetCreateParams
        def create(params)
          parsed, options = HubSpotSDK::Files::FileAssetCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "files/2026-03/folders",
            body: parsed,
            model: HubSpotSDK::Files::Folder,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Files::FileAssetUpdateParams} for more details.
        #
        # Update properties of file by ID.
        #
        # @overload update(file_id, clear_expires:, access: nil, expires_at: nil, is_usable_in_content: nil, name: nil, parent_folder_id: nil, parent_folder_path: nil, request_options: {})
        #
        # @param file_id [String]
        #
        # @param clear_expires [Boolean]
        #
        # @param access [Symbol, HubSpotSDK::Models::Files::FileUpdateInput::Access] NONE: Do not run any duplicate validation. REJECT: Reject the upload if a duplic
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::File]
        #
        # @see HubSpotSDK::Models::Files::FileAssetUpdateParams
        def update(file_id, params)
          parsed, options = HubSpotSDK::Files::FileAssetUpdateParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["files/2026-03/files/%1$s", file_id],
            body: parsed,
            model: HubSpotSDK::Files::File,
            options: options
          )
        end

        # Delete a file by ID
        #
        # @overload delete(file_id, request_options: {})
        #
        # @param file_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Files::FileAssetDeleteParams
        def delete(file_id, params = {})
          @client.request(
            method: :delete,
            path: ["files/2026-03/files/%1$s", file_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Delete a file in accordance with GDPR regulations.
        #
        # @overload gdpr_delete(file_id, request_options: {})
        #
        # @param file_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Files::FileAssetGdprDeleteParams
        def gdpr_delete(file_id, params = {})
          @client.request(
            method: :delete,
            path: ["files/2026-03/files/%1$s/gdpr-delete", file_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Retrieve a file by its ID.
        #
        # @overload get(file_id, properties: nil, request_options: {})
        #
        # @param file_id [String]
        # @param properties [Array<String>]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::File]
        #
        # @see HubSpotSDK::Models::Files::FileAssetGetParams
        def get(file_id, params = {})
          parsed, options = HubSpotSDK::Files::FileAssetGetParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["files/2026-03/files/%1$s", file_id],
            query: query,
            model: HubSpotSDK::Files::File,
            options: options
          )
        end

        # Check the status of requested import.
        #
        # @overload get_import_task_status(task_id, request_options: {})
        #
        # @param task_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::FileActionResponse]
        #
        # @see HubSpotSDK::Models::Files::FileAssetGetImportTaskStatusParams
        def get_import_task_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["files/2026-03/files/import-from-url/async/tasks/%1$s/status", task_id],
            model: HubSpotSDK::Files::FileActionResponse,
            options: params[:request_options]
          )
        end

        # Generates signed URL that allows temporary access to a private file.
        #
        # @overload get_signed_url(file_id, expiration_seconds: nil, size: nil, upscale: nil, request_options: {})
        #
        # @param file_id [String]
        # @param expiration_seconds [Integer]
        # @param size [Symbol, HubSpotSDK::Models::Files::FileAssetGetSignedURLParams::Size]
        # @param upscale [Boolean]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::SignedURL]
        #
        # @see HubSpotSDK::Models::Files::FileAssetGetSignedURLParams
        def get_signed_url(file_id, params = {})
          parsed, options = HubSpotSDK::Files::FileAssetGetSignedURLParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["files/2026-03/files/%1$s/signed-url", file_id],
            query: query.transform_keys(expiration_seconds: "expirationSeconds"),
            model: HubSpotSDK::Files::SignedURL,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Files::FileAssetImportFromURLAsyncParams} for more details.
        #
        # Asynchronously imports the file at the given URL into the file manager.
        #
        # @overload import_from_url_async(access:, duplicate_validation_scope:, duplicate_validation_strategy:, overwrite:, expires_at: nil, folder_id: nil, folder_path: nil, name: nil, ttl: nil, url: nil, request_options: {})
        #
        # @param access [Symbol, HubSpotSDK::Models::Files::ImportFromURLInput::Access] PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
        #
        # @param duplicate_validation_scope [Symbol, HubSpotSDK::Models::Files::ImportFromURLInput::DuplicateValidationScope] ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER: Lo
        #
        # @param duplicate_validation_strategy [Symbol, HubSpotSDK::Models::Files::ImportFromURLInput::DuplicateValidationStrategy] NONE: Do not run any duplicate validation. REJECT: Reject the upload if a duplic
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::ImportFromURLTaskLocator]
        #
        # @see HubSpotSDK::Models::Files::FileAssetImportFromURLAsyncParams
        def import_from_url_async(params)
          parsed, options = HubSpotSDK::Files::FileAssetImportFromURLAsyncParams.dump_request(params)
          @client.request(
            method: :post,
            path: "files/2026-03/files/import-from-url/async",
            body: parsed,
            model: HubSpotSDK::Files::ImportFromURLTaskLocator,
            options: options
          )
        end

        # Replace existing file data with new file data. Can be used to change image
        # content without having to upload a new file and update all references.
        #
        # @overload replace(file_id, charset_hunch: nil, file: nil, options: nil, request_options: {})
        #
        # @param file_id [String]
        # @param charset_hunch [String]
        # @param file [Pathname, StringIO, IO, String, HubSpotSDK::FilePart]
        # @param options [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::File]
        #
        # @see HubSpotSDK::Models::Files::FileAssetReplaceParams
        def replace(file_id, params = {})
          parsed, options = HubSpotSDK::Files::FileAssetReplaceParams.dump_request(params)
          @client.request(
            method: :put,
            path: ["files/2026-03/files/%1$s", file_id],
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubSpotSDK::Files::File,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Files::FileAssetSearchParams} for more details.
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
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Files::File>]
        #
        # @see HubSpotSDK::Models::Files::FileAssetSearchParams
        def search(params = {})
          parsed, options = HubSpotSDK::Files::FileAssetSearchParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
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
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Files::File,
            options: options
          )
        end

        # Upload a single file with content specified in request body.
        #
        # @overload upload(charset_hunch: nil, file: nil, file_name: nil, folder_id: nil, folder_path: nil, options: nil, request_options: {})
        #
        # @param charset_hunch [String]
        # @param file [Pathname, StringIO, IO, String, HubSpotSDK::FilePart]
        # @param file_name [String]
        # @param folder_id [String]
        # @param folder_path [String]
        # @param options [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::File]
        #
        # @see HubSpotSDK::Models::Files::FileAssetUploadParams
        def upload(params = {})
          parsed, options = HubSpotSDK::Files::FileAssetUploadParams.dump_request(params)
          @client.request(
            method: :post,
            path: "files/2026-03/files",
            headers: {"content-type" => "multipart/form-data"},
            body: parsed,
            model: HubSpotSDK::Files::File,
            options: options
          )
        end

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
