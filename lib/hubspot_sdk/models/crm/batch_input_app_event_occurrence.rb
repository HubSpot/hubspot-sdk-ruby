# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputAppEventOccurrence < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::AppEventOccurrence>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::AppEventOccurrence] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::AppEventOccurrence>]
      end
    end
  end
end
