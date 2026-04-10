# typed: strong

module HubSpotSDK
  module Resources
    class Scheduler
      sig { returns(HubSpotSDK::Resources::Scheduler::Meetings) }
      attr_reader :meetings

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
