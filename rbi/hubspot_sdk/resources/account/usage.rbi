# typed: strong

module HubspotSDK
  module Resources
    class Account
      class Usage
        # Retrieve the daily API usage for private apps in the account, along with
        # information about usage limits.
        sig do
          params(request_options: HubspotSDK::RequestOptions::OrHash).returns(
            HubspotSDK::Account::CollectionResponseAPIUsage
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
end
