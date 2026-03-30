# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class FileUpdateInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute clear_expires
        #
        #   @return [Boolean]
        required :clear_expires, HubspotSDK::Internal::Type::Boolean, api_name: :clearExpires

        # @!attribute access
        #   NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
        #   duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
        #   a new file and return the found duplicate instead.
        #
        #   @return [Symbol, HubspotSDK::Models::Files::FileUpdateInput::Access, nil]
        optional :access, enum: -> { HubspotSDK::Files::FileUpdateInput::Access }

        # @!attribute expires_at
        #
        #   @return [Time, nil]
        optional :expires_at, Time, api_name: :expiresAt

        # @!attribute is_usable_in_content
        #   Mark whether the file should be used in new content or not.
        #
        #   @return [Boolean, nil]
        optional :is_usable_in_content, HubspotSDK::Internal::Type::Boolean, api_name: :isUsableInContent

        # @!attribute name
        #   New name for the file.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute parent_folder_id
        #   FolderId where the file should be moved to. folderId and folderPath parameters
        #   cannot be set at the same time.
        #
        #   @return [String, nil]
        optional :parent_folder_id, String, api_name: :parentFolderId

        # @!attribute parent_folder_path
        #   Folder path where the file should be moved to. folderId and folderPath
        #   parameters cannot be set at the same time.
        #
        #   @return [String, nil]
        optional :parent_folder_path, String, api_name: :parentFolderPath

        # @!method initialize(clear_expires:, access: nil, expires_at: nil, is_usable_in_content: nil, name: nil, parent_folder_id: nil, parent_folder_path: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::FileUpdateInput} for more details.
        #
        #   @param clear_expires [Boolean]
        #
        #   @param access [Symbol, HubspotSDK::Models::Files::FileUpdateInput::Access] NONE: Do not run any duplicate validation. REJECT: Reject the upload if a duplic
        #
        #   @param expires_at [Time]
        #
        #   @param is_usable_in_content [Boolean] Mark whether the file should be used in new content or not.
        #
        #   @param name [String] New name for the file.
        #
        #   @param parent_folder_id [String] FolderId where the file should be moved to. folderId and folderPath parameters c
        #
        #   @param parent_folder_path [String] Folder path where the file should be moved to. folderId and folderPath parameter

        # NONE: Do not run any duplicate validation. REJECT: Reject the upload if a
        # duplicate is found. RETURN_EXISTING: If a duplicate file is found, do not upload
        # a new file and return the found duplicate instead.
        #
        # @see HubspotSDK::Models::Files::FileUpdateInput#access
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
      end
    end
  end
end
