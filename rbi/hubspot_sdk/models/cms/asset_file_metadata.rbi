# typed: strong

module HubspotSDK
  module Models
    module Cms
      class AssetFileMetadata < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Cms::AssetFileMetadata,
              HubspotSDK::Internal::AnyHash
            )
          end

        # The path of the file in the CMS Developer File System.
        sig { returns(String) }
        attr_accessor :id

        # Timestamp of when the object was first created.
        sig { returns(Integer) }
        attr_accessor :created_at

        # Determines whether or not this path points to a folder.
        sig { returns(T::Boolean) }
        attr_accessor :folder

        # The name of the file.
        sig { returns(String) }
        attr_accessor :name

        # Timestamp of when the object was last updated.
        sig { returns(Integer) }
        attr_accessor :updated_at

        # Timestamp of when the object was archived (deleted).
        sig { returns(T.nilable(Integer)) }
        attr_reader :archived_at

        sig { params(archived_at: Integer).void }
        attr_writer :archived_at

        # If the object is a folder, contains the filenames of the files within the
        # folder.
        sig { returns(T.nilable(T::Array[String])) }
        attr_reader :children

        sig { params(children: T::Array[String]).void }
        attr_writer :children

        sig { returns(T.nilable(String)) }
        attr_reader :hash_

        sig { params(hash_: String).void }
        attr_writer :hash_

        sig do
          params(
            id: String,
            created_at: Integer,
            folder: T::Boolean,
            name: String,
            updated_at: Integer,
            archived_at: Integer,
            children: T::Array[String],
            hash_: String
          ).returns(T.attached_class)
        end
        def self.new(
          # The path of the file in the CMS Developer File System.
          id:,
          # Timestamp of when the object was first created.
          created_at:,
          # Determines whether or not this path points to a folder.
          folder:,
          # The name of the file.
          name:,
          # Timestamp of when the object was last updated.
          updated_at:,
          # Timestamp of when the object was archived (deleted).
          archived_at: nil,
          # If the object is a folder, contains the filenames of the files within the
          # folder.
          children: nil,
          hash_: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              created_at: Integer,
              folder: T::Boolean,
              name: String,
              updated_at: Integer,
              archived_at: Integer,
              children: T::Array[String],
              hash_: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
