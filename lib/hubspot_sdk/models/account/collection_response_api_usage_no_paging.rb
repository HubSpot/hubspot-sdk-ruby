# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Account
      # @see HubSpotSDK::Resources::Account#get_daily_private_apps_usage
      class CollectionResponseAPIUsageNoPaging < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Account::APIUsage>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Account::APIUsage] }

        # @!method initialize(results:)
        #   @param results [Array<HubSpotSDK::Models::Account::APIUsage>]
      end
    end
  end
end
