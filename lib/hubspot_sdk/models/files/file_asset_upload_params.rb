# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      # @see HubSpotSDK::Resources::Files::FileAssets#upload
      class FileAssetUploadParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute charset_hunch
        #
        #   @return [String, nil]
        optional :charset_hunch, String, api_name: :charsetHunch

        # @!attribute file
        #
        #   @return [Pathname, StringIO, IO, String, HubSpotSDK::FilePart, nil]
        optional :file, HubSpotSDK::Internal::Type::FileInput

        # @!attribute file_name
        #
        #   @return [String, nil]
        optional :file_name, String, api_name: :fileName

        # @!attribute folder_id
        #
        #   @return [String, nil]
        optional :folder_id, String, api_name: :folderId

        # @!attribute folder_path
        #
        #   @return [String, nil]
        optional :folder_path, String, api_name: :folderPath

        # @!attribute options
        #
        #   @return [String, nil]
        optional :options, String

        # @!method initialize(charset_hunch: nil, file: nil, file_name: nil, folder_id: nil, folder_path: nil, options: nil, request_options: {})
        #   @param charset_hunch [String]
        #   @param file [Pathname, StringIO, IO, String, HubSpotSDK::FilePart]
        #   @param file_name [String]
        #   @param folder_id [String]
        #   @param folder_path [String]
        #   @param options [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
