# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class File < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   File ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #   If the file is deleted.
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute created_at
        #   Creation time of the file object.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute updated_at
        #   Timestamp of the latest update to the file.
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute access
        #   File access. Can be PUBLIC_INDEXABLE, PUBLIC_NOT_INDEXABLE, PRIVATE.
        #
        #   @return [Symbol, HubspotSDK::Models::Files::File::Access, nil]
        optional :access, enum: -> { HubspotSDK::Files::File::Access }

        # @!attribute archived_at
        #   Deletion time of the file object.
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!attribute default_hosting_url
        #   Default hosting URL of the file. This will use one of HubSpot's provided URLs to
        #   serve the file.
        #
        #   @return [String, nil]
        optional :default_hosting_url, String, api_name: :defaultHostingUrl

        # @!attribute encoding
        #   Encoding of the file.
        #
        #   @return [String, nil]
        optional :encoding, String

        # @!attribute expires_at
        #
        #   @return [Integer, nil]
        optional :expires_at, Integer, api_name: :expiresAt

        # @!attribute extension
        #   Extension of the file. ex: .jpg, .png, .gif, .pdf, etc.
        #
        #   @return [String, nil]
        optional :extension, String

        # @!attribute file_md5
        #   The MD5 hash of the file.
        #
        #   @return [String, nil]
        optional :file_md5, String, api_name: :fileMd5

        # @!attribute height
        #   For image and video files, the height of the content.
        #
        #   @return [Integer, nil]
        optional :height, Integer

        # @!attribute is_usable_in_content
        #   Previously "archied". Indicates if the file should be used when creating new
        #   content like web pages.
        #
        #   @return [Boolean, nil]
        optional :is_usable_in_content, HubspotSDK::Internal::Type::Boolean, api_name: :isUsableInContent

        # @!attribute name
        #   Name of the file.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute parent_folder_id
        #   ID of the folder the file is in.
        #
        #   @return [String, nil]
        optional :parent_folder_id, String, api_name: :parentFolderId

        # @!attribute path
        #   Path of the file in the file manager.
        #
        #   @return [String, nil]
        optional :path, String

        # @!attribute size
        #   Size of the file in bytes.
        #
        #   @return [Integer, nil]
        optional :size, Integer

        # @!attribute source_group
        #
        #   @return [Symbol, HubspotSDK::Models::Files::File::SourceGroup, nil]
        optional :source_group, enum: -> { HubspotSDK::Files::File::SourceGroup }, api_name: :sourceGroup

        # @!attribute type
        #   Type of the file. Can be IMG, DOCUMENT, AUDIO, MOVIE, or OTHER.
        #
        #   @return [String, nil]
        optional :type, String

        # @!attribute url
        #   URL of the given file. This URL can change depending on the domain settings of
        #   the account. Will use the select file hosting domain.
        #
        #   @return [String, nil]
        optional :url, String

        # @!attribute width
        #   For image and video files, the width of the content.
        #
        #   @return [Integer, nil]
        optional :width, Integer

        # @!method initialize(id:, archived:, created_at:, updated_at:, access: nil, archived_at: nil, default_hosting_url: nil, encoding: nil, expires_at: nil, extension: nil, file_md5: nil, height: nil, is_usable_in_content: nil, name: nil, parent_folder_id: nil, path: nil, size: nil, source_group: nil, type: nil, url: nil, width: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::File} for more details.
        #
        #   @param id [String] File ID.
        #
        #   @param archived [Boolean] If the file is deleted.
        #
        #   @param created_at [Time] Creation time of the file object.
        #
        #   @param updated_at [Time] Timestamp of the latest update to the file.
        #
        #   @param access [Symbol, HubspotSDK::Models::Files::File::Access] File access. Can be PUBLIC_INDEXABLE, PUBLIC_NOT_INDEXABLE, PRIVATE.
        #
        #   @param archived_at [Time] Deletion time of the file object.
        #
        #   @param default_hosting_url [String] Default hosting URL of the file. This will use one of HubSpot's provided URLs to
        #
        #   @param encoding [String] Encoding of the file.
        #
        #   @param expires_at [Integer]
        #
        #   @param extension [String] Extension of the file. ex: .jpg, .png, .gif, .pdf, etc.
        #
        #   @param file_md5 [String] The MD5 hash of the file.
        #
        #   @param height [Integer] For image and video files, the height of the content.
        #
        #   @param is_usable_in_content [Boolean] Previously "archied". Indicates if the file should be used when creating new con
        #
        #   @param name [String] Name of the file.
        #
        #   @param parent_folder_id [String] ID of the folder the file is in.
        #
        #   @param path [String] Path of the file in the file manager.
        #
        #   @param size [Integer] Size of the file in bytes.
        #
        #   @param source_group [Symbol, HubspotSDK::Models::Files::File::SourceGroup]
        #
        #   @param type [String] Type of the file. Can be IMG, DOCUMENT, AUDIO, MOVIE, or OTHER.
        #
        #   @param url [String] URL of the given file. This URL can change depending on the domain settings of t
        #
        #   @param width [Integer] For image and video files, the width of the content.

        # File access. Can be PUBLIC_INDEXABLE, PUBLIC_NOT_INDEXABLE, PRIVATE.
        #
        # @see HubspotSDK::Models::Files::File#access
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

        # @see HubspotSDK::Models::Files::File#source_group
        module SourceGroup
          extend HubspotSDK::Internal::Type::Enum

          CONTENT = :CONTENT
          CONVERSATIONS = :CONVERSATIONS
          FORMS = :FORMS
          UI_EXTENSIONS = :UI_EXTENSIONS
          UNKNOWN = :UNKNOWN

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
