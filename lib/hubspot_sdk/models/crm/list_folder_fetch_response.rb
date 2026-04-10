# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      # @see HubSpotSDK::Resources::Crm::Lists#list_folders
      class ListFolderFetchResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute folder
        #
        #   @return [HubSpotSDK::Models::Crm::PublicListFolder]
        required :folder, -> { HubSpotSDK::Crm::PublicListFolder }

        # @!method initialize(folder:)
        #   @param folder [HubSpotSDK::Models::Crm::PublicListFolder]
      end
    end
  end
end
