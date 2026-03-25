# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        # @return [HubspotSDK::Resources::Scheduler::Meetings::Advanced]
        attr_reader :advanced

        # @return [HubspotSDK::Resources::Scheduler::Meetings::Basic]
        attr_reader :basic

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @advanced = HubspotSDK::Resources::Scheduler::Meetings::Advanced.new(client: client)
          @basic = HubspotSDK::Resources::Scheduler::Meetings::Basic.new(client: client)
        end
      end
    end
  end
end
