# frozen_string_literal: true

module HubSpotSDK
  module Resources
    class Account
      # @return [HubSpotSDK::Resources::Account::Activity]
      attr_reader :activity

      # Retrieve account details such as the account type, time zone, currencies, and
      # data hosting location.
      #
      # @overload get(request_options: {})
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Account::PortalInformationResponse]
      #
      # @see HubSpotSDK::Models::Account::AccountGetParams
      def get(params = {})
        @client.request(
          method: :get,
          path: "account-info/2026-03/details",
          model: HubSpotSDK::Account::PortalInformationResponse,
          options: params[:request_options]
        )
      end

      # Retrieve the daily API usage for private apps in the account, along with
      # information about usage limits.
      #
      # @overload get_daily_private_apps_usage(request_options: {})
      #
      # @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubSpotSDK::Models::Account::CollectionResponseAPIUsageNoPaging]
      #
      # @see HubSpotSDK::Models::Account::AccountGetDailyPrivateAppsUsageParams
      def get_daily_private_apps_usage(params = {})
        @client.request(
          method: :get,
          path: "account-info/2026-03/api-usage/daily/private-apps",
          model: HubSpotSDK::Account::CollectionResponseAPIUsageNoPaging,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [HubSpotSDK::Client]
      def initialize(client:)
        @client = client
        @activity = HubSpotSDK::Resources::Account::Activity.new(client: client)
      end
    end
  end
end
