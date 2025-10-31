# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class SmtpAPITokenRequestEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute campaign_name
        #   A name for the campaign tied to the SMTP API token.
        #
        #   @return [String]
        required :campaign_name, String, api_name: :campaignName

        # @!attribute create_contact
        #   Indicates whether a contact should be created for email recipients.
        #
        #   @return [Boolean]
        required :create_contact, HubspotSDK::Internal::Type::Boolean, api_name: :createContact

        # @!method initialize(campaign_name:, create_contact:)
        #   A request object to create a SMTP API token
        #
        #   @param campaign_name [String] A name for the campaign tied to the SMTP API token.
        #
        #   @param create_contact [Boolean] Indicates whether a contact should be created for email recipients.
      end
    end
  end
end
