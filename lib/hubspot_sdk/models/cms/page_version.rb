# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      # @see HubspotSDK::Resources::Cms::Pages#get_landing_page_revision
      class PageVersion < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute object
        #
        #   @return [HubspotSDK::Models::Cms::PageData]
        required :object, -> { HubspotSDK::Cms::PageData }

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
        #   @param object [HubspotSDK::Models::Cms::PageData]
        #   @param updated_at [Time]
        #   @param user [HubspotSDK::Models::VersionUser]
      end
    end
  end
end
