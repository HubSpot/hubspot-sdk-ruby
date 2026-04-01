# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchInputPropertyCreate < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Crm::PropertyCreate>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::PropertyCreate] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Crm::PropertyCreate>]
      end
    end
  end
end
