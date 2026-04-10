# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      # @see HubSpotSDK::Resources::Files::Folders#delete_by_id
      class FolderDeleteByIDParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute folder_id
        #
        #   @return [String]
        required :folder_id, String

        # @!method initialize(folder_id:, request_options: {})
        #   @param folder_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
