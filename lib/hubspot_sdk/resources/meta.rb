# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Meta
      # @return [HubSpotSDK::Resources::Meta::Origins]
      attr_reader :origins

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @origins = HubSpotSDK::Resources::Meta::Origins.new(client: client)
      end
    end
  end
end
