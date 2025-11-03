# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      module Lists
        # @see HubspotSDK::Resources::Crm::Lists::Folders#move
        class FolderMoveParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute folder_id
          #
          #   @return [String]
          required :folder_id, String

          # @!method initialize(folder_id:, request_options: {})
          #   @param folder_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
