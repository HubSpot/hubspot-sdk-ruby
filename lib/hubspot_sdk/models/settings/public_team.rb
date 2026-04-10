# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      class PublicTeam < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The team's unique ID
        #
        #   @return [String]
        required :id, String

        # @!attribute name
        #   The team's name
        #
        #   @return [String]
        required :name, String

        # @!attribute secondary_user_ids
        #   Secondary or additional members of this team
        #
        #   @return [Array<String>]
        required :secondary_user_ids, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :secondaryUserIds

        # @!attribute user_ids
        #   Primary members of this team
        #
        #   @return [Array<String>]
        required :user_ids, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :userIds

        # @!method initialize(id:, name:, secondary_user_ids:, user_ids:)
        #   @param id [String] The team's unique ID
        #
        #   @param name [String] The team's name
        #
        #   @param secondary_user_ids [Array<String>] Secondary or additional members of this team
        #
        #   @param user_ids [Array<String>] Primary members of this team
      end
    end
  end
end
