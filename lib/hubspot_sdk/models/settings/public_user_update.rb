# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      class PublicUserUpdate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute first_name
        #   The first name of the user.
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute last_name
        #   The last name of the user.
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!attribute primary_team_id
        #   The user's primary team.
        #
        #   @return [String, nil]
        optional :primary_team_id, String, api_name: :primaryTeamId

        # @!attribute role_id
        #   The user's role.
        #
        #   @return [String, nil]
        optional :role_id, String, api_name: :roleId

        # @!attribute secondary_team_ids
        #   The user's additional teams.
        #
        #   @return [Array<String>, nil]
        optional :secondary_team_ids, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :secondaryTeamIds

        # @!method initialize(first_name: nil, last_name: nil, primary_team_id: nil, role_id: nil, secondary_team_ids: nil)
        #   @param first_name [String] The first name of the user.
        #
        #   @param last_name [String] The last name of the user.
        #
        #   @param primary_team_id [String] The user's primary team.
        #
        #   @param role_id [String] The user's role.
        #
        #   @param secondary_team_ids [Array<String>] The user's additional teams.
      end
    end
  end
end
