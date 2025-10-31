# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      # @see HubspotSDK::Resources::Automation::Workflows#create
      module APIFlow
        extend HubspotSDK::Internal::Type::Union

        variant -> { HubspotSDK::Automation::APIContactFlow }

        variant -> { HubspotSDK::Automation::APIPlatformFlow }

        # @!method self.variants
        #   @return [Array(HubspotSDK::Models::Automation::APIContactFlow, HubspotSDK::Models::Automation::APIPlatformFlow)]
      end
    end
  end
end
