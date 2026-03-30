# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputAppEventOccurrence < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::AppEventOccurrence>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::AppEventOccurrence] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::AppEventOccurrence>]
      end
    end
  end
end
