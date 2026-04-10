# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      # @see HubSpotSDK::Resources::Files::FileAssets#replace
      class FileAssetReplaceParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String

        # @!attribute charset_hunch
        #
        #   @return [String, nil]
        optional :charset_hunch, String, api_name: :charsetHunch

        # @!attribute file
        #
        #   @return [Pathname, StringIO, IO, String, HubSpotSDK::FilePart, nil]
        optional :file, HubSpotSDK::Internal::Type::FileInput

        # @!attribute options
        #
        #   @return [String, nil]
        optional :options, String

        # @!method initialize(file_id:, charset_hunch: nil, file: nil, options: nil, request_options: {})
        #   @param file_id [String]
        #   @param charset_hunch [String]
        #   @param file [Pathname, StringIO, IO, String, HubSpotSDK::FilePart]
        #   @param options [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
