# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class VersionBlogPost < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The id of the version.
          #
          #   @return [String]
          required :id, String

          # @!attribute object
          #
          #   @return [HubSpotSDK::Models::Cms::Blogs::BlogPost]
          required :object, -> { HubSpotSDK::Cms::Blogs::BlogPost }

          # @!attribute updated_at
          #   The timestamp (ISO8601 format) when this version of the Blog Post was updated.
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute user
          #
          #   @return [HubSpotSDK::Models::VersionUser]
          required :user, -> { HubSpotSDK::VersionUser }

          # @!method initialize(id:, object:, updated_at:, user:)
          #   @param id [String] The id of the version.
          #
          #   @param object [HubSpotSDK::Models::Cms::Blogs::BlogPost]
          #
          #   @param updated_at [Time] The timestamp (ISO8601 format) when this version of the Blog Post was updated.
          #
          #   @param user [HubSpotSDK::Models::VersionUser]
        end
      end
    end
  end
end
