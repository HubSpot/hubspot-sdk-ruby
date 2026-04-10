# typed: strong

module HubSpotSDK
  module Resources
    class Scheduler
      class Meetings
        sig { returns(HubSpotSDK::Resources::Scheduler::Meetings::Advanced) }
        attr_reader :advanced

        sig { returns(HubSpotSDK::Resources::Scheduler::Meetings::Basic) }
        attr_reader :basic

        # @api private
        sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
        def self.new(client:)
        end
      end
    end
  end
end
