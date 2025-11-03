# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Lists
        # @see HubspotSDK::Resources::Crm::Lists::Folders#get
        class FolderGetParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute folder_id
          #   The Id of the folder to retrieve.
          #
          #   @return [String, nil]
          optional :folder_id, String

          # @!method initialize(folder_id: nil, request_options: {})
          #   @param folder_id [String] The Id of the folder to retrieve.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
