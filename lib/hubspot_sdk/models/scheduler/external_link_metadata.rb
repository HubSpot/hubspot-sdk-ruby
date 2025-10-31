# frozen_string_literal: true

module HubspotSDK
  module Models
    module Scheduler
      class ExternalLinkMetadata < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute default_link
        #
        #   @return [Boolean]
        required :default_link, HubspotSDK::Internal::Type::Boolean, api_name: :defaultLink

        # @!attribute link
        #
        #   @return [String]
        required :link, String

        # @!attribute organizer_user_id
        #
        #   @return [String]
        required :organizer_user_id, String, api_name: :organizerUserId

        # @!attribute slug
        #
        #   @return [String]
        required :slug, String

        # @!attribute type
        #
        #   @return [String]
        required :type, String

        # @!attribute user_ids_of_link_members
        #
        #   @return [Array<String>]
        required :user_ids_of_link_members,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :userIdsOfLinkMembers

        # @!attribute name
        #
        #   @return [String, nil]
        optional :name, String

        # @!attribute updated_at
        #
        #   @return [Time, nil]
        optional :updated_at, Time, api_name: :updatedAt

        # @!method initialize(id:, created_at:, default_link:, link:, organizer_user_id:, slug:, type:, user_ids_of_link_members:, name: nil, updated_at: nil)
        #   @param id [String]
        #   @param created_at [Time]
        #   @param default_link [Boolean]
        #   @param link [String]
        #   @param organizer_user_id [String]
        #   @param slug [String]
        #   @param type [String]
        #   @param user_ids_of_link_members [Array<String>]
        #   @param name [String]
        #   @param updated_at [Time]
      end
    end
  end
end
