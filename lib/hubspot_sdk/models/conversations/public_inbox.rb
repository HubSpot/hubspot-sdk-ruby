# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicInbox < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute updated_at
        #
        #   @return [Time]
        required :updated_at, Time, api_name: :updatedAt

        # @!attribute archived_at
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!method initialize(id:, archived:, created_at:, name:, type:, updated_at:, archived_at: nil)
        #   @param id [String]
        #   @param archived [Boolean]
        #   @param created_at [Time]
        #   @param name [String]
        #   @param type [String]
        #   @param updated_at [Time]
        #   @param archived_at [Time]
      end
    end
  end
end
