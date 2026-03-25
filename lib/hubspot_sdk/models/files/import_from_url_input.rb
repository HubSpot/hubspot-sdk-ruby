# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class ImportFromURLInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute access
        #   PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
        #   engines can index the file. PUBLIC_NOT_INDEXABLE: File is publicly accessible by
        #   anyone who has the URL. Search engines _can't_ index the file. PRIVATE: File is
        #   NOT publicly accessible. Requires a signed URL to see content. Search engines
        #   _can't_ index the file.
        #
        #   @return [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::Access]
        required :access, enum: -> { HubspotSDK::Files::ImportFromURLInput::Access }

        # @!attribute duplicate_validation_scope
        #   ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER:
        #   Look for a duplicate file in the provided folder.
        #
        #   @return [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::DuplicateValidationScope]
        required :duplicate_validation_scope,
                 enum: -> { HubspotSDK::Files::ImportFromURLInput::DuplicateValidationScope },
                 api_name: :duplicateValidationScope

        # @!attribute duplicate_validation_strategy
        #   NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
        #   duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
        #   a new file and return the found duplicate instead.
        #
        #   @return [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::DuplicateValidationStrategy]
        required :duplicate_validation_strategy,
                 enum: -> { HubspotSDK::Files::ImportFromURLInput::DuplicateValidationStrategy },
                 api_name: :duplicateValidationStrategy

        # @!attribute overwrite
        #   If true, will overwrite existing file if one with the same name and extension
        #   exists in the given folder. The overwritten file will be deleted and the
        #   uploaded file will take its place with a new ID. If unset or set as false, the
        #   new file's name will be updated to prevent colliding with existing file if one
        #   exists with the same path, name, and extension
        #
        #   @return [Boolean]
        required :overwrite, HubspotSDK::Internal::Type::Boolean

        # @!attribute expires_at
        #   Specifies the date and time when the file will expire.
        #
        #   @return [Time, nil]
        optional :expires_at, Time, api_name: :expiresAt

        # @!attribute folder_id
        #   One of folderId or folderPath is required. Destination folderId for the uploaded
        #   file.
        #
        #   @return [String, nil]
        optional :folder_id, String, api_name: :folderId

        # @!attribute folder_path
        #   One of folderPath or folderId is required. Destination folder path for the
        #   uploaded file. If the folder path does not exist, there will be an attempt to
        #   create the folder path.
        #
        #   @return [String, nil]
        optional :folder_path, String, api_name: :folderPath

        # @!attribute name
        #   Name to give the resulting file in the file manager.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute ttl
        #   Time to live. If specified the file will be deleted after the given time frame.
        #   If left unset, the file will exist indefinitely
        #
        #   @return [String, nil]
        optional :ttl, String

        # @!attribute url
        #   URL to download the new file from.
        #
        #   @return [String, nil]
        optional :url, String

        # @!method initialize(access:, duplicate_validation_scope:, duplicate_validation_strategy:, overwrite:, expires_at: nil, folder_id: nil, folder_path: nil, name: nil, ttl: nil, url: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::ImportFromURLInput} for more details.
        #
        #   @param access [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::Access] PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
        #
        #   @param duplicate_validation_scope [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::DuplicateValidationScope] ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER: Lo
        #
        #   @param duplicate_validation_strategy [Symbol, HubspotSDK::Models::Files::ImportFromURLInput::DuplicateValidationStrategy] NONE: Do not run any duplicate validation. REJECT: Reject the upload if a duplic
        #
        #   @param overwrite [Boolean] If true, will overwrite existing file if one with the same name and extension ex
        #
        #   @param expires_at [Time] Specifies the date and time when the file will expire.
        #
        #   @param folder_id [String] One of folderId or folderPath is required. Destination folderId for the uploaded
        #
        #   @param folder_path [String] One of folderPath or folderId is required. Destination folder path for the uploa
        #
        #   @param name [String] Name to give the resulting file in the file manager.
        #
        #   @param ttl [String] Time to live. If specified the file will be deleted after the given time frame.
        #
        #   @param url [String] URL to download the new file from.

        # PUBLIC_INDEXABLE: File is publicly accessible by anyone who has the URL. Search
        # engines can index the file. PUBLIC_NOT_INDEXABLE: File is publicly accessible by
        # anyone who has the URL. Search engines _can't_ index the file. PRIVATE: File is
        # NOT publicly accessible. Requires a signed URL to see content. Search engines
        # _can't_ index the file.
        #
        # @see HubspotSDK::Models::Files::ImportFromURLInput#access
        module Access
          extend HubspotSDK::Internal::Type::Enum

          HIDDEN_INDEXABLE = :HIDDEN_INDEXABLE
          HIDDEN_NOT_INDEXABLE = :HIDDEN_NOT_INDEXABLE
          HIDDEN_PRIVATE = :HIDDEN_PRIVATE
          HIDDEN_SENSITIVE = :HIDDEN_SENSITIVE
          PRIVATE = :PRIVATE
          PUBLIC_INDEXABLE = :PUBLIC_INDEXABLE
          PUBLIC_NOT_INDEXABLE = :PUBLIC_NOT_INDEXABLE
          SENSITIVE = :SENSITIVE

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # ENTIRE_PORTAL: Look for a duplicate file in the entire account. EXACT_FOLDER:
        # Look for a duplicate file in the provided folder.
        #
        # @see HubspotSDK::Models::Files::ImportFromURLInput#duplicate_validation_scope
        module DuplicateValidationScope
          extend HubspotSDK::Internal::Type::Enum

          ENTIRE_PORTAL = :ENTIRE_PORTAL
          EXACT_FOLDER = :EXACT_FOLDER

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
        # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
        # a new file and return the found duplicate instead.
        #
        # @see HubspotSDK::Models::Files::ImportFromURLInput#duplicate_validation_strategy
        module DuplicateValidationStrategy
          extend HubspotSDK::Internal::Type::Enum

          NONE = :NONE
          REJECT = :REJECT
          RETURN_EXISTING = :RETURN_EXISTING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
