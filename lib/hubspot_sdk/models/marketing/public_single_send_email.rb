# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class PublicSingleSendEmail < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute bcc
        #   List of email addresses to send as Bcc.
        #
        #   @return [Array<String>]
        required :bcc, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute cc
        #   List of email addresses to send as Cc.
        #
        #   @return [Array<String>]
        required :cc, HubSpotSDK::Internal::Type::ArrayOf[String]

        # @!attribute reply_to
        #   List of Reply-To header values for the email.
        #
        #   @return [Array<String>]
        required :reply_to, HubSpotSDK::Internal::Type::ArrayOf[String], api_name: :replyTo

        # @!attribute from
        #   The From header for the email.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute send_id
        #   ID for a particular send. No more than one email will be sent per sendId.
        #
        #   @return [String, nil]
        optional :send_id, String, api_name: :sendId

        # @!attribute to
        #   The recipient of the email.
        #
        #   @return [String, nil]
        optional :to, String

        # @!method initialize(bcc:, cc:, reply_to:, from: nil, send_id: nil, to: nil)
        #   @param bcc [Array<String>] List of email addresses to send as Bcc.
        #
        #   @param cc [Array<String>] List of email addresses to send as Cc.
        #
        #   @param reply_to [Array<String>] List of Reply-To header values for the email.
        #
        #   @param from [String] The From header for the email.
        #
        #   @param send_id [String] ID for a particular send. No more than one email will be sent per sendId.
        #
        #   @param to [String] The recipient of the email.
      end
    end
  end
end
