# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Settings
      # @see HubSpotSDK::Resources::Settings::Users#create
      class PublicUser < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The user's unique ID.
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The user's email.
        #
        #   @return [String]
        required :email, String

        # @!attribute role_ids
        #   A list of role IDs assigned to the user.
        #
        #   @return [Array<String>]
        required :role_ids, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :roleIds

        # @!attribute super_admin
        #   Whether the user has super admin privileges.
        #
        #   @return [Boolean]
        required :super_admin, HubSpotSDK::Internal::Type::Boolean, api_name: :superAdmin

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
        #   The user's primary team
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

        # @!attribute send_welcome_email
        #   Whether a welcome email was sent to the user. This value will only be populated
        #   in response to a provisioning request. Subsequent queries will be false.
        #
        #   @return [Boolean, nil]
        optional :send_welcome_email, HubSpotSDK::Internal::Type::Boolean, api_name: :sendWelcomeEmail

        # @!method initialize(id:, email:, role_ids:, super_admin:, first_name: nil, last_name: nil, primary_team_id: nil, role_id: nil, secondary_team_ids: nil, send_welcome_email: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Settings::PublicUser} for more details.
        #
        #   @param id [String] The user's unique ID.
        #
        #   @param email [String] The user's email.
        #
        #   @param role_ids [Array<String>] A list of role IDs assigned to the user.
        #
        #   @param super_admin [Boolean] Whether the user has super admin privileges.
        #
        #   @param first_name [String] The user's first name.
        #
        #   @param last_name [String] The user's last name.
        #
        #   @param primary_team_id [String] The user's primary team
        #
        #   @param role_id [String] The user's role.
        #
        #   @param secondary_team_ids [Array<String>] The user's additional teams.
        #
        #   @param send_welcome_email [Boolean] Whether a welcome email was sent to the user. This value will only be populated
      end
    end
  end
end
