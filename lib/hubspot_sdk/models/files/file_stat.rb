# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      class FileStat < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute file
        #
        #   @return [HubSpotSDK::Models::Files::File, nil]
        optional :file, -> { HubSpotSDK::Files::File }

        # @!attribute folder
        #
        #   @return [HubSpotSDK::Models::Files::Folder, nil]
        optional :folder, -> { HubSpotSDK::Files::Folder }

        # @!method initialize(file: nil, folder: nil)
        #   @param file [HubSpotSDK::Models::Files::File]
        #   @param folder [HubSpotSDK::Models::Files::Folder]
      end
    end
  end
end
