# typed: strong

module HubspotSDK
  module Models
    module Files
      class FolderInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Files::FolderInput, HubspotSDK::Internal::AnyHash)
          end

        # Desired name for the folder.
        sig { returns(String) }
        attr_accessor :name

        # FolderId of the parent of the created folder. If not specified, the folder will
        # be created at the root level. parentFolderId and parentFolderPath cannot be set
        # at the same time.
        sig { returns(T.nilable(String)) }
        attr_reader :parent_folder_id

        sig { params(parent_folder_id: String).void }
        attr_writer :parent_folder_id

        # Path of the parent of the created folder. If not specified the folder will be
        # created at the root level. parentFolderPath and parentFolderId cannot be set at
        # the same time.
        sig { returns(T.nilable(String)) }
        attr_reader :parent_path

        sig { params(parent_path: String).void }
        attr_writer :parent_path

        # Object for creating a folder.
        sig do
          params(
            name: String,
            parent_folder_id: String,
            parent_path: String
          ).returns(T.attached_class)
        end
        def self.new(
          # Desired name for the folder.
          name:,
          # FolderId of the parent of the created folder. If not specified, the folder will
          # be created at the root level. parentFolderId and parentFolderPath cannot be set
          # at the same time.
          parent_folder_id: nil,
          # Path of the parent of the created folder. If not specified the folder will be
          # created at the root level. parentFolderPath and parentFolderId cannot be set at
          # the same time.
          parent_path: nil
        )
        end

        sig do
          override.returns(
            { name: String, parent_folder_id: String, parent_path: String }
          )
        end
        def to_hash
        end
      end
    end
  end
end
