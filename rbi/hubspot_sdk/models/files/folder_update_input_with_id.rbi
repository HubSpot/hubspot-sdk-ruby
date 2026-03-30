# typed: strong

module HubspotSDK
  module Models
    module Files
      class FolderUpdateInputWithID < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FolderUpdateInputWithID,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The unique identifier of the folder to be updated.
        sig { returns(String) }
        attr_accessor :id

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

        sig do
          params(id: String, name: String, parent_folder_id: Integer).returns(
            T.attached_class
          )
        end
        def self.new(
          # The unique identifier of the folder to be updated.
          id:,
          # New name. If specified the folder's name and fullPath will change. All children
          # of the folder will be updated accordingly.
          name: nil,
          # New parent folderId. If changed, the folder and all it's children will be moved
          # into the specified folder. parentFolderId and parentFolderPath cannot be
          # specified at the same time.
          parent_folder_id: nil
        )
        end

        sig do
          override.returns(
            { id: String, name: String, parent_folder_id: Integer }
          )
        end
        def to_hash
        end
      end
    end
  end
end
