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
        #
        #   @return [HubspotSDK::Models::Paging, nil]
        optional :paging, -> { HubspotSDK::Paging }

        # @!method initialize(results:, paging: nil)
        #   @param results [Array<HubspotSDK::Models::Automation::APIFlowEmailCampaign>]
        #   @param paging [HubspotSDK::Models::Paging]
      end
    end
  end
end
