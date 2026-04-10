# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Files
      class Folders
        # Delete folder by ID.
        #
        # @overload delete_by_id(folder_id, request_options: {})
        #
        # @param folder_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Files::FolderDeleteByIDParams
        def delete_by_id(folder_id, params = {})
          @client.request(
            method: :delete,
            path: ["files/2026-03/folders/%1$s", folder_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Delete a folder, identified by its path.
        #
        # @overload delete_by_path(folder_path, request_options: {})
        #
        # @param folder_path [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubSpotSDK::Models::Files::FolderDeleteByPathParams
        def delete_by_path(folder_path, params = {})
          @client.request(
            method: :delete,
            path: ["files/2026-03/folders/%1$s", folder_path],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Retrieve a folder by its ID.
        #
        # @overload get_by_id(folder_id, properties: nil, request_options: {})
        #
        # @param folder_id [String]
        # @param properties [Array<String>]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::Folder]
        #
        # @see HubSpotSDK::Models::Files::FolderGetByIDParams
        def get_by_id(folder_id, params = {})
          parsed, options = HubSpotSDK::Files::FolderGetByIDParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["files/2026-03/folders/%1$s", folder_id],
            query: query,
            model: HubSpotSDK::Files::Folder,
            options: options
          )
        end

        # Retrieve a folder, identified by its path.
        #
        # @overload get_by_path(folder_path, properties: nil, request_options: {})
        #
        # @param folder_path [String]
        # @param properties [Array<String>]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::Folder]
        #
        # @see HubSpotSDK::Models::Files::FolderGetByPathParams
        def get_by_path(folder_path, params = {})
          parsed, options = HubSpotSDK::Files::FolderGetByPathParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: ["files/2026-03/folders/%1$s", folder_path],
            query: query,
            model: HubSpotSDK::Files::Folder,
            options: options
          )
        end

        # Check status of folder update. Folder updates happen asynchronously.
        #
        # @overload get_update_async_status(task_id, request_options: {})
        #
        # @param task_id [String]
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::FolderActionResponse]
        #
        # @see HubSpotSDK::Models::Files::FolderGetUpdateAsyncStatusParams
        def get_update_async_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["files/2026-03/folders/update/async/tasks/%1$s/status", task_id],
            model: HubSpotSDK::Files::FolderActionResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Files::FolderSearchParams} for more details.
        #
        # Search for folders. Does not contain hidden or archived folders.
        #
        # @overload search(after: nil, before: nil, created_at: nil, created_at_gte: nil, created_at_lte: nil, id_gte: nil, id_lte: nil, ids: nil, limit: nil, name: nil, parent_folder_ids: nil, path: nil, properties: nil, sort: nil, updated_at: nil, updated_at_gte: nil, updated_at_lte: nil, request_options: {})
        #
        # @param after [String] The paging cursor token of the last successfully read resource will be returned
        #
        # @param before [String]
        #
        # @param created_at [Time]
        #
        # @param created_at_gte [Time]
        #
        # @param created_at_lte [Time]
        #
        # @param id_gte [Integer]
        #
        # @param id_lte [Integer]
        #
        # @param ids [Array<Integer>]
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
        # @param sort [Array<String>]
        #
        # @param updated_at [Time]
        #
        # @param updated_at_gte [Time]
        #
        # @param updated_at_lte [Time]
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Internal::Page<HubSpotSDK::Models::Files::Folder>]
        #
        # @see HubSpotSDK::Models::Files::FolderSearchParams
        def search(params = {})
          parsed, options = HubSpotSDK::Files::FolderSearchParams.dump_request(params)
          query = HubSpotSDK::Internal::Util.encode_query_params(parsed)
          @client.request(
            method: :get,
            path: "files/2026-03/folders/search",
            query: query.transform_keys(
              created_at: "createdAt",
              created_at_gte: "createdAtGte",
              created_at_lte: "createdAtLte",
              id_gte: "idGte",
              id_lte: "idLte",
              parent_folder_ids: "parentFolderIds",
              updated_at: "updatedAt",
              updated_at_gte: "updatedAtGte",
              updated_at_lte: "updatedAtLte"
            ),
            page: HubSpotSDK::Internal::Page,
            model: HubSpotSDK::Files::Folder,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Files::FolderUpdateAsyncByIDParams} for more details.
        #
        # Update properties of folder by given ID. This action happens asynchronously and
        # will update all of the folder's children as well.
        #
        # @overload update_async_by_id(id:, name: nil, parent_folder_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the folder to be updated.
        #
        # @param name [String] New name. If specified the folder's name and fullPath will change. All children
        #
        # @param parent_folder_id [Integer] New parent folderId. If changed, the folder and all it's children will be moved
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::FolderUpdateTaskLocator]
        #
        # @see HubSpotSDK::Models::Files::FolderUpdateAsyncByIDParams
        def update_async_by_id(params)
          parsed, options = HubSpotSDK::Files::FolderUpdateAsyncByIDParams.dump_request(params)
          @client.request(
            method: :post,
            path: "files/2026-03/folders/update/async",
            body: parsed,
            model: HubSpotSDK::Files::FolderUpdateTaskLocator,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubSpotSDK::Models::Files::FolderUpdateByIDParams} for more details.
        #
        # Update a folder's properties, identified by folder ID.
        #
        # @overload update_by_id(folder_id, name: nil, parent_folder_id: nil, request_options: {})
        #
        # @param folder_id [String]
        #
        # @param name [String] New name. If specified the folder's name and fullPath will change. All children
        #
        # @param parent_folder_id [Integer] New parent folderId. If changed, the folder and all it's children will be moved
        #
        # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubSpotSDK::Models::Files::Folder]
        #
        # @see HubSpotSDK::Models::Files::FolderUpdateByIDParams
        def update_by_id(folder_id, params = {})
          parsed, options = HubSpotSDK::Files::FolderUpdateByIDParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["files/2026-03/folders/%1$s", folder_id],
            body: parsed,
            model: HubSpotSDK::Files::Folder,
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
