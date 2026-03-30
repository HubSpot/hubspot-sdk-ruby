# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::Files#upload
      class FileUploadParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute charset_hunch
        #
        #   @return [String, nil]
        optional :charset_hunch, String, api_name: :charsetHunch

        # @!attribute file
        #
        #   @return [Pathname, StringIO, IO, String, HubspotSDK::FilePart, nil]
        optional :file, HubspotSDK::Internal::Type::FileInput

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
        #   @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart]
        #   @param file_name [String]
        #   @param folder_id [String]
        #   @param folder_path [String]
        #   @param options [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
