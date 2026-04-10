# typed: strong

module HubSpotSDK
  module Resources
    class Files
      class FileAssets
        # Creates a folder.
        sig do
          params(
            name: String,
            parent_folder_id: String,
            parent_path: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Files::Folder)
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

        # Update properties of file by ID.
        sig do
          params(
            file_id: String,
            clear_expires: T::Boolean,
            access: HubSpotSDK::Files::FileUpdateInput::Access::OrSymbol,
            expires_at: Time,
            is_usable_in_content: T::Boolean,
            name: String,
            parent_folder_id: String,
            parent_folder_path: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Files::File)
        end
        def update(
          file_id,
          clear_expires:,
          # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
          # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
          # a new file and return the found duplicate instead.
          access: nil,
          expires_at: nil,
          # Mark whether the file should be used in new content or not.
          is_usable_in_content: nil,
          # New name for the file.
          name: nil,
          # FolderId where the file should be moved to. folderId and folderPath parameters
          # cannot be set at the same time.
          parent_folder_id: nil,
          # Folder path where the file should be moved to. folderId and folderPath
          # parameters cannot be set at the same time.
          parent_folder_path: nil,
          request_options: {}
        )
        end

        # Delete a file by ID
        sig do
          params(
            file_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(file_id, request_options: {})
        end

        # Delete a file in accordance with GDPR regulations.
        sig do
          params(
            file_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).void
        end
        def gdpr_delete(file_id, request_options: {})
        end

        # Retrieve a file by its ID.
        sig do
          params(
            file_id: String,
            properties: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Files::File)
        end
        def get(file_id, properties: nil, request_options: {})
        end

        # Retrieve a file by its path.
        sig do
          params(
            path: String,
            properties: T::Array[String],
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Files::FileStat)
        end
        def get_by_path(path, properties: nil, request_options: {})
        end

        # Check the status of requested import.
        sig do
          params(
            task_id: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Files::FileActionResponse)
        end
        def get_import_task_status(task_id, request_options: {})
        end

        # Generates signed URL that allows temporary access to a private file.
        sig do
          params(
            file_id: String,
            expiration_seconds: Integer,
            size:
              HubSpotSDK::Files::FileAssetGetSignedURLParams::Size::OrSymbol,
            upscale: T::Boolean,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Files::SignedURL)
        end
        def get_signed_url(
          file_id,
          expiration_seconds: nil,
          size: nil,
          upscale: nil,
          request_options: {}
        )
        end

        # Asynchronously imports the file at the given URL into the file manager.
        sig do
          params(
            access: HubSpotSDK::Files::ImportFromURLInput::Access::OrSymbol,
            duplicate_validation_scope:
              HubSpotSDK::Files::ImportFromURLInput::DuplicateValidationScope::OrSymbol,
            duplicate_validation_strategy:
              HubSpotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy::OrSymbol,
            overwrite: T::Boolean,
            expires_at: Time,
            folder_id: String,
            folder_path: String,
            name: String,
            ttl: String,
            url: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Files::ImportFromURLTaskLocator)
        end
        def import_from_url_async(
          # PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
          # engines can index the file. PUBLIC_NOT_INDEXABLE: File is publicly accessible by
          # anyone who has the URL. Search engines _can't_ index the file. PRIVATE: File is
          # NOT publicly accessible. Requires a signed URL to see content. Search engines
          # _can't_ index the file.
          access:,
          # ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER:
          # Look for a duplicate file in the provided folder.
          duplicate_validation_scope:,
          # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
          # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
          # a new file and return the found duplicate instead.
          duplicate_validation_strategy:,
          # If true, will overwrite existing file if one with the same name and extension
          # exists in the given folder. The overwritten file will be deleted and the
          # uploaded file will take its place with a new ID. If unset or set as false, the
          # new file's name will be updated to prevent colliding with existing file if one
          # exists with the same path, name, and extension
          overwrite:,
          # Specifies the date and time when the file will expire.
          expires_at: nil,
          # One of folderId or folderPath is required. Destination folderId for the uploaded
          # file.
          folder_id: nil,
          # One of folderPath or folderId is required. Destination folder path for the
          # uploaded file. If the folder path does not exist, there will be an attempt to
          # create the folder path.
          folder_path: nil,
          # Name to give the resulting file in the file manager.
          name: nil,
          # Time to live. If specified the file will be deleted after the given time frame.
          # If left unset, the file will exist indefinitely
          ttl: nil,
          # URL to download the new file from.
          url: nil,
          request_options: {}
        )
        end

        # Replace existing file data with new file data. Can be used to change image
        # content without having to upload a new file and update all references.
        sig do
          params(
            file_id: String,
            charset_hunch: String,
            file: HubSpotSDK::Internal::FileInput,
            options: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Files::File)
        end
        def replace(
          file_id,
          charset_hunch: nil,
          file: nil,
          options: nil,
          request_options: {}
        )
        end

        # Search through files in the file manager. Does not display hidden or archived
        # files.
        sig do
          params(
            after: String,
            allows_anonymous_access: T::Boolean,
            before: String,
            created_at: Time,
            created_at_gte: Time,
            created_at_lte: Time,
            encoding: String,
            expires_at: Time,
            expires_at_gte: Time,
            expires_at_lte: Time,
            extension: String,
            file_md5: String,
            height: Integer,
            height_gte: Integer,
            height_lte: Integer,
            id_gte: Integer,
            id_lte: Integer,
            ids: T::Array[Integer],
            is_usable_in_content: T::Boolean,
            limit: Integer,
            name: String,
            parent_folder_ids: T::Array[Integer],
            path: String,
            properties: T::Array[String],
            size: Integer,
            size_gte: Integer,
            size_lte: Integer,
            sort: T::Array[String],
            type: String,
            updated_at: Time,
            updated_at_gte: Time,
            updated_at_lte: Time,
            url: String,
            width: Integer,
            width_gte: Integer,
            width_lte: Integer,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Internal::Page[HubSpotSDK::Files::File])
        end
        def search(
          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          after: nil,
          allows_anonymous_access: nil,
          before: nil,
          created_at: nil,
          created_at_gte: nil,
          created_at_lte: nil,
          encoding: nil,
          expires_at: nil,
          expires_at_gte: nil,
          expires_at_lte: nil,
          extension: nil,
          file_md5: nil,
          height: nil,
          height_gte: nil,
          height_lte: nil,
          id_gte: nil,
          id_lte: nil,
          ids: nil,
          is_usable_in_content: nil,
          # The maximum number of results to display per page.
          limit: nil,
          name: nil,
          parent_folder_ids: nil,
          path: nil,
          properties: nil,
          size: nil,
          size_gte: nil,
          size_lte: nil,
          sort: nil,
          type: nil,
          updated_at: nil,
          updated_at_gte: nil,
          updated_at_lte: nil,
          url: nil,
          width: nil,
          width_gte: nil,
          width_lte: nil,
          request_options: {}
        )
        end

        # Upload a single file with content specified in request body.
        sig do
          params(
            charset_hunch: String,
            file: HubSpotSDK::Internal::FileInput,
            file_name: String,
            folder_id: String,
            folder_path: String,
            options: String,
            request_options: HubSpotSDK::RequestOptions::OrHash
          ).returns(HubSpotSDK::Files::File)
        end
        def upload(
          charset_hunch: nil,
          file: nil,
          file_name: nil,
          folder_id: nil,
          folder_path: nil,
          options: nil,
          request_options: {}
        )
        end

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
