# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Settings#get_revision
        class VersionBlog < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The id of the version.
          #
          #   @return [String]
          required :id, String

          # @!attribute object
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::Blog]
          required :object, -> { HubspotSDK::Cms::Blogs::Blog }

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
          #   {HubspotSDK::Models::Cms::Blogs::VersionBlog} for more details.
          #
          #   Model definition for a Version Blog. Contains metadata describing the version of
          #   the Blog. It can be used to view edit history of the settings.
          #
          #   @param id [String] The id of the version.
          #
          #   @param object [HubspotSDK::Models::Cms::Blogs::Blog]
          #
          #   @param updated_at [Time]
          #
          #   @param user [HubspotSDK::Models::VersionUser] Model definition for a version user. Contains addition information about the use
        end
      end
    end
  end
end
