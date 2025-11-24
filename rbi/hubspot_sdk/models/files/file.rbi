# typed: strong

module HubspotSDK
  module Models
    module Files
      class File < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(HubspotSDK::Files::File, HubspotSDK::Internal::AnyHash)
          end

        # File ID.
        sig { returns(String) }
        attr_accessor :id

        # File access. Can be PUBLIC_INDEXABLE, PUBLIC_NOT_INDEXABLE, PRIVATE.
        sig { returns(HubspotSDK::Files::File::Access::TaggedSymbol) }
        attr_accessor :access

        # If the file is deleted.
        sig { returns(T::Boolean) }
        attr_accessor :archived

        # Creation time of the file object.
        sig { returns(Time) }
        attr_accessor :created_at

        # Timestamp of the latest update to the file.
        sig { returns(Time) }
        attr_accessor :updated_at

        # Deletion time of the file object.
        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        # Default hosting URL of the file. This will use one of HubSpot's provided URLs to
        # serve the file.
        sig { returns(T.nilable(String)) }
        attr_reader :default_hosting_url

        sig { params(default_hosting_url: String).void }
        attr_writer :default_hosting_url

        # Encoding of the file.
        sig { returns(T.nilable(String)) }
        attr_reader :encoding

        sig { params(encoding: String).void }
        attr_writer :encoding

        sig { returns(T.nilable(Integer)) }
        attr_reader :expires_at

        sig { params(expires_at: Integer).void }
        attr_writer :expires_at

        # Extension of the file. ex: .jpg, .png, .gif, .pdf, etc.
        sig { returns(T.nilable(String)) }
        attr_reader :extension

        sig { params(extension: String).void }
        attr_writer :extension

        # The MD5 hash of the file.
        sig { returns(T.nilable(String)) }
        attr_reader :file_md5

        sig { params(file_md5: String).void }
        attr_writer :file_md5

        # For image and video files, the height of the content.
        sig { returns(T.nilable(Integer)) }
        attr_reader :height

        sig { params(height: Integer).void }
        attr_writer :height

        # Previously "archied". Indicates if the file should be used when creating new
        # content like web pages.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_usable_in_content

        sig { params(is_usable_in_content: T::Boolean).void }
        attr_writer :is_usable_in_content

        # Name of the file.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # ID of the folder the file is in.
        sig { returns(T.nilable(String)) }
        attr_reader :parent_folder_id

        sig { params(parent_folder_id: String).void }
        attr_writer :parent_folder_id

        # Path of the file in the file manager.
        sig { returns(T.nilable(String)) }
        attr_reader :path

        sig { params(path: String).void }
        attr_writer :path

        # Size of the file in bytes.
        sig { returns(T.nilable(Integer)) }
        attr_reader :size

        sig { params(size: Integer).void }
        attr_writer :size

        sig { returns(T.nilable(String)) }
        attr_reader :source_group

        sig { params(source_group: String).void }
        attr_writer :source_group

        # Type of the file. Can be IMG, DOCUMENT, AUDIO, MOVIE, or OTHER.
        sig { returns(T.nilable(String)) }
        attr_reader :type

        sig { params(type: String).void }
        attr_writer :type

        # URL of the given file. This URL can change depending on the domain settings of
        # the account. Will use the select file hosting domain.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        # For image and video files, the width of the content.
        sig { returns(T.nilable(Integer)) }
        attr_reader :width

        sig { params(width: Integer).void }
        attr_writer :width

        # File
        sig do
          params(
            id: String,
            access: HubspotSDK::Files::File::Access::OrSymbol,
            archived: T::Boolean,
            created_at: Time,
            updated_at: Time,
            archived_at: Time,
            default_hosting_url: String,
            encoding: String,
            expires_at: Integer,
            extension: String,
            file_md5: String,
            height: Integer,
            is_usable_in_content: T::Boolean,
            name: String,
            parent_folder_id: String,
            path: String,
            size: Integer,
            source_group: String,
            type: String,
            url: String,
            width: Integer
          ).returns(T.attached_class)
        end
        def self.new(
          # File ID.
          id:,
          # File access. Can be PUBLIC_INDEXABLE, PUBLIC_NOT_INDEXABLE, PRIVATE.
          access:,
          # If the file is deleted.
          archived:,
          # Creation time of the file object.
          created_at:,
          # Timestamp of the latest update to the file.
          updated_at:,
          # Deletion time of the file object.
          archived_at: nil,
          # Default hosting URL of the file. This will use one of HubSpot's provided URLs to
          # serve the file.
          default_hosting_url: nil,
          # Encoding of the file.
          encoding: nil,
          expires_at: nil,
          # Extension of the file. ex: .jpg, .png, .gif, .pdf, etc.
          extension: nil,
          # The MD5 hash of the file.
          file_md5: nil,
          # For image and video files, the height of the content.
          height: nil,
          # Previously "archied". Indicates if the file should be used when creating new
          # content like web pages.
          is_usable_in_content: nil,
          # Name of the file.
          name: nil,
          # ID of the folder the file is in.
          parent_folder_id: nil,
          # Path of the file in the file manager.
          path: nil,
          # Size of the file in bytes.
          size: nil,
          source_group: nil,
          # Type of the file. Can be IMG, DOCUMENT, AUDIO, MOVIE, or OTHER.
          type: nil,
          # URL of the given file. This URL can change depending on the domain settings of
          # the account. Will use the select file hosting domain.
          url: nil,
          # For image and video files, the width of the content.
          width: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              access: HubspotSDK::Files::File::Access::TaggedSymbol,
              archived: T::Boolean,
              created_at: Time,
              updated_at: Time,
              archived_at: Time,
              default_hosting_url: String,
              encoding: String,
              expires_at: Integer,
              extension: String,
              file_md5: String,
              height: Integer,
              is_usable_in_content: T::Boolean,
              name: String,
              parent_folder_id: String,
              path: String,
              size: Integer,
              source_group: String,
              type: String,
              url: String,
              width: Integer
            }
          )
        end
        def to_hash
        end

        # File access. Can be PUBLIC_INDEXABLE, PUBLIC_NOT_INDEXABLE, PRIVATE.
        module Access
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias { T.all(Symbol, HubspotSDK::Files::File::Access) }
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIDDEN_INDEXABLE =
            T.let(
              :HIDDEN_INDEXABLE,
              HubspotSDK::Files::File::Access::TaggedSymbol
            )
          HIDDEN_NOT_INDEXABLE =
            T.let(
              :HIDDEN_NOT_INDEXABLE,
              HubspotSDK::Files::File::Access::TaggedSymbol
            )
          HIDDEN_PRIVATE =
            T.let(
              :HIDDEN_PRIVATE,
              HubspotSDK::Files::File::Access::TaggedSymbol
            )
          HIDDEN_SENSITIVE =
            T.let(
              :HIDDEN_SENSITIVE,
              HubspotSDK::Files::File::Access::TaggedSymbol
            )
          PRIVATE =
            T.let(:PRIVATE, HubspotSDK::Files::File::Access::TaggedSymbol)
          PUBLIC_INDEXABLE =
            T.let(
              :PUBLIC_INDEXABLE,
              HubspotSDK::Files::File::Access::TaggedSymbol
            )
          PUBLIC_NOT_INDEXABLE =
            T.let(
              :PUBLIC_NOT_INDEXABLE,
              HubspotSDK::Files::File::Access::TaggedSymbol
            )
          SENSITIVE =
            T.let(:SENSITIVE, HubspotSDK::Files::File::Access::TaggedSymbol)

          sig do
            override.returns(
              T::Array[HubspotSDK::Files::File::Access::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
