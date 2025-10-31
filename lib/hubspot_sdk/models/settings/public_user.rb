# frozen_string_literal: true

module HubspotSDK
  module Models
    module Settings
      # @see HubspotSDK::Resources::Settings::Users#create
      class PublicUser < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   The user's unique ID
        #
        #   @return [String]
        required :id, String

        # @!attribute email
        #   The user's email
        #
        #   @return [String]
        required :email, String

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

        # @!attribute role_ids
        #
        #   @return [Array<String>, nil]
        optional :role_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :roleIds

        # @!attribute secondary_team_ids
        #   The user's additional teams
        #
        #   @return [Array<String>, nil]
        optional :secondary_team_ids, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :secondaryTeamIds

        # @!attribute send_welcome_email
        #
        #   @return [Boolean, nil]
        optional :send_welcome_email, HubspotSDK::Internal::Type::Boolean, api_name: :sendWelcomeEmail

        # @!attribute super_admin
        #
        #   @return [Boolean, nil]
        optional :super_admin, HubspotSDK::Internal::Type::Boolean, api_name: :superAdmin

        # @!method initialize(id:, email:, first_name: nil, last_name: nil, primary_team_id: nil, role_id: nil, role_ids: nil, secondary_team_ids: nil, send_welcome_email: nil, super_admin: nil)
        #   A user
        #
        #   @param id [String] The user's unique ID
        #
        #   @param email [String] The user's email
        #
        #   @param first_name [String]
        #
        #   @param last_name [String]
        #
        #   @param primary_team_id [String] The user's primary team
        #
        #   @param role_id [String] The user's role
        #
        #   @param role_ids [Array<String>]
        #
        #   @param secondary_team_ids [Array<String>] The user's additional teams
        #
        #   @param send_welcome_email [Boolean]
        #
        #   @param super_admin [Boolean]
      end
    end
  end
end
