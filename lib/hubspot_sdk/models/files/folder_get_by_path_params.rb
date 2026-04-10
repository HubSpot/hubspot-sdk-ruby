# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      # @see HubSpotSDK::Resources::Files::Folders#get_by_path
      class FolderGetByPathParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute folder_path
        #
        #   @return [String]
        required :folder_path, String

        # @!attribute properties
        #
        #   @return [Array<String>, nil]
        optional :properties, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(folder_path:, properties: nil, request_options: {})
        #   @param folder_path [String]
        #   @param properties [Array<String>]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
