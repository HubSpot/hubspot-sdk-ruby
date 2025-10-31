# typed: strong

module HubspotSDK
  module Resources
    class CRM
      class Lists
        class Folders
          # Creates a folder with the given information.
          sig do
            params(
              name: String,
              parent_folder_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::ListFolderCreateResponse)
          end
          def create(
            # The name of the folder to be created.
            name:,
            # The folder this should be created in, if not specified will be created in the
            # root folder 0.
            parent_folder_id: nil,
            request_options: {}
          )
          end

          # Deletes the folder with the given Id.
          sig do
            params(
              folder_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The ID of the folder to delete
            folder_id,
            request_options: {}
          )
          end

          # Retrieves a folder and recursively includes all folders via the childNodes
          # attribute. The child lists field will be empty in all child nodes. Only the
          # folder retrieved will include the child lists in that folder.
          sig do
            params(
              folder_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::ListFolderFetchResponse)
          end
          def get(
            # The Id of the folder to retrieve.
            folder_id: nil,
            request_options: {}
          )
          end

          # This moves the folder from its current location to a new location. It updates
          # the parent of this folder to the new Id given.
          sig do
            params(
              new_parent_folder_id: String,
              folder_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::ListFolderFetchResponse)
          end
          def move(
            # The ID for the target parent folder.
            new_parent_folder_id,
            # The ID of the folder to move
            folder_id:,
            request_options: {}
          )
          end

          # Given a list and a folder, the list will be moved to that folder.
          sig do
            params(
              list_id: String,
              new_folder_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def move_list(
            # The Id of the list to move.
            list_id:,
            # The Id of folder to move the list to, the root folder is Id 0.
            new_folder_id:,
            request_options: {}
          )
          end

          # Renames the given folderId with a new name.
          sig do
            params(
              folder_id: String,
              new_folder_name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::CRM::ListFolderFetchResponse)
          end
          def rename(
            # The ID of the folder to rename
            folder_id,
            # The new name of the folder.
            new_folder_name: nil,
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
