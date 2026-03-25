# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#move_folder
      class ListMoveFolderParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
