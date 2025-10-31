# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class PublicUserUpdate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute first_name
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute last_name
        #
        #   @return [String, nil]
        optional :last_name, String, api_name: :lastName

        # @!attribute primary_team_id
        #   The user's primary team
        #
        #   @return [String, nil]
        optional :primary_team_id, String, api_name: :primaryTeamId

        # @!attribute role_id
        #   The user's role
        #
        #   @return [String, nil]
        optional :role_id, String, api_name: :roleId

        # @!attribute secondary_team_ids
        #   The user's additional teams
        #
        #   @return [Array<String>, nil]
        optional :secondary_team_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :secondaryTeamIds

        # @!method initialize(first_name: nil, last_name: nil, primary_team_id: nil, role_id: nil, secondary_team_ids: nil)
        #   A user to update
        #
        #   @param first_name [String]
        #
        #   @param last_name [String]
        #
        #   @param primary_team_id [String] The user's primary team
        #
        #   @param role_id [String] The user's role
        #
        #   @param secondary_team_ids [Array<String>] The user's additional teams
      end
    end
  end
end
