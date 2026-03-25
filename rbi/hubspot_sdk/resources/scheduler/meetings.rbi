# typed: strong

module HubspotSDK
  module Resources
    class Scheduler
      class Meetings
        sig { returns(HubspotSDK::Resources::Scheduler::Meetings::Advanced) }
        attr_reader :advanced

        sig { returns(HubspotSDK::Resources::Scheduler::Meetings::Basic) }
        attr_reader :basic

        # @api private
        sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
