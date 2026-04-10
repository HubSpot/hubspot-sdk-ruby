# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        class BlogPostVersion < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute object
          #
          #   @return [HubSpotSDK::Models::Cms::Blogs::BlogPost]
          required :object, -> { HubSpotSDK::Cms::Blogs::BlogPost }

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
          #   @param object [HubSpotSDK::Models::Cms::Blogs::BlogPost]
          #   @param updated_at [Time]
          #   @param user [HubSpotSDK::Models::VersionUser]
        end
      end

      BlogPostVersion = Blogs::BlogPostVersion
    end
  end
end
