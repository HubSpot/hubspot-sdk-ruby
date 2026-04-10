# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Imports#create
      class ImportCreateParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute files
        #
        #   @return [Pathname, StringIO, IO, String, HubSpotSDK::FilePart, nil]
        optional :files, HubSpotSDK::Internal::Type::FileInput

        # @!attribute import_request
        #
        #   @return [String, nil]
        optional :import_request, String, api_name: :importRequest

        # @!method initialize(files: nil, import_request: nil, request_options: {})
        #   @param files [Pathname, StringIO, IO, String, HubSpotSDK::FilePart]
        #   @param import_request [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
