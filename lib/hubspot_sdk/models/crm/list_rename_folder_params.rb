# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#rename_folder
      class ListRenameFolderParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute folder_id
        #
        #   @return [String]
        required :folder_id, String

        # @!attribute new_folder_name
        #
        #   @return [String, nil]
        optional :new_folder_name, String

        # @!method initialize(folder_id:, new_folder_name: nil, request_options: {})
        #   @param folder_id [String]
        #   @param new_folder_name [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
