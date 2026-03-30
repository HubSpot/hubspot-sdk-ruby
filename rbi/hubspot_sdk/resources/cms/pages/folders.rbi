# typed: strong

module HubspotSDK
  module Resources
    class Cms
      class Pages
        class Folders
          # Create a new folder for landing pages.
          sig do
            params(
              id: String,
              category: Integer,
              created: Time,
              deleted_at: Time,
              name: String,
              parent_folder_id: Integer,
              updated: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::ContentFolder)
          end
          def create_folder(
            # The unique ID of the content folder.
            id:,
            # The type of object this folder applies to. Should always be LANDING_PAGE.
            category:,
            # The timestamp indicating when the content folder was created.
            created:,
            # The timestamp (ISO8601 format) when this content folder was deleted.
            deleted_at:,
            # The name of the folder which will show up in the app dashboard
            name:,
            # The ID of the content folder this folder is nested under
            parent_folder_id:,
            # The timestamp indicating when the content folder was last updated.
            updated:,
            request_options: {}
          )
          end

          # Delete a landing page folder, specified by its ID.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete_folder(
            object_id_,
            # Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          # Retrieve a landing page folder, specified by its ID.
          sig do
            params(
              object_id_: String,
              archived: T::Boolean,
              property: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::ContentFolder)
          end
          def get_folder(
            object_id_,
            # Whether to return only results that have been archived.
            archived: nil,
            property: nil,
            request_options: {}
          )
          end

          # Retrieve a previous version of a folder, specified by the folder ID and revision
          # ID.
          sig do
            params(
              revision_id: String,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::ContentFolderVersion)
          end
          def get_folder_revision(revision_id, object_id_:, request_options: {})
          end

          # Retrieve a batch of landing page folders as identified in the request body.
          sig do
            params(
              inputs: T::Array[String],
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::BatchResponseContentFolder)
          end
          def get_folders_batch(
            # Body param: Strings to input.
            inputs:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
            request_options: {}
          )
          end

          # Retrieves all the previous versions of a landing page folder.
          sig do
            params(
              object_id_: String,
              after: String,
              before: String,
              limit: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[HubspotSDK::Cms::ContentFolderVersion]
            )
          end
          def list_folder_revisions(
            object_id_,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            request_options: {}
          )
          end

          # Get the list of Landing Page Folders. Supports paging and filtering. This method
          # would be useful for an integration that examined these models and used an
          # external service to suggest edits.
          sig do
            params(
              after: String,
              archived: T::Boolean,
              created_after: Time,
              created_at: Time,
              created_before: Time,
              limit: Integer,
              property: String,
              sort: T::Array[String],
              updated_after: Time,
              updated_at: Time,
              updated_before: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[HubspotSDK::Cms::ContentFolder]
            )
          end
          def list_folders(
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            created_after: nil,
            created_at: nil,
            created_before: nil,
            # The maximum number of results to display per page.
            limit: nil,
            property: nil,
            sort: nil,
            updated_after: nil,
            updated_at: nil,
            updated_before: nil,
            request_options: {}
          )
          end

          # Takes a specified version of a landing page folder and restores it.
          sig do
            params(
              revision_id: String,
              object_id_: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::ContentFolder)
          end
          def restore_folder_revision(
            revision_id,
            object_id_:,
            request_options: {}
          )
          end

          # Partially update a landing page folder, specified by the folder ID. You only
          # need to specify the details values that you are modifying.
          sig do
            params(
              object_id_: String,
              id: String,
              category: Integer,
              created: Time,
              deleted_at: Time,
              name: String,
              parent_folder_id: Integer,
              updated: Time,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Cms::ContentFolder)
          end
          def update_folder(
            # Path param
            object_id_,
            # Body param: The unique ID of the content folder.
            id:,
            # Body param: The type of object this folder applies to. Should always be
            # LANDING_PAGE.
            category:,
            # Body param: The timestamp indicating when the content folder was created.
            created:,
            # Body param: The timestamp (ISO8601 format) when this content folder was deleted.
            deleted_at:,
            # Body param: The name of the folder which will show up in the app dashboard
            name:,
            # Body param: The ID of the content folder this folder is nested under
            parent_folder_id:,
            # Body param: The timestamp indicating when the content folder was last updated.
            updated:,
            # Query param: Whether to return only results that have been archived.
            archived: nil,
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
end
