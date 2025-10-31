# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Scheduler
      # @return [HubspotSDK::Resources::Scheduler::Meetings]
      attr_reader :meetings

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @meetings = HubspotSDK::Resources::Scheduler::Meetings.new(client: client)
      end
    end
  end
end
