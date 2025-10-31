# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        # @return [HubspotSDK::Resources::Scheduler::Meetings::Calendar]
        attr_reader :calendar

        # @return [HubspotSDK::Resources::Scheduler::Meetings::MeetingsLinks]
        attr_reader :meetings_links

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
          @calendar = HubspotSDK::Resources::Scheduler::Meetings::Calendar.new(client: client)
          @meetings_links = HubspotSDK::Resources::Scheduler::Meetings::MeetingsLinks.new(client: client)
        end
      end
    end
  end
end
