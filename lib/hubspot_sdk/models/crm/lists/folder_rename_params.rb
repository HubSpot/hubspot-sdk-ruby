# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Lists
        # @see HubspotSDK::Resources::Crm::Lists::Folders#rename
        class FolderRenameParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute new_folder_name
          #   The new name of the folder.
          #
          #   @return [String, nil]
          optional :new_folder_name, String

          # @!method initialize(new_folder_name: nil, request_options: {})
          #   @param new_folder_name [String] The new name of the folder.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
