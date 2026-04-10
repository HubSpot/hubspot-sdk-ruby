# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      # @see HubSpotSDK::Resources::Files::FileAssets#get
      class FileAssetGetParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute file_id
        #
        #   @return [String]
        required :file_id, String

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(file_id:, properties: nil, request_options: {})
        #   @param file_id [String]
        #   @param properties [Array<String>]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
