# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Account
      class Usage
        # Retrieve the daily API usage for private apps in the account, along with
        # information about usage limits.
        #
        # @overload get_daily_private_apps_usage(request_options: {})
        #
        # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
        #
        # @return [HubspotSDK::Models::Account::CollectionResponseAPIUsage]
        #
        # @see HubspotSDK::Models::Account::UsageGetDailyPrivateAppsUsageParams
        def get_daily_private_apps_usage(params = {})
          @client.request(
            method: :get,
            path: "account-info/v3/api-usage/daily/private-apps",
            model: HubspotSDK::Account::CollectionResponseAPIUsage,
            options: params[:request_options]
          )
        end

        # @api private
        #
        # @param client [HubspotSDK::Client]
        def initialize(client:)
          @client = client
        end
      end
    end
  end
end
