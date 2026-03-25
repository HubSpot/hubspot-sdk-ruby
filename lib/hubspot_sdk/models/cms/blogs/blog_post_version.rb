# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        class BlogPostVersion < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute object
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          required :object, -> { HubspotSDK::Cms::Blogs::BlogPost }

          # @!attribute updated_at
          #
          #   @return [Time]
          required :updated_at, Time, api_name: :updatedAt

          # @!attribute user
          #
          #   @return [HubspotSDK::Models::VersionUser]
          required :user, -> { HubspotSDK::VersionUser }

          # @!method initialize(id:, object:, updated_at:, user:)
          #   @param id [String]
          #   @param object [HubspotSDK::Models::Cms::Blogs::BlogPost]
          #   @param updated_at [Time]
          #   @param user [HubspotSDK::Models::VersionUser]
        end
      end

      BlogPostVersion = Blogs::BlogPostVersion
    end
  end
end
