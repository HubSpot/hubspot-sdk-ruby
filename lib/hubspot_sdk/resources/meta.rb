# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Meta
      # @return [HubspotSDK::Resources::Meta::Origins]
      attr_reader :origins

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @origins = HubspotSDK::Resources::Meta::Origins.new(client: client)
      end
    end
  end
end
