# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      # @see HubSpotSDK::Resources::Files::FileAssets#create
      class FileAssetCreateParams < HubSpotSDK::Models::Files::FolderInput
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
