# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#list_folders
      class ListListFoldersParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute folder_id
        #
        #   @return [String, nil]
        optional :folder_id, String

        # @!method initialize(folder_id: nil, request_options: {})
        #   @param folder_id [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
