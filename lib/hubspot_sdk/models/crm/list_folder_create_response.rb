# frozen_string_literal: true

module HubspotSDK
  module Models
    module CRM
      class ListFolderCreateResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute folder
        #
        #   @return [HubspotSDK::Models::CRM::PublicListFolder]
        required :folder, -> { HubspotSDK::CRM::PublicListFolder }

        # @!method initialize(folder:)
        #   @param folder [HubspotSDK::Models::CRM::PublicListFolder]
      end
    end
  end
end
