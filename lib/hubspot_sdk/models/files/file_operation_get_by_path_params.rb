# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::FileOperations#get_by_path
      class FileOperationGetByPathParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute properties
        #   Properties to return in the response.
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(properties: nil, request_options: {})
        #   @param properties [Array<String>] Properties to return in the response.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
