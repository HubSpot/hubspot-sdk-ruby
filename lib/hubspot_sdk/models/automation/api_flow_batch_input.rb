# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class APIFlowBatchInput < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Automation::APIFlowBatchFetchFlowIDCoordinate>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::APIFlowBatchFetchFlowIDCoordinate] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Automation::APIFlowBatchFetchFlowIDCoordinate>]
      end
    end
  end
end
