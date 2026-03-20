# typed: strong

module HubspotSDK
  module Resources
    class Crm
      sig { returns(HubspotSDK::Resources::Crm::Objects) }
      attr_reader :objects

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
