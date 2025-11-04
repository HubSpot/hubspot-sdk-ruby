# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class CollectionResponseAPIFlowEmailCampaign < HubspotSDK::Internal::Type::BaseModel
        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIFlowEmailCampaign>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIFlowEmailCampaign] }

        # @!attribute paging
        #   Contains information pagination of results.
        #
        #   @return [HubspotSDK::Models::Marketing::EmailsPaging, nil]
        optional :paging, -> { HubspotSDK::Marketing::EmailsPaging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Automation::APIFlowEmailCampaign>]
        #
        #   @param paging [HubspotSDK::Models::Marketing::EmailsPaging] Contains information pagination of results.
      end
    end
  end
end
