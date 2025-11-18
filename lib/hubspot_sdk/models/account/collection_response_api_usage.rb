# frozen_string_literal: true

module HubspotSDK
  module Models
    module Account
      class CollectionResponseAPIUsage < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Account::APIUsage>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Account::APIUsage] }

        # @!attribute paging
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Account::APIUsage>]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
