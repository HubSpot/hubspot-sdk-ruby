# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class EmailFieldValidation < HubspotSDK::Internal::Type::BaseModel
        # @!attribute blocked_email_domains
        #   A list of email domains to block.
        #
        #   @return [Array<String>]
        required :blocked_email_domains,
                 HubspotSDK::Internal::Type::ArrayOf[String],
                 api_name: :blockedEmailDomains

        # @!attribute use_default_block_list
        #   Whether to block the free email providers.
        #
        #   @return [Boolean]
        required :use_default_block_list, HubspotSDK::Internal::Type::Boolean, api_name: :useDefaultBlockList

        # @!method initialize(blocked_email_domains:, use_default_block_list:)
        #   Describes how an email address should be validated.
        #
        #   @param blocked_email_domains [Array<String>] A list of email domains to block.
        #
        #   @param use_default_block_list [Boolean] Whether to block the free email providers.
      end
    end
  end
end
