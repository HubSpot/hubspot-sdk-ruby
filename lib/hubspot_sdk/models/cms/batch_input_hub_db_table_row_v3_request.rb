# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowV3Request < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Cms::HubDBTableRowV3Request>]
        required :inputs, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3Request] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowV3Request>]
      end
    end
  end
end
