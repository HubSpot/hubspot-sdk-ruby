# typed: strong

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        sig { returns(HubspotSDK::Resources::Scheduler::Meetings::Calendar) }
        attr_reader :calendar

        sig do
          returns(HubspotSDK::Resources::Scheduler::Meetings::MeetingsLinks)
        end
        attr_reader :meetings_links

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
