# typed: strong

module HubspotSDK
  module Resources
    class Events
      sig { returns(HubspotSDK::Resources::Events::Send) }
      attr_reader :send_

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
