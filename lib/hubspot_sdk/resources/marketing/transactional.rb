# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Transactional
        # @return [HubspotSDK::Resources::Marketing::Transactional::SingleEmail]
        attr_reader :single_email

        # @return [HubspotSDK::Resources::Marketing::Transactional::SmtpTokens]
        attr_reader :smtp_tokens

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @single_email = HubspotSDK::Resources::Marketing::Transactional::SingleEmail.new(client: client)
          @smtp_tokens = HubspotSDK::Resources::Marketing::Transactional::SmtpTokens.new(client: client)
        end
      end
    end
  end
end
