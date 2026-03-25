# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkMetadata < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The unique identifier for the meeting link.
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #   The Unix time in milliseconds when the meeting link was created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute default_link
        #   Whether the meeting link is the user's default link.
        #
        #   @return [Boolean]
        required :default_link, HubspotSDK::Internal::Type::Boolean, api_name: :defaultLink

        # @!attribute link
        #   The URL of the meeting link.
        #
        #   @return [String]
        required :link, String

        # @!attribute organizer_user_id
        #   The user ID of the meeting link's organizer.
        #
        #   @return [String]
        required :organizer_user_id, String, api_name: :organizerUserId

        # @!attribute slug
        #   The slug of the meeting link, located directly after the domain in the URL.
        #
        #   @return [String]
        required :slug, String

        # @!attribute type
        #   The type of the external meeting link. Accepted values are: PERSONAL_LINK,
        #   GROUP_CALENDAR, ROUND_ROBIN_CALENDAR.
        #
        #   @return [Symbol, HubspotSDK::Models::Scheduler::ExternalLinkMetadata::Type]
        required :type, enum: -> { HubspotSDK::Scheduler::ExternalLinkMetadata::Type }

        # @!attribute user_ids_of_link_members
        #
        #   @return [Array<String>]
        required :user_ids_of_link_members,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :userIdsOfLinkMembers

        # @!attribute name
        #   The name of the meeting link.
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute updated_at
        #   The Unix time in milliseconds when the meeting link was last updated.
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, created_at:, default_link:, link:, organizer_user_id:, slug:, type:, user_ids_of_link_members:, name: nil, updated_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Scheduler::ExternalLinkMetadata} for more details.
        #
        #   @param id [String] The unique identifier for the meeting link.
        #
        #   @param created_at [Time] The Unix time in milliseconds when the meeting link was created.
        #
        #   @param default_link [Boolean] Whether the meeting link is the user's default link.
        #
        #   @param link [String] The URL of the meeting link.
        #
        #   @param organizer_user_id [String] The user ID of the meeting link's organizer.
        #
        #   @param slug [String] The slug of the meeting link, located directly after the domain in the URL.
        #
        #   @param type [Symbol, HubspotSDK::Models::Scheduler::ExternalLinkMetadata::Type] The type of the external meeting link. Accepted values are: PERSONAL_LINK, GROUP
        #
        #   @param user_ids_of_link_members [Array<String>]
        #
        #   @param name [String] The name of the meeting link.
        #
        #   @param updated_at [Time] The Unix time in milliseconds when the meeting link was last updated.

        # The type of the external meeting link. Accepted values are: PERSONAL_LINK,
        # GROUP_CALENDAR, ROUND_ROBIN_CALENDAR.
        #
        # @see HubspotSDK::Models::Scheduler::ExternalLinkMetadata#type
        module Type
          extend HubspotSDK::Internal::Type::Enum

          GROUP_CALENDAR = :GROUP_CALENDAR
          PERSONAL_LINK = :PERSONAL_LINK
          ROUND_ROBIN_CALENDAR = :ROUND_ROBIN_CALENDAR

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
