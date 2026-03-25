# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Files
      class Folders
        # Check status of folder update. Folder updates happen asynchronously.
        #
        # @overload get_update_async_status(task_id, request_options: {})
        #
        # @param task_id [String]
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Files::FolderActionResponse]
        #
        # @see HubspotSDK::Models::Files::FolderGetUpdateAsyncStatusParams
        def get_update_async_status(task_id, params = {})
          @client.request(
            method: :get,
            path: ["files/2026-03/folders/update/async/tasks/%1$s/status", task_id],
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
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Files::Folder>]
        #
        # @see HubspotSDK::Models::Files::FolderSearchParams
        def search(params = {})
          parsed, options = HubspotSDK::Files::FolderSearchParams.dump_request(params)
          query = HubspotSDK::Internal::Util.encode_query_params(parsed)
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
            path: "files/2026-03/folders/update/async",
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
            path: ["files/2026-03/folders/%1$s", folder_id],
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
