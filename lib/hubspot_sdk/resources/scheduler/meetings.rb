# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Scheduler
      class Meetings
        # @return [HubSpotSDK::Resources::Scheduler::Meetings::Advanced]
        attr_reader :advanced

        # @return [HubSpotSDK::Resources::Scheduler::Meetings::Basic]
        attr_reader :basic

        # @api private
        #
        # @param client [HubSpotSDK::Client]
        def initialize(client:)
          @client = client
          @advanced = HubSpotSDK::Resources::Scheduler::Meetings::Advanced.new(client: client)
          @basic = HubSpotSDK::Resources::Scheduler::Meetings::Basic.new(client: client)
        end
      end
    end
  end
end
