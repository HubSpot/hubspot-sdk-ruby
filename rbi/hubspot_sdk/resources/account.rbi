# typed: strong

module HubspotSDK
  module Resources
    class Account
      sig { returns(HubspotSDK::Resources::Account::Activity) }
      attr_reader :activity

      # Retrieve account details such as the account type, time zone, currencies, and
      # data hosting location.
      sig do
        params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
          HubspotSDK::Account::PortalInformationResponse
        )
      end
      def get(request_options: {})
      end

      # Retrieve the daily API usage for private apps in the account, along with
      # information about usage limits.
      sig do
        params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
          HubspotSDK::Account::CollectionResponseAPIUsageNoPaging
        )
      end
      def get_daily_private_apps_usage(request_options: {})
      end

      # @api private
      sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
      def self.new(client:)
      end
    end
  end
end
