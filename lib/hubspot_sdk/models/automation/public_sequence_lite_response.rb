# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class PublicSequenceLiteResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute user_id
        #
        #   @return [String]
        required :user_id, String, api_name: :userId

        # @!attribute folder_id
        #
        #   @return [String, nil]
        optional :folder_id, String, api_name: :folderId

        # @!method initialize(id:, created_at:, name:, updated_at:, user_id:, folder_id: nil)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param name [String]
        #   @param updated_at [Time]
        #   @param user_id [String]
        #   @param folder_id [String]
      end
    end
  end
end
