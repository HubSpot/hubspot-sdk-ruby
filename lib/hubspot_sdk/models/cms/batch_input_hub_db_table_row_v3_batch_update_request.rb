# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowV3BatchUpdateRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Cms::HubDBTableRowV3BatchUpdateRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::HubDBTableRowV3BatchUpdateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Cms::HubDBTableRowV3BatchUpdateRequest>]
      end
    end
  end
end
