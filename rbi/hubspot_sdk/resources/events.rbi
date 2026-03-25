# typed: strong

module HubspotSDK
  module Resources
    class Events
      sig { returns(HubspotSDK::Resources::Events::Definitions) }
      attr_reader :definitions

      sig { returns(HubspotSDK::Resources::Events::Occurrences) }
      attr_reader :occurrences

      sig { returns(HubspotSDK::Resources::Events::Send) }
      attr_reader :send_

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
