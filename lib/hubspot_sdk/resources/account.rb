# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Account
      # @return [HubspotSDK::Resources::Account::Activity]
      attr_reader :activity

      # Retrieve account details such as the account type, time zone, currencies, and
      # data hosting location.
      #
      # @overload get(request_options: {})
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::Account::PortalInformationResponse]
      #
      # @see HubspotSDK::Models::Account::AccountGetParams
      def get(params = {})
        @client.request(
          method: :get,
          path: "account-info/2026-03/details",
          model: HubspotSDK::Account::PortalInformationResponse,
          options: params[:request_options]
        )
      end

      # Retrieve the daily API usage for private apps in the account, along with
      # information about usage limits.
      #
      # @overload get_daily_private_apps_usage(request_options: {})
      #
      # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
      #
      # @return [HubspotSDK::Models::Account::CollectionResponseAPIUsageNoPaging]
      #
      # @see HubspotSDK::Models::Account::AccountGetDailyPrivateAppsUsageParams
      def get_daily_private_apps_usage(params = {})
        @client.request(
          method: :get,
          path: "account-info/2026-03/api-usage/daily/private-apps",
          model: HubspotSDK::Account::CollectionResponseAPIUsageNoPaging,
          options: params[:request_options]
        )
      end

      # @api private
      #
      # @param client [HubspotSDK::Client]
      def initialize(client:)
        @client = client
        @activity = HubspotSDK::Resources::Account::Activity.new(client: client)
      end
    end
  end
end
