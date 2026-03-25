# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      module Blogs
        # @see HubspotSDK::Resources::Cms::Blogs::Settings#get_revision
        class BlogVersion < HubspotSDK::Internal::Type::BaseModel
          # @!attribute id
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
          #
          #   @return [HubspotSDK::Models::VersionUser]
          required :user, -> { HubspotSDK::VersionUser }

          # @!method initialize(id:, object:, updated_at:, user:)
          #   @param id [String]
          #   @param object [HubspotSDK::Models::Cms::Blogs::Blog]
          #   @param updated_at [Time]
          #   @param user [HubspotSDK::Models::VersionUser]
        end
      end

      BlogVersion = Blogs::BlogVersion
    end
  end
end
