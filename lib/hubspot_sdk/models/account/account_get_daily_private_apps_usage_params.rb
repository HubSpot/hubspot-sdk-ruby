# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Account
      # @see HubSpotSDK::Resources::Account#get_daily_private_apps_usage
      class AccountGetDailyPrivateAppsUsageParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
