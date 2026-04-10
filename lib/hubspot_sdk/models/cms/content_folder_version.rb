# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ContentFolderVersion < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute object
        #
        #   @return [HubSpotSDK::Models::Cms::ContentFolder]
        required :object, -> { HubSpotSDK::Cms::ContentFolder }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute user
        #
        #   @return [HubSpotSDK::Models::VersionUser]
        required :user, -> { HubSpotSDK::VersionUser }

        # @!method initialize(id:, object:, updated_at:, user:)
        #   @param id [String]
        #   @param object [HubSpotSDK::Models::Cms::ContentFolder]
        #   @param updated_at [Time]
        #   @param user [HubSpotSDK::Models::VersionUser]
      end
    end
  end
end
