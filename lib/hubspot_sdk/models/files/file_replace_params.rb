# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::Files#replace
      class FileReplaceParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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
        #   @return [Pathname, StringIO, IO, String, HubspotSDK::FilePart, nil]
        optional :file, HubspotSDK::Internal::Type::FileInput

        # @!attribute options
        #
        #   @return [String, nil]
        optional :options, String

        # @!method initialize(file_id:, charset_hunch: nil, file: nil, options: nil, request_options: {})
        #   @param file_id [String]
        #   @param charset_hunch [String]
        #   @param file [Pathname, StringIO, IO, String, HubspotSDK::FilePart]
        #   @param options [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
