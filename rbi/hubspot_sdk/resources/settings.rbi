# typed: strong

module HubspotSDK
  module Resources
    class Settings
      sig { returns(HubspotSDK::Resources::Settings::Currencies) }
      attr_reader :currencies

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
