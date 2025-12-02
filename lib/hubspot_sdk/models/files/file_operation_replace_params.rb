# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::FileOperations#replace
      class FileOperationReplaceParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute charset_hunch
        #   Character set of given file data.
        #
        #   @return [String, nil]
        optional :charset_hunch, String, api_name: :charsetHunch

        # @!attribute file
        #   File data that will replace existing file in the file manager.
        #
        #   @return [Pathname, StringIO, IO, String, HubspotSDK::FilePart, nil]
        optional :file, HubspotSDK::Internal::Type::FileInput

        # @!attribute options
        #   JSON string representing FileReplaceOptions. Includes options to set the access
        #   and expiresAt properties, which will automatically update when the file is
        #   replaced.
        #
        #   @return [String, nil]
        optional :options, String

        # @!method initialize(charset_hunch: nil, file: nil, options: nil, request_options: {})
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::FileOperationReplaceParams} for more details.
        #
        #   @param charset_hunch [String] Character set of given file data.
        #
        #   @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart] File data that will replace existing file in the file manager.
        #
        #   @param options [String] JSON string representing FileReplaceOptions. Includes options to set the access
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
