# typed: strong

module HubspotSDK
  module Models
    module Files
      class FileUpdateInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::FileUpdateInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
        # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
        # a new file and return the found duplicate instead.
        sig do
          returns(
            T.nilable(HubspotSDK::Files::FileUpdateInput::Access::OrSymbol)
          )
        end
        attr_reader :access

        sig do
          params(
            access: HubspotSDK::Files::FileUpdateInput::Access::OrSymbol
          ).void
        end
        attr_writer :access

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :clear_expires

        sig { params(clear_expires: T::Boolean).void }
        attr_writer :clear_expires

        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        # Mark whether the file should be used in new content or not.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :is_usable_in_content

        sig { params(is_usable_in_content: T::Boolean).void }
        attr_writer :is_usable_in_content

        # New name for the file.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # FolderId where the file should be moved to. folderId and folderPath parameters
        # cannot be set at the same time.
        sig { returns(T.nilable(String)) }
        attr_reader :parent_folder_id

        sig { params(parent_folder_id: String).void }
        attr_writer :parent_folder_id

        # Folder path where the file should be moved to. folderId and folderPath
        # parameters cannot be set at the same time.
        sig { returns(T.nilable(String)) }
        attr_reader :parent_folder_path

        sig { params(parent_folder_path: String).void }
        attr_writer :parent_folder_path

        # Object for updating files.
        sig do
          params(
            access: HubspotSDK::Files::FileUpdateInput::Access::OrSymbol,
            clear_expires: T::Boolean,
            expires_at: Time,
            is_usable_in_content: T::Boolean,
            name: String,
            parent_folder_id: String,
            parent_folder_path: String
          ).returns(T.attached_class)
        end
        def self.new(
          # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
          # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
          # a new file and return the found duplicate instead.
          access: nil,
          clear_expires: nil,
          expires_at: nil,
          # Mark whether the file should be used in new content or not.
          is_usable_in_content: nil,
          # New name for the file.
          name: nil,
          # FolderId where the file should be moved to. folderId and folderPath parameters
          # cannot be set at the same time.
          parent_folder_id: nil,
          # Folder path where the file should be moved to. folderId and folderPath
          # parameters cannot be set at the same time.
          parent_folder_path: nil
        )
        end

        sig do
          override.returns(
            {
              access: HubspotSDK::Files::FileUpdateInput::Access::OrSymbol,
              clear_expires: T::Boolean,
              expires_at: Time,
              is_usable_in_content: T::Boolean,
              name: String,
              parent_folder_id: String,
              parent_folder_path: String
            }
          )
        end
        def to_hash
        end

        # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
        # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
        # a new file and return the found duplicate instead.
        module Access
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Files::FileUpdateInput::Access)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          PUBLIC_INDEXABLE =
            T.let(
              :PUBLIC_INDEXABLE,
              HubspotSDK::Files::FileUpdateInput::Access::TaggedSymbol
            )
          PUBLIC_NOT_INDEXABLE =
            T.let(
              :PUBLIC_NOT_INDEXABLE,
              HubspotSDK::Files::FileUpdateInput::Access::TaggedSymbol
            )
          HIDDEN_INDEXABLE =
            T.let(
              :HIDDEN_INDEXABLE,
              HubspotSDK::Files::FileUpdateInput::Access::TaggedSymbol
            )
          HIDDEN_NOT_INDEXABLE =
            T.let(
              :HIDDEN_NOT_INDEXABLE,
              HubspotSDK::Files::FileUpdateInput::Access::TaggedSymbol
            )
          HIDDEN_PRIVATE =
            T.let(
              :HIDDEN_PRIVATE,
              HubspotSDK::Files::FileUpdateInput::Access::TaggedSymbol
            )
          PRIVATE =
            T.let(
              :PRIVATE,
              HubspotSDK::Files::FileUpdateInput::Access::TaggedSymbol
            )
          HIDDEN_SENSITIVE =
            T.let(
              :HIDDEN_SENSITIVE,
              HubspotSDK::Files::FileUpdateInput::Access::TaggedSymbol
            )
          SENSITIVE =
            T.let(
              :SENSITIVE,
              HubspotSDK::Files::FileUpdateInput::Access::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[HubspotSDK::Files::FileUpdateInput::Access::TaggedSymbol]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
