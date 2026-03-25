# typed: strong

module HubspotSDK
  module Resources
    class Files
      class Files
        # Check the status of requested import.
        sig do
          params(
            task_id: String,
            request_options: HubspotSDK::RequestOptions::OrHash
          ).returns(HubspotSDK::Files::FileActionResponse)
        end
        def get_import_task_status(task_id, request_options: {})
        end

        # Asynchronously imports the file at the given URL into the file manager.
        sig do
          params(
            access: HubspotSDK::Files::ImportFromURLInput::Access::OrSymbol,
            duplicate_validation_scope:
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationScope::OrSymbol,
            duplicate_validation_strategy:
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy::OrSymbol,
            overwrite: T::Boolean,
            expires_at: Time,
            folder_id: String,
            folder_path: String,
            name: String,
            ttl: String,
            url: String,
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

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
