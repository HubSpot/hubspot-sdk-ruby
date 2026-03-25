# typed: strong

module HubspotSDK
  module Resources
    class Scheduler
      sig { returns(HubspotSDK::Resources::Scheduler::Meetings) }
      attr_reader :meetings

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
