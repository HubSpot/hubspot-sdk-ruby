# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class ContentFolder < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique ID of the content folder.
        #
        #   @return [String]
        required :id, String

        # @!attribute category
        #   The type of object this folder applies to. Should always be LANDING_PAGE.
        #
        #   @return [Integer]
        required :category, Integer

        # @!attribute created
        #   The timestamp indicating when the content folder was created.
        #
        #   @return [Time]
        required :created, Time

        # @!attribute deleted_at
        #   The timestamp (ISO8601 format) when this content folder was deleted.
        #
        #   @return [Time]
        required :deleted_at, Time, api_name: :deletedAt

        # @!attribute name
        #   The name of the folder which will show up in the app dashboard
        #
        #   @return [String]
        required :name, String

        # @!attribute parent_folder_id
        #   The ID of the content folder this folder is nested under
        #
        #   @return [Integer]
        required :parent_folder_id, Integer, api_name: :parentFolderId

        # @!attribute updated
        #   The timestamp indicating when the content folder was last updated.
        #
        #   @return [Time]
        required :updated, Time

        # @!method initialize(id:, category:, created:, deleted_at:, name:, parent_folder_id:, updated:)
        #   @param id [String] The unique ID of the content folder.
        #
        #   @param category [Integer] The type of object this folder applies to. Should always be LANDING_PAGE.
        #
        #   @param created [Time] The timestamp indicating when the content folder was created.
        #
        #   @param deleted_at [Time] The timestamp (ISO8601 format) when this content folder was deleted.
        #
        #   @param name [String] The name of the folder which will show up in the app dashboard
        #
        #   @param parent_folder_id [Integer] The ID of the content folder this folder is nested under
        #
        #   @param updated [Time] The timestamp indicating when the content folder was last updated.
      end
    end
  end
end
