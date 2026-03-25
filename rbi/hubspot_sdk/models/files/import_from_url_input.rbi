# typed: strong

module HubspotSDK
  module Models
    module Files
      class ImportFromURLInput < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Files::ImportFromURLInput,
              HubspotSDK::Internal::AnyHash
            )
          end

        # PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
        # engines can index the file. PUBLIC_NOT_INDEXABLE: File is publicly accessible by
        # anyone who has the URL. Search engines _can't_ index the file. PRIVATE: File is
        # NOT publicly accessible. Requires a signed URL to see content. Search engines
        # _can't_ index the file.
        sig { returns(HubspotSDK::Files::ImportFromURLInput::Access::OrSymbol) }
        attr_accessor :access

        # ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER:
        # Look for a duplicate file in the provided folder.
        sig do
          returns(
            HubspotSDK::Files::ImportFromURLInput::DuplicateValidationScope::OrSymbol
          )
        end
        attr_accessor :duplicate_validation_scope

        # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
        # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
        # a new file and return the found duplicate instead.
        sig do
          returns(
            HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy::OrSymbol
          )
        end
        attr_accessor :duplicate_validation_strategy

        # If true, will overwrite existing file if one with the same name and extension
        # exists in the given folder. The overwritten file will be deleted and the
        # uploaded file will take its place with a new ID. If unset or set as false, the
        # new file's name will be updated to prevent colliding with existing file if one
        # exists with the same path, name, and extension
        sig { returns(T::Boolean) }
        attr_accessor :overwrite

        # Specifies the date and time when the file will expire.
        sig { returns(T.nilable(Time)) }
        attr_reader :expires_at

        sig { params(expires_at: Time).void }
        attr_writer :expires_at

        # One of folderId or folderPath is required. Destination folderId for the uploaded
        # file.
        sig { returns(T.nilable(String)) }
        attr_reader :folder_id

        sig { params(folder_id: String).void }
        attr_writer :folder_id

        # One of folderPath or folderId is required. Destination folder path for the
        # uploaded file. If the folder path does not exist, there will be an attempt to
        # create the folder path.
        sig { returns(T.nilable(String)) }
        attr_reader :folder_path

        sig { params(folder_path: String).void }
        attr_writer :folder_path

        # Name to give the resulting file in the file manager.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        # Time to live. If specified the file will be deleted after the given time frame.
        # If left unset, the file will exist indefinitely
        sig { returns(T.nilable(String)) }
        attr_reader :ttl

        sig { params(ttl: String).void }
        attr_writer :ttl

        # URL to download the new file from.
        sig { returns(T.nilable(String)) }
        attr_reader :url

        sig { params(url: String).void }
        attr_writer :url

        sig do
          params(
            access: HubspotSDK::Files::ImportFromURLInput::Access::OrSymbol,
            duplicate_validation_scope:
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationScope::OrSymbol,
            duplicate_validation_strategy:
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy::OrSymbol,
            overwrite: T::Boolean,
            expires_at: Time,
            folder_id: String,
            folder_path: String,
            name: String,
            ttl: String,
            url: String
          ).returns(T.attached_class)
        end
        def self.new(
          # PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
          # engines can index the file. PUBLIC_NOT_INDEXABLE: File is publicly accessible by
          # anyone who has the URL. Search engines _can't_ index the file. PRIVATE: File is
          # NOT publicly accessible. Requires a signed URL to see content. Search engines
          # _can't_ index the file.
          access:,
          # ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER:
          # Look for a duplicate file in the provided folder.
          duplicate_validation_scope:,
          # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
          # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
          # a new file and return the found duplicate instead.
          duplicate_validation_strategy:,
          # If true, will overwrite existing file if one with the same name and extension
          # exists in the given folder. The overwritten file will be deleted and the
          # uploaded file will take its place with a new ID. If unset or set as false, the
          # new file's name will be updated to prevent colliding with existing file if one
          # exists with the same path, name, and extension
          overwrite:,
          # Specifies the date and time when the file will expire.
          expires_at: nil,
          # One of folderId or folderPath is required. Destination folderId for the uploaded
          # file.
          folder_id: nil,
          # One of folderPath or folderId is required. Destination folder path for the
          # uploaded file. If the folder path does not exist, there will be an attempt to
          # create the folder path.
          folder_path: nil,
          # Name to give the resulting file in the file manager.
          name: nil,
          # Time to live. If specified the file will be deleted after the given time frame.
          # If left unset, the file will exist indefinitely
          ttl: nil,
          # URL to download the new file from.
          url: nil
        )
        end

        sig do
          override.returns(
            {
              access: HubspotSDK::Files::ImportFromURLInput::Access::OrSymbol,
              duplicate_validation_scope:
                HubspotSDK::Files::ImportFromURLInput::DuplicateValidationScope::OrSymbol,
              duplicate_validation_strategy:
                HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy::OrSymbol,
              overwrite: T::Boolean,
              expires_at: Time,
              folder_id: String,
              folder_path: String,
              name: String,
              ttl: String,
              url: String
            }
          )
        end
        def to_hash
        end

        # PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
        # engines can index the file. PUBLIC_NOT_INDEXABLE: File is publicly accessible by
        # anyone who has the URL. Search engines _can't_ index the file. PRIVATE: File is
        # NOT publicly accessible. Requires a signed URL to see content. Search engines
        # _can't_ index the file.
        module Access
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(Symbol, HubspotSDK::Files::ImportFromURLInput::Access)
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          HIDDEN_INDEXABLE =
            T.let(
              :HIDDEN_INDEXABLE,
              HubspotSDK::Files::ImportFromURLInput::Access::TaggedSymbol
            )
          HIDDEN_NOT_INDEXABLE =
            T.let(
              :HIDDEN_NOT_INDEXABLE,
              HubspotSDK::Files::ImportFromURLInput::Access::TaggedSymbol
            )
          HIDDEN_PRIVATE =
            T.let(
              :HIDDEN_PRIVATE,
              HubspotSDK::Files::ImportFromURLInput::Access::TaggedSymbol
            )
          HIDDEN_SENSITIVE =
            T.let(
              :HIDDEN_SENSITIVE,
              HubspotSDK::Files::ImportFromURLInput::Access::TaggedSymbol
            )
          PRIVATE =
            T.let(
              :PRIVATE,
              HubspotSDK::Files::ImportFromURLInput::Access::TaggedSymbol
            )
          PUBLIC_INDEXABLE =
            T.let(
              :PUBLIC_INDEXABLE,
              HubspotSDK::Files::ImportFromURLInput::Access::TaggedSymbol
            )
          PUBLIC_NOT_INDEXABLE =
            T.let(
              :PUBLIC_NOT_INDEXABLE,
              HubspotSDK::Files::ImportFromURLInput::Access::TaggedSymbol
            )
          SENSITIVE =
            T.let(
              :SENSITIVE,
              HubspotSDK::Files::ImportFromURLInput::Access::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Files::ImportFromURLInput::Access::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER:
        # Look for a duplicate file in the provided folder.
        module DuplicateValidationScope
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Files::ImportFromURLInput::DuplicateValidationScope
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          ENTIRE_PORTAL =
            T.let(
              :ENTIRE_PORTAL,
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationScope::TaggedSymbol
            )
          EXACT_FOLDER =
            T.let(
              :EXACT_FOLDER,
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationScope::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Files::ImportFromURLInput::DuplicateValidationScope::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end

        # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
        # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
        # a new file and return the found duplicate instead.
        module DuplicateValidationStrategy
          extend HubspotSDK::Internal::Type::Enum

          TaggedSymbol =
            T.type_alias do
              T.all(
                Symbol,
                HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy
              )
            end
          OrSymbol = T.type_alias { T.any(Symbol, String) }

          NONE =
            T.let(
              :NONE,
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy::TaggedSymbol
            )
          REJECT =
            T.let(
              :REJECT,
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy::TaggedSymbol
            )
          RETURN_EXISTING =
            T.let(
              :RETURN_EXISTING,
              HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy::TaggedSymbol
            )

          sig do
            override.returns(
              T::Array[
                HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy::TaggedSymbol
              ]
            )
          end
          def self.values
          end
        end
      end
    end
  end
end
