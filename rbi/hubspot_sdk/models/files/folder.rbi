# typed: strong

module HubspotSDK
  module Models
    module Files
      class Folder < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Files::Folder, HubspotSDK::Internal::AnyHash)
          end

        # ID of the folder.
        sig { returns(String) }
        attr_accessor :id

        # Marks whether the folder is deleted or not.
        sig { returns(T::Boolean) }
        attr_accessor :archived

        # Timestamp of folder creation.
        sig { returns(Time) }
        attr_accessor :created_at

        # Timestamp of the latest update to the folder.
        sig { returns(Time) }
        attr_accessor :updated_at

        # Timestamp of folder deletion.
        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        # Name of the folder.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # ID of the parent folder.
        sig { returns(T.nilable(String)) }
        attr_reader :parent_folder_id

        sig { params(parent_folder_id: String).void }
        attr_writer :parent_folder_id

        # Path of the folder in the file manager.
        sig { returns(T.nilable(String)) }
        attr_reader :path

        sig { params(path: String).void }
        attr_writer :path

        sig do
          params(
            id: String,
            archived: T::Boolean,
            created_at: Time,
            updated_at: Time,
            archived_at: Time,
            name: String,
            parent_folder_id: String,
            path: String
          ).returns(T.attached_class)
        end
        def self.new(
          # ID of the folder.
          id:,
          # Marks whether the folder is deleted or not.
          archived:,
          # Timestamp of folder creation.
          created_at:,
          # Timestamp of the latest update to the folder.
          updated_at:,
          # Timestamp of folder deletion.
          archived_at: nil,
          # Name of the folder.
          name: nil,
          # ID of the parent folder.
          parent_folder_id: nil,
          # Path of the folder in the file manager.
          path: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              archived: T::Boolean,
              created_at: Time,
              updated_at: Time,
              archived_at: Time,
              name: String,
              parent_folder_id: String,
              path: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
