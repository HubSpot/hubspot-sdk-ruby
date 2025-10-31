# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicInbox < HubspotSDK::Internal::Type::BaseModel
        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute type
        #   Specifies whether this refers to a Conversations Inbox or to the Help Desk.
        #   Valid values are INBOX or HELP_DESK
        #
        #   @return [String]
        required :type, String

        # @!attribute id
        #   The ID of the inbox.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute archived_at
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!attribute created_at
        #   When the inbox was created.
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute name
        #   The name of the inbox.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(archived:, type:, id: nil, archived_at: nil, created_at: nil, name: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Conversations::PublicInbox} for more details.
        #
        #   @param archived [Boolean]
        #
        #   @param type [String] Specifies whether this refers to a Conversations Inbox or to the Help Desk. Vali
        #
        #   @param id [String] The ID of the inbox.
        #
        #   @param archived_at [Time]
        #
        #   @param created_at [Time] When the inbox was created.
        #
        #   @param name [String] The name of the inbox.
        #
        #   @param updated_at [Time]
      end
    end
  end
end
