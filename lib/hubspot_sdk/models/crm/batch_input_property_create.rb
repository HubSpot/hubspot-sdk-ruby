# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchInputPropertyCreate < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Crm::PropertyCreate>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::PropertyCreate] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Crm::PropertyCreate>]
      end
    end
  end
end
