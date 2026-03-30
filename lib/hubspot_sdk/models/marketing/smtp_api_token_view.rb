# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class SmtpAPITokenView < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #   User name to log into the HubSpot SMTP server.
        #
        #   @return [String]
        required :id, String

        # @!attribute campaign_name
        #   A name for the campaign tied to the token.
        #
        #   @return [String]
        required :campaign_name, String, api_name: :campaignName

        # @!attribute create_contact
        #   Indicates whether a contact should be created for email recipients.
        #
        #   @return [Boolean]
        required :create_contact, HubspotSDK::Internal::Type::Boolean, api_name: :createContact

        # @!attribute created_at
        #   Timestamp generated when a token is created.
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute created_by
        #   Email address of the user that sent the token creation request.
        #
        #   @return [String]
        required :created_by, String, api_name: :createdBy

        # @!attribute email_campaign_id
        #   Identifier assigned to the campaign provided in the token creation request.
        #
        #   @return [String]
        required :email_campaign_id, String, api_name: :emailCampaignId

        # @!attribute password
        #   Password used to log into the HubSpot SMTP server.
        #
        #   @return [String, nil]
        optional :password, String

        # @!method initialize(id:, campaign_name:, create_contact:, created_at:, created_by:, email_campaign_id:, password: nil)
        #   @param id [String] User name to log into the HubSpot SMTP server.
        #
        #   @param campaign_name [String] A name for the campaign tied to the token.
        #
        #   @param create_contact [Boolean] Indicates whether a contact should be created for email recipients.
        #
        #   @param created_at [Time] Timestamp generated when a token is created.
        #
        #   @param created_by [String] Email address of the user that sent the token creation request.
        #
        #   @param email_campaign_id [String] Identifier assigned to the campaign provided in the token creation request.
        #
        #   @param password [String] Password used to log into the HubSpot SMTP server.
      end
    end
  end
end
