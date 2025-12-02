# typed: strong

module HubspotSDK
  module Resources
    class Files
      class FileOperations
        # Update properties of file by ID.
        sig do
          params(
            file_id: String,
            access: HubspotSDK::Files::FileUpdateInput::Access::OrSymbol,
            clear_expires: T::Boolean,
            expires_at: Time,
            is_usable_in_content: T::Boolean,
            name: String,
            parent_folder_id: String,
            parent_folder_path: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::File)
        end
        def update(
          # ID of file to update
          file_id,
          # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
          # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
          # a new file and return the found duplicate instead.
          access: nil,
          clear_expires: nil,
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def delete(
          # FileId to delete
          file_id,
          request_options: {}
        )
        end

        # Delete a file in accordance with GDPR regulations.
        sig do
          params(
            file_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).void
        end
        def gdpr_delete(
          # ID of file to GDPR delete
          file_id,
          request_options: {}
        )
        end

        # Retrieve a file by its ID.
        sig do
          params(
            file_id: String,
            properties: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::File)
        end
        def get(
          # ID of the desired file.
          file_id,
          properties: nil,
          request_options: {}
        )
        end

        # Retrieve a file by its path.
        sig do
          params(
            file_path: String,
            properties: T::Array[String],
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::FileStat)
        end
        def get_by_path(
          # The path of the file.
          file_path,
          # Properties to return in the response.
          properties: nil,
          request_options: {}
        )
        end

        # Check the status of requested import.
        sig do
          params(
            task_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::FileActionResponse)
        end
        def get_import_task_status(
          # Import by URL task ID
          task_id,
          request_options: {}
        )
        end

        # Generates signed URL that allows temporary access to a private file.
        sig do
          params(
            file_id: String,
            expiration_seconds: Integer,
            size:
              HubspotSDK::Files::FileOperationGetSignedURLParams::Size::OrSymbol,
            upscale: T::Boolean,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::SignedURL)
        end
        def get_signed_url(
          # ID of file.
          file_id,
          # How long in seconds the link will provide access to the file.
          expiration_seconds: nil,
          # For image files. This will resize the image to the desired size before sharing.
          # Does not affect the original file, just the file served by this signed URL.
          size: nil,
          # If size is provided, this will upscale the image to fit the size dimensions.
          upscale: nil,
          request_options: {}
        )
        end

        # Asynchronously imports the file at the given URL into the file manager.
        sig do
          params(
            access: HubspotSDK::Files::ImportFromURLInput::Access::OrSymbol,
            url: String,
            duplicate_validation_scope:
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationScope::OrSymbol,
            duplicate_validation_strategy:
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy::OrSymbol,
            expires_at: Time,
            folder_id: String,
            folder_path: String,
            name: String,
            overwrite: T::Boolean,
            ttl: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::ImportFromURLTaskLocator)
        end
        def import_from_url_async(
          # PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
          # engines can index the file. PUBLIC_NOT_INDEXABLE: File is publicly accessible by
          # anyone who has the URL. Search engines _can't_ index the file. PRIVATE: File is
          # NOT publicly accessible. Requires a signed URL to see content. Search engines
          # _can't_ index the file.
          access:,
          # URL to download the new file from.
          url:,
          # ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER:
          # Look for a duplicate file in the provided folder.
          duplicate_validation_scope: nil,
          # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
          # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
          # a new file and return the found duplicate instead.
          duplicate_validation_strategy: nil,
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
          # If true, will overwrite existing file if one with the same name and extension
          # exists in the given folder. The overwritten file will be deleted and the
          # uploaded file will take its place with a new ID. If unset or set as false, the
          # new file's name will be updated to prevent colliding with existing file if one
          # exists with the same path, name, and extension
          overwrite: nil,
          # Time to live. If specified the file will be deleted after the given time frame.
          # If left unset, the file will exist indefinitely
          ttl: nil,
          request_options: {}
        )
        end

        # Replace existing file data with new file data. Can be used to change image
        # content without having to upload a new file and update all references.
        sig do
          params(
            file_id: String,
            charset_hunch: String,
            file: HubspotSDK::Internal::FileInput,
            options: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::File)
        end
        def replace(
          # ID of the desired file.
          file_id,
          # Character set of given file data.
          charset_hunch: nil,
          # File data that will replace existing file in the file manager.
          file: nil,
          # JSON string representing FileReplaceOptions. Includes options to set the access
          # and expiresAt properties, which will automatically update when the file is
          # replaced.
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
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Internal::Page[HubspotSDK::Files::File])
        end
        def search(
          # Offset search results by this value. The default offset is 0 and the maximum
          # offset of items for a given search is 10,000. Narrow your search down if you are
          # reaching this limit.
          after: nil,
          # Search files by access. If `true`, will show only public files. If `false`, will
          # show only private files.
          allows_anonymous_access: nil,
          before: nil,
          # Search files by time of creation.
          created_at: nil,
          # Search files by greater than or equal to time of creation. Can be used with
          # `createdAtLte` to create a range.
          created_at_gte: nil,
          # Search files by less than or equal to time of creation. Can be used with
          # `createdAtGte` to create a range.
          created_at_lte: nil,
          # Search files by specified encoding.
          encoding: nil,
          # Search files by exact expires time. Time must be epoch time in milliseconds.
          expires_at: nil,
          # Search files by greater than or equal to expires time. Can be used with
          # `expiresAtLte` to create a range.
          expires_at_gte: nil,
          # Search files by less than or equal to expires time. Can be used with
          # `expiresAtGte` to create a range.
          expires_at_lte: nil,
          # Search files by given extension.
          extension: nil,
          # Search files by a specific md5 hash.
          file_md5: nil,
          # Search files by height of image or video.
          height: nil,
          # Search files by greater than or equal to height of image or video. Can be used
          # with `heightLte` to create a range.
          height_gte: nil,
          # Search files by less than or equal to height of image or video. Can be used with
          # `heightGte` to create a range.
          height_lte: nil,
          id_gte: nil,
          id_lte: nil,
          # Search by a list of file IDs.
          ids: nil,
          # If `true`, shows files that have been marked to be used in new content. If
          # `false`, shows files that should not be used in new content.
          is_usable_in_content: nil,
          # Number of items to return. Default limit is 10, maximum limit is 100.
          limit: nil,
          # Search for files containing the given name.
          name: nil,
          # Search files within given `folderId`.
          parent_folder_ids: nil,
          # Search files by path.
          path: nil,
          # A list of file properties to return.
          properties: nil,
          # Search files by exact file size in bytes.
          size: nil,
          # Search files by greater than or equal to file size. Can be used with `sizeLte`
          # to create a range.
          size_gte: nil,
          # Search files by less than or equal to file size. Can be used with `sizeGte` to
          # create a range.
          size_lte: nil,
          # Sort files by a given field.
          sort: nil,
          # Filter by provided file type.
          type: nil,
          # Search files by time of latest updated.
          updated_at: nil,
          # Search files by greater than or equal to time of latest update. Can be used with
          # `updatedAtLte` to create a range.
          updated_at_gte: nil,
          # Search files by less than or equal to time of latest update. Can be used with
          # `updatedAtGte` to create a range.
          updated_at_lte: nil,
          # Search by file URL.
          url: nil,
          # Search files by width of image or video.
          width: nil,
          # Search files by greater than or equal to width of image or video. Can be used
          # with `widthLte` to create a range.
          width_gte: nil,
          # Search files by less than or equal to width of image or video. Can be used with
          # `widthGte` to create a range.
          width_lte: nil,
          request_options: {}
        )
        end

        # Upload a single file with content specified in request body.
        sig do
          params(
            charset_hunch: String,
            file: HubspotSDK::Internal::FileInput,
            file_name: String,
            folder_id: String,
            folder_path: String,
            options: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::File)
        end
        def upload(
          # Character set of the uploaded file.
          charset_hunch: nil,
          # File to be uploaded.
          file: nil,
          # Desired name for the uploaded file.
          file_name: nil,
          # Either 'folderId' or 'folderPath' is required. folderId is the ID of the folder
          # the file will be uploaded to.
          folder_id: nil,
          # Either 'folderPath' or 'folderId' is required. This field represents the
          # destination folder path for the uploaded file. If a path doesn't exist, the
          # system will try to create one.
          folder_path: nil,
          # JSON string representing FileUploadOptions.
          options: nil,
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
