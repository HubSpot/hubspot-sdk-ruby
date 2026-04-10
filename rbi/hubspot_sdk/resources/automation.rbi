# typed: strong

module HubSpotSDK
  module Resources
    class Automation
      sig { returns(HubSpotSDK::Resources::Automation::Actions) }
      attr_reader :actions

      sig { returns(HubSpotSDK::Resources::Automation::Sequences) }
      attr_reader :sequences

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
