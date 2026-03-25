# typed: strong

module HubspotSDK
  module Resources
    class Auth
      sig { returns(HubspotSDK::Resources::Auth::OAuth) }
      attr_reader :oauth

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
