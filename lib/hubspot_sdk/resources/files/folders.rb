# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Files
      class Folders
        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FolderCreateParams} for more details.
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::Folder]
        #
        # @see HubspotSDK::Models::Files::FolderCreateParams
        def create(params)
          parsed, options = HubspotSDK::Files::FolderCreateParams.dump_request(params)
          @client.request(
            method: :post,
            path: "files/v3/folders",
            body: parsed,
            model: HubspotSDK::Files::Folder,
            options: options
          )
        end

        # Delete folder by ID.
        #
        # @overload delete_by_id(folder_id, request_options: {})
        #
        # @param folder_id [String] ID of folder to delete.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Files::FolderDeleteByIDParams
        def delete_by_id(folder_id, params = {})
          @client.request(
            method: :delete,
            path: ["files/v3/folders/%1$s", folder_id],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Delete a folder, identified by its path.
        #
        # @overload delete_by_path(folder_path, request_options: {})
        #
        # @param folder_path [String] Path of folder to delete
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [nil]
        #
        # @see HubspotSDK::Models::Files::FolderDeleteByPathParams
        def delete_by_path(folder_path, params = {})
          @client.request(
            method: :delete,
            path: ["files/v3/folders/%1$s", folder_path],
            model: NilClass,
            options: params[:request_options]
          )
        end

        # Retrieve a folder by its ID.
        #
        # @overload get_by_id(folder_id, properties: nil, request_options: {})
        #
        # @param folder_id [String] ID of desired folder
        #
        # @param properties [Array<String>] Properties to set on returned folder.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::Folder]
        #
        # @see HubspotSDK::Models::Files::FolderGetByIDParams
        def get_by_id(folder_id, params = {})
          parsed, options = HubspotSDK::Files::FolderGetByIDParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["files/v3/folders/%1$s", folder_id],
            query: parsed,
            model: HubspotSDK::Files::Folder,
            options: options
          )
        end

        # Retrieve a folder, identified by its path.
        #
        # @overload get_by_path(folder_path, properties: nil, request_options: {})
        #
        # @param folder_path [String] Path of desired folder.
        #
        # @param properties [Array<String>] Properties to set on returned folder.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::Folder]
        #
        # @see HubspotSDK::Models::Files::FolderGetByPathParams
        def get_by_path(folder_path, params = {})
          parsed, options = HubspotSDK::Files::FolderGetByPathParams.dump_request(params)
          @client.request(
            method: :get,
            path: ["files/v3/folders/%1$s", folder_path],
            query: parsed,
            model: HubspotSDK::Files::Folder,
            options: options
          )
        end

        # Check status of folder update. Folder updates happen asynchronously.
        #
        # @overload get_update_async_status(task_id, request_options: {})
        #
        # @param task_id [String] The ID of the folder update task.
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::FolderActionResponse]
        #
        # @see HubspotSDK::Models::Files::FolderGetUpdateAsyncStatusParams
        def get_update_async_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["files/v3/folders/update/async/tasks/%1$s/status", task_id],
            model: HubspotSDK::Files::FolderActionResponse,
            options: params[:request_options]
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FolderSearchParams} for more details.
        #
        # Search for folders. Does not contain hidden or archived folders.
        #
        # @overload search(after: nil, before: nil, created_at: nil, created_at_gte: nil, created_at_lte: nil, id_gte: nil, id_lte: nil, ids: nil, limit: nil, name: nil, parent_folder_ids: nil, path: nil, properties: nil, sort: nil, updated_at: nil, updated_at_gte: nil, updated_at_lte: nil, request_options: {})
        #
        # @param after [String] Offset search results by this value. The default offset is 0 and the maximum off
        #
        # @param before [String]
        #
        # @param created_at [Time] Search folders by exact time of creation. Time must be epoch time in millisecond
        #
        # @param created_at_gte [Time] Search folders by greater than or equal to time of creation. Can be used with cr
        #
        # @param created_at_lte [Time] Search folders by less than or equal to time of creation. Can be used with creat
        #
        # @param id_gte [Integer]
        #
        # @param id_lte [Integer]
        #
        # @param ids [Array<Integer>]
        #
        # @param limit [Integer] Number of items to return. Default limit is 10, maximum limit is 100.
        #
        # @param name [String] Search for folders containing the specified name.
        #
        # @param parent_folder_ids [Array<Integer>] Search folders with the given parent folderId.
        #
        # @param path [String] Search folders by path.
        #
        # @param properties [Array<String>] Properties that should be included in the returned folders.
        #
        # @param sort [Array<String>] Sort results by given property. For example -name sorts by name field descending
        #
        # @param updated_at [Time] Search folders by exact time of latest updated. Time must be epoch time in milli
        #
        # @param updated_at_gte [Time] Search folders by greater than or equal to time of latest update. Can be used wi
        #
        # @param updated_at_lte [Time] Search folders by less than or equal to time of latest update. Can be used with
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Files::Folder>]
        #
        # @see HubspotSDK::Models::Files::FolderSearchParams
        def search(params = {})
          parsed, options = HubspotSDK::Files::FolderSearchParams.dump_request(params)
          @client.request(
            method: :get,
            path: "files/v3/folders/search",
            query: parsed.transform_keys(
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
            page: HubspotSDK::Internal::Page,
            model: HubspotSDK::Files::Folder,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FolderUpdateAsyncByIDParams} for more details.
        #
        # Update properties of folder by given ID. This action happens asynchronously and
        # will update all of the folder's children as well.
        #
        # @overload update_async_by_id(id:, name: nil, parent_folder_id: nil, request_options: {})
        #
        # @param id [String] The unique identifier of the folder to be updated.
        #
        # @param name [String] The new name for the folder, which will also update the fullPath and all childre
        #
        # @param parent_folder_id [Integer] The ID of the new parent folder, which will move the folder and its children int
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::FolderUpdateTaskLocator]
        #
        # @see HubspotSDK::Models::Files::FolderUpdateAsyncByIDParams
        def update_async_by_id(params)
          parsed, options = HubspotSDK::Files::FolderUpdateAsyncByIDParams.dump_request(params)
          @client.request(
            method: :post,
            path: "files/v3/folders/update/async",
            body: parsed,
            model: HubspotSDK::Files::FolderUpdateTaskLocator,
            options: options
          )
        end

        # Some parameter documentations has been truncated, see
        # {HubspotSDK::Models::Files::FolderUpdateByIDParams} for more details.
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::Folder]
        #
        # @see HubspotSDK::Models::Files::FolderUpdateByIDParams
        def update_by_id(folder_id, params = {})
          parsed, options = HubspotSDK::Files::FolderUpdateByIDParams.dump_request(params)
          @client.request(
            method: :patch,
            path: ["files/v3/folders/%1$s", folder_id],
            body: parsed,
            model: HubspotSDK::Files::Folder,
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
