# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      module Blogs
        # @see HubSpotSDK::Resources::Cms::Blogs::Settings#get_revision
        class BlogVersion < HubSpotSDK::Internal::Type::BaseModel
          # @!attribute id
          #
          #   @return [String]
          required :id, String

          # @!attribute object
          #
          #   @return [HubSpotSDK::Models::Cms::Blogs::Blog]
          required :object, -> { HubSpotSDK::Cms::Blogs::Blog }

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
          #   @param object [HubSpotSDK::Models::Cms::Blogs::Blog]
          #   @param updated_at [Time]
          #   @param user [HubSpotSDK::Models::VersionUser]
        end
      end

      BlogVersion = Blogs::BlogVersion
    end
  end
end
