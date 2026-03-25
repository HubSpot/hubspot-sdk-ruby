# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Events
      # @return [HubspotSDK::Resources::Events::Send]
      attr_reader :send_

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @send_ = HubspotSDK::Resources::Events::Send.new(client: client)
      end
    end
  end
end
