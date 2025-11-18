# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      class UserProvisionRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute email
        #   The user's email.
        #
        #   @return [String]
        required :email, String

        # @!attribute first_name
        #   The user's first name.
        #
        #   @return [String, nil]
        optional :first_name, String, api_name: :firstName

        # @!attribute last_name
        #   The user's last name.
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
        optional :secondary_team_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :secondaryTeamIds

        # @!attribute send_welcome_email
        #   Whether to send a welcome email.
        #
        #   @return [Boolean, nil]
        optional :send_welcome_email, HubspotSDK::Internal::Type::Boolean, api_name: :sendWelcomeEmail

        # @!method initialize(email:, first_name: nil, last_name: nil, primary_team_id: nil, role_id: nil, secondary_team_ids: nil, send_welcome_email: nil)
        #   A user creation request
        #
        #   @param email [String] The user's email.
        #
        #   @param first_name [String] The user's first name.
        #
        #   @param last_name [String] The user's last name.
        #
        #   @param primary_team_id [String] The user's primary team.
        #
        #   @param role_id [String] The user's role.
        #
        #   @param secondary_team_ids [Array<String>] The user's additional teams.
        #
        #   @param send_welcome_email [Boolean] Whether to send a welcome email.
      end
    end
  end
end
