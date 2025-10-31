# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      module APIFlowCreateRequest
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Automation::APIContactFlowCreateRequest }

        variant -> { HubspotSDK::Automation::APIPlatformFlowCreateRequest }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Automation::APIContactFlowCreateRequest, HubspotSDK::Models::Automation::APIPlatformFlowCreateRequest)]
      end
    end
  end
end
