# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      # @see HubspotSDK::Resources::Account#get_daily_private_apps_usage
      class CollectionResponseAPIUsageNoPaging < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Account::APIUsage>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Account::APIUsage] }

        # @!method initialize(results:)
        #   @param results [Array<HubspotSDK::Models::Account::APIUsage>]
      end
    end
  end
end
