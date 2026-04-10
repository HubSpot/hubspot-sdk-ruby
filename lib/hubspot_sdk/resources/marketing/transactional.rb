# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Marketing
      class Transactional
        # @return [HubSpotSDK::Resources::Marketing::Transactional::SingleEmail]
        attr_reader :single_email

        # @return [HubSpotSDK::Resources::Marketing::Transactional::SmtpTokens]
        attr_reader :smtp_tokens

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @single_email = HubSpotSDK::Resources::Marketing::Transactional::SingleEmail.new(client: client)
          @smtp_tokens = HubSpotSDK::Resources::Marketing::Transactional::SmtpTokens.new(client: client)
        end
      end
    end
  end
end
