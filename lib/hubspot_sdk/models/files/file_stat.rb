# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class FileStat < HubspotSDK::Internal::Type::BaseModel
        # @!attribute file
        #   File
        #
        #   @return [HubspotSDK::Models::Files::File, nil]
        optional :file, -> { HubspotSDK::Files::File }

        # @!attribute folder
        #
        #   @return [HubspotSDK::Models::Files::Folder, nil]
        optional :folder, -> { HubspotSDK::Files::Folder }

        # @!method initialize(file: nil, folder: nil)
        #   @param file [HubspotSDK::Models::Files::File] File
        #
        #   @param folder [HubspotSDK::Models::Files::Folder]
      end
    end
  end
end
