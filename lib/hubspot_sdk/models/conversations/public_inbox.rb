# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicInbox < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The ID of the inbox.
        #
        #   @return [String]
        required :id, String

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute created_at
        #   When the inbox was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute name
        #   The name of the inbox.
        #
        #   @return [String]
        required :name, String

        # @!attribute type
        #   Specifies whether this refers to a Conversations Inbox or to the Help Desk.
        #   Valid values are INBOX or HELP_DESK
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
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Conversations::PublicInbox} for more details.
        #
        #   @param id [String] The ID of the inbox.
        #
        #   @param archived [Boolean]
        #
        #   @param created_at [Time] When the inbox was created.
        #
        #   @param name [String] The name of the inbox.
        #
        #   @param type [String] Specifies whether this refers to a Conversations Inbox or to the Help Desk. Vali
        #
        #   @param updated_at [Time]
        #
        #   @param archived_at [Time]
      end
    end
  end
end
