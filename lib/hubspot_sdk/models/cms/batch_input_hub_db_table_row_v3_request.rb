# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowV3Request < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Cms::HubDBTableRowV3Request>]
        required :inputs, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::HubDBTableRowV3Request] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Cms::HubDBTableRowV3Request>]
      end
    end
  end
end
