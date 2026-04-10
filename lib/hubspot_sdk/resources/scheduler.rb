# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Scheduler
      # @return [HubSpotSDK::Resources::Scheduler::Meetings]
      attr_reader :meetings

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @meetings = HubSpotSDK::Resources::Scheduler::Meetings.new(client: client)
      end
    end
  end
end
