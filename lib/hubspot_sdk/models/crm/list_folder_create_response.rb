# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      # @see HubspotSDK::Resources::Crm::Lists#create_folder
      class ListFolderCreateResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute folder
        #
        #   @return [HubspotSDK::Models::Crm::PublicListFolder]
        required :folder, -> { HubspotSDK::Crm::PublicListFolder }

        # @!method initialize(folder:)
        #   @param folder [HubspotSDK::Models::Crm::PublicListFolder]
      end
    end
  end
end
