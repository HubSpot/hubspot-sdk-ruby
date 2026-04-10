# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Files
      class FolderUpdateTaskLocator < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of the task
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #   Links for where to check information related to the task. The `status` link
        #   gives the URL for where to check the status of the task.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!method initialize(id:, links: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Files::FolderUpdateTaskLocator} for more details.
        #
        #   @param id [String] ID of the task
        #
        #   @param links [Hash{Symbol=>String}] Links for where to check information related to the task. The `status` link give
      end
    end
  end
end
