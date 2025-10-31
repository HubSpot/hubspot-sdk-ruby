# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::Folders#get_by_path
      class FolderGetByPathParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute properties
        #   Properties to set on returned folder.
        #
        #   @return [Array<String>, nil]
        optional :properties, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!method initialize(properties: nil, request_options: {})
        #   @param properties [Array<String>] Properties to set on returned folder.
        #
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
