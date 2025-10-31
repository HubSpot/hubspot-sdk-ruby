# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Posts#get_previous_version
        class VersionBlogPost < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
          #   The id of the version.
          #
          #   @return [String]
          required :id, String

          # @!attribute object
          #   Model definition for a Blog Post.
          #
          #   @return [HubspotSDK::Models::Cms::Blogs::BlogPost]
          required :object, -> { HubspotSDK::Cms::Blogs::BlogPost }

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
          #   {HubspotSDK::Models::Cms::Blogs::VersionBlogPost} for more details.
          #
          #   Model definition of a version of a blog post.
          #
          #   @param id [String] The id of the version.
          #
          #   @param object [HubspotSDK::Models::Cms::Blogs::BlogPost] Model definition for a Blog Post.
          #
          #   @param updated_at [Time]
          #
          #   @param user [HubspotSDK::Models::VersionUser] Model definition for a version user. Contains addition information about the use
        end
      end
    end
  end
end
