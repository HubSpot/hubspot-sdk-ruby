# typed: strong

module HubSpotSDK
  module Resources
    class Auth
      sig { returns(HubSpotSDK::Resources::Auth::OAuth) }
      attr_reader :oauth

      # @api private
      sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
