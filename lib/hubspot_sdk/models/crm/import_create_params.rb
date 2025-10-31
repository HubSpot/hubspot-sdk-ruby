# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      # @see HubspotSDK::Resources::CRM::Imports#create
      class ImportCreateParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute files
        #
        #   @return [Pathname, StringIO, IO, String, HubspotSDK::FilePart, nil]
        optional :files, HubspotSDK::Internal::Type::FileInput

        # @!attribute import_request
        #
        #   @return [String, nil]
        optional :import_request, String, api_name: :importRequest

        # @!method initialize(files: nil, import_request: nil, request_options: {})
        #   @param files [Pathname, StringIO, IO, String, HubspotSDK::FilePart]
        #   @param import_request [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
