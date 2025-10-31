# typed: strong

module HubspotSDK
  module Resources
    class Automation
      sig { returns(HubspotSDK::Resources::Automation::Actions) }
      attr_reader :actions

      sig { returns(HubspotSDK::Resources::Automation::Sequences) }
      attr_reader :sequences

      sig { returns(HubspotSDK::Resources::Automation::Workflows) }
      attr_reader :workflows

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
