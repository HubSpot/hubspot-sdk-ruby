# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class VersionPage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   ID of this page version.
        #
        #   @return [String]
        required :id, String

        # @!attribute object
        #   Model definition for a landing page or site page.
        #
        #   @return [HubspotSDK::Models::Cms::Page]
        required :object, -> { HubspotSDK::Cms::Page }

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
        #   {HubspotSDK::Models::Cms::VersionPage} for more details.
        #
        #   Model definition for a landing page or site page version. Contains metadata
        #   describing the version of the page. It can be used to view edit history of a
        #   page.
        #
        #   @param id [String] ID of this page version.
        #
        #   @param object [HubspotSDK::Models::Cms::Page] Model definition for a landing page or site page.
        #
        #   @param updated_at [Time]
        #
        #   @param user [HubspotSDK::Models::VersionUser] Model definition for a version user. Contains addition information about the use
      end
    end
  end
end
