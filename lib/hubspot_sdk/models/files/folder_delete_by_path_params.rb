# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      # @see HubspotSDK::Resources::Files::Folders#delete_by_path
      class FolderDeleteByPathParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute folder_path
        #
        #   @return [String]
        required :folder_path, String

        # @!method initialize(folder_path:, request_options: {})
        #   @param folder_path [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
