# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#rename_folder
      class ListRenameFolderParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

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
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
