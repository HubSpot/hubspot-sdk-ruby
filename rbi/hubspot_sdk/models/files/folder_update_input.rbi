# typed: strong

module HubspotSDK
  module Models
    module Files
      class FolderUpdateInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FolderUpdateInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # New name. If specified the folder's name and fullPath will change. All children
        # of the folder will be updated accordingly.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # New parent folderId. If changed, the folder and all it's children will be moved
        # into the specified folder. parentFolderId and parentFolderPath cannot be
        # specified at the same time.
        sig { returns(T.nilable(Integer)) }
        attr_reader :parent_folder_id

        sig { params(parent_folder_id: Integer).void }
        attr_writer :parent_folder_id

        # Object for updating folders.
        sig do
          params(name: String, parent_folder_id: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # New name. If specified the folder's name and fullPath will change. All children
          # of the folder will be updated accordingly.
          name: nil,
          # New parent folderId. If changed, the folder and all it's children will be moved
          # into the specified folder. parentFolderId and parentFolderPath cannot be
          # specified at the same time.
          parent_folder_id: nil
        )
        end

        sig { override.returns({ name: String, parent_folder_id: Integer }) }
        def to_hash
        end
      end
    end
  end
end
