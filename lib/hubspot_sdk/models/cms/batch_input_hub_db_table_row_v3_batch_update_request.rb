# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowV3BatchUpdateRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Cms::HubDBTableRowV3BatchUpdateRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3BatchUpdateRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowV3BatchUpdateRequest>]
      end
    end
  end
end
