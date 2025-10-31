# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class PublicSingleSendEmail < HubspotSDK::Internal::Type::BaseModel
        # @!attribute to
        #   The recipient of the email.
        #
        #   @return [String]
        required :to, String

        # @!attribute bcc
        #   List of email addresses to send as Bcc.
        #
        #   @return [Array<String>, nil]
        optional :bcc, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute cc
        #   List of email addresses to send as Cc.
        #
        #   @return [Array<String>, nil]
        optional :cc, HubspotSDK::Internal::Type::ArrayOf[String]

        # @!attribute from
        #   The From header for the email.
        #
        #   @return [String, nil]
        optional :from, String

        # @!attribute reply_to
        #   List of Reply-To header values for the email.
        #
        #   @return [Array<String>, nil]
        optional :reply_to, HubspotSDK::Internal::Type::ArrayOf[String], api_name: :replyTo

        # @!attribute send_id
        #   ID for a particular send. No more than one email will be sent per sendId.
        #
        #   @return [String, nil]
        optional :send_id, String, api_name: :sendId

        # @!method initialize(to:, bcc: nil, cc: nil, from: nil, reply_to: nil, send_id: nil)
        #   A JSON object containing anything you want to override.
        #
        #   @param to [String] The recipient of the email.
        #
        #   @param bcc [Array<String>] List of email addresses to send as Bcc.
        #
        #   @param cc [Array<String>] List of email addresses to send as Cc.
        #
        #   @param from [String] The From header for the email.
        #
        #   @param reply_to [Array<String>] List of Reply-To header values for the email.
        #
        #   @param send_id [String] ID for a particular send. No more than one email will be sent per sendId.
      end
    end
  end
end
