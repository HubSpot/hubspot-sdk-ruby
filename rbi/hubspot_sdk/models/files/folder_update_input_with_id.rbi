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

        # The new name for the folder, which will also update the fullPath and all
        # children of the folder.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # The ID of the new parent folder, which will move the folder and its children
        # into the specified folder.
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
          # The new name for the folder, which will also update the fullPath and all
          # children of the folder.
          name: nil,
          # The ID of the new parent folder, which will move the folder and its children
          # into the specified folder.
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
