# typed: strong

module HubspotSDK
  module Resources
    class Automation
      sig { returns(HubspotSDK::Resources::Automation::Actions) }
      attr_reader :actions

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
