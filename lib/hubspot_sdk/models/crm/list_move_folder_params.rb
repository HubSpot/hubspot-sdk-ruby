# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#move_folder
      class ListMoveFolderParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute folder_id
        #
        #   @return [String]
        required :folder_id, String

        # @!attribute new_parent_folder_id
        #
        #   @return [String]
        required :new_parent_folder_id, String

        # @!method initialize(folder_id:, new_parent_folder_id:, request_options: {})
        #   @param folder_id [String]
        #   @param new_parent_folder_id [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
