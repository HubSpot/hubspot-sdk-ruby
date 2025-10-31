# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      module APIFlowPutRequest
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Automation::APIContactFlowPutRequest }

        variant -> { HubspotSDK::Automation::APIPlatformFlowPutRequest }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Automation::APIContactFlowPutRequest, HubspotSDK::Models::Automation::APIPlatformFlowPutRequest)]
      end
    end
  end
end
