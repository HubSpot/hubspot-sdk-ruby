# typed: strong

module HubspotSDK
  module Resources
    class Account
      sig { returns(HubspotSDK::Resources::Account::Activity) }
      attr_reader :activity

      sig { returns(HubspotSDK::Resources::Account::Details) }
      attr_reader :details

      sig { returns(HubspotSDK::Resources::Account::Usage) }
      attr_reader :usage

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
