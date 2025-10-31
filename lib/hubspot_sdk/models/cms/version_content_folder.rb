# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class VersionContentFolder < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of this folder version.
        #
        #   @return [String]
        required :id, String

        # @!attribute object
        #   Model definition for a content folder.
        #
        #   @return [HubspotSDK::Models::Cms::ContentFolder]
        required :object, -> { HubspotSDK::Cms::ContentFolder }

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute user
        #   Model definition for a version user. Contains addition information about the
        #   user who created a version.
        #
        #   @return [HubspotSDK::Models::VersionUser]
        required :user, -> { HubspotSDK::VersionUser }

        # @!method initialize(id:, object:, updated_at:, user:)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::VersionContentFolder} for more details.
        #
        #   Model definition for a content folder version. Contains metadata describing the
        #   version of the folder. It can be used to view edit history of a folder.
        #
        #   @param id [String] ID of this folder version.
        #
        #   @param object [HubspotSDK::Models::Cms::ContentFolder] Model definition for a content folder.
        #
        #   @param updated_at [Time]
        #
        #   @param user [HubspotSDK::Models::VersionUser] Model definition for a version user. Contains addition information about the use
      end
    end
  end
end
