# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::Files#upload
      class FileUploadParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute charset_hunch
        #   Character set of the uploaded file.
        #
        #   @return [String, nil]
        optional :charset_hunch, String, api_name: :charsetHunch

        # @!attribute file
        #   File to be uploaded.
        #
        #   @return [Pathname, StringIO, IO, String, HubspotSDK::FilePart, nil]
        optional :file, HubspotSDK::Internal::Type::FileInput

        # @!attribute file_name
        #   Desired name for the uploaded file.
        #
        #   @return [String, nil]
        optional :file_name, String, api_name: :fileName

        # @!attribute folder_id
        #   Either 'folderId' or 'folderPath' is required. folderId is the ID of the folder
        #   the file will be uploaded to.
        #
        #   @return [String, nil]
        optional :folder_id, String, api_name: :folderId

        # @!attribute folder_path
        #   Either 'folderPath' or 'folderId' is required. This field represents the
        #   destination folder path for the uploaded file. If a path doesn't exist, the
        #   system will try to create one.
        #
        #   @return [String, nil]
        optional :folder_path, String, api_name: :folderPath

        # @!attribute options
        #   JSON string representing FileUploadOptions.
        #
        #   @return [String, nil]
        optional :options, String

        # @!method initialize(charset_hunch: nil, file: nil, file_name: nil, folder_id: nil, folder_path: nil, options: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::FileUploadParams} for more details.
        #
        #   @param charset_hunch [String] Character set of the uploaded file.
        #
        #   @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart] File to be uploaded.
        #
        #   @param file_name [String] Desired name for the uploaded file.
        #
        #   @param folder_id [String] Either 'folderId' or 'folderPath' is required. folderId is the ID of the folder
        #
        #   @param folder_path [String] Either 'folderPath' or 'folderId' is required. This field represents the destina
        #
        #   @param options [String] JSON string representing FileUploadOptions.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
