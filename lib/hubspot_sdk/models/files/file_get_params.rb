# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::Files#get
      class FileGetParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(file_id:, properties: nil, request_options: {})
        #   @param file_id [String]
        #   @param properties [Array<String>]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
