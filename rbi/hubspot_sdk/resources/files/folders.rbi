# typed: strong

module HubspotSDK
  module Resources
    class Files
      class Folders
        # Creates a folder.
        sig do
          params(
            name: String,
            parent_folder_id: String,
            parent_path: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::Folder)
        end
        def create(
          # Desired name for the folder.
          name:,
          # FolderId of the parent of the created folder. If not specified, the folder will
          # be created at the root level. parentFolderId and parentFolderPath cannot be set
          # at the same time.
          parent_folder_id: nil,
          # Path of the parent of the created folder. If not specified the folder will be
          # created at the root level. parentFolderPath and parentFolderId cannot be set at
          # the same time.
          parent_path: nil,
          request_options: {}
        )
        end

        # Delete folder by ID.
        sig do
          params(
            folder_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_by_id(
          # ID of folder to delete.
          folder_id,
          request_options: {}
        )
        end

        # Delete a folder, identified by its path.
        sig do
          params(
            folder_path: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete_by_path(
          # Path of folder to delete
          folder_path,
          request_options: {}
        )
        end

        # Retrieve a folder by its ID.
        sig do
          params(
            folder_id: String,
            properties: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::Folder)
        end
        def get_by_id(
          # ID of desired folder
          folder_id,
          # Properties to set on returned folder.
          properties: nil,
          request_options: {}
        )
        end

        # Retrieve a folder, identified by its path.
        sig do
          params(
            folder_path: String,
            properties: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::Folder)
        end
        def get_by_path(
          # Path of desired folder.
          folder_path,
          # Properties to set on returned folder.
          properties: nil,
          request_options: {}
        )
        end

        # Check status of folder update. Folder updates happen asynchronously.
        sig do
          params(
            task_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::FolderActionResponse)
        end
        def get_update_async_status(
          # The ID of the folder update task.
          task_id,
          request_options: {}
        )
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
          # Offset search results by this value. The default offset is 0 and the maximum
          # offset of items for a given search is 10,000. Narrow your search down if you are
          # reaching this limit.
          after: nil,
          before: nil,
          # Search folders by exact time of creation. Time must be epoch time in
          # milliseconds.
          created_at: nil,
          # Search folders by greater than or equal to time of creation. Can be used with
          # createdAtLte to create a range.
          created_at_gte: nil,
          # Search folders by less than or equal to time of creation. Can be used with
          # createdAtGte to create a range.
          created_at_lte: nil,
          id_gte: nil,
          id_lte: nil,
          ids: nil,
          # Number of items to return. Default limit is 10, maximum limit is 100.
          limit: nil,
          # Search for folders containing the specified name.
          name: nil,
          # Search folders with the given parent folderId.
          parent_folder_ids: nil,
          # Search folders by path.
          path: nil,
          # Properties that should be included in the returned folders.
          properties: nil,
          # Sort results by given property. For example -name sorts by name field
          # descending, name sorts by name field ascending.
          sort: nil,
          # Search folders by exact time of latest updated. Time must be epoch time in
          # milliseconds.
          updated_at: nil,
          # Search folders by greater than or equal to time of latest update. Can be used
          # with updatedAtLte to create a range.
          updated_at_gte: nil,
          # Search folders by less than or equal to time of latest update. Can be used with
          # updatedAtGte to create a range.
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
