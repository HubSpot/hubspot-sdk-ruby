# typed: strong

module HubspotSDK
  module Resources
    class Files
      class Folders
        # Check status of folder update. Folder updates happen asynchronously.
        sig do
          params(
            task_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::FolderActionResponse)
        end
        def get_update_async_status(task_id, request_options: {})
        end

        # Search for folders. Does not contain hidden or archived folders.
        sig do
          params(
            after: String,
            before: String,
            created_at: Time,
            created_at_gte: Time,
            created_at_lte: Time,
            id_gte: Integer,
            id_lte: Integer,
            ids: T::Array[Integer],
            limit: Integer,
            name: String,
            parent_folder_ids: T::Array[Integer],
            path: String,
            properties: T::Array[String],
            sort: T::Array[String],
            updated_at: Time,
            updated_at_gte: Time,
            updated_at_lte: Time,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Internal::Page[HubspotSDK::Files::Folder])
        end
        def search(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          before: nil,
          created_at: nil,
          created_at_gte: nil,
          created_at_lte: nil,
          id_gte: nil,
          id_lte: nil,
          ids: nil,
          # The maximum number of results to display per page.
          limit: nil,
          name: nil,
          parent_folder_ids: nil,
          path: nil,
          properties: nil,
          sort: nil,
          updated_at: nil,
          updated_at_gte: nil,
          updated_at_lte: nil,
          request_options: {}
        )
        end

        # Update properties of folder by given ID. This action happens asynchronously and
        # will update all of the folder's children as well.
        sig do
          params(
            id: String,
            name: String,
            parent_folder_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::FolderUpdateTaskLocator)
        end
        def update_async_by_id(
          # The unique identifier of the folder to be updated.
          id:,
          # The new name for the folder, which will also update the fullPath and all
          # children of the folder.
          name: nil,
          # The ID of the new parent folder, which will move the folder and its children
          # into the specified folder.
          parent_folder_id: nil,
          request_options: {}
        )
        end

        # Update a folder's properties, identified by folder ID.
        sig do
          params(
            folder_id: String,
            name: String,
            parent_folder_id: Integer,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::Folder)
        end
        def update_by_id(
          folder_id,
          # New name. If specified the folder's name and fullPath will change. All children
          # of the folder will be updated accordingly.
          name: nil,
          # New parent folderId. If changed, the folder and all it's children will be moved
          # into the specified folder. parentFolderId and parentFolderPath cannot be
          # specified at the same time.
          parent_folder_id: nil,
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
