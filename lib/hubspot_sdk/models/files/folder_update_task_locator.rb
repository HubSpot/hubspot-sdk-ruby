# frozen_string_literal: true

module HubspotSDK
  module Models
    module Files
      class FolderUpdateTaskLocator < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of the task
        #
        #   @return [String]
        required :id, String

        # @!attribute links
        #   Links for where to check information related to the task. The `status` link
        #   gives the URL for where to check the status of the task.
        #
        #   @return [Hash{Symbol=>String}]
        required :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!method initialize(id:, links:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Files::FolderUpdateTaskLocator} for more details.
        #
        #   Information on the task that has been started, and where to check it's status.
        #
        #   @param id [String] ID of the task
        #
        #   @param links [Hash{Symbol=>String}] Links for where to check information related to the task. The `status` link give
      end
    end
  end
end
