# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowBatchCloneRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Cms::HubDBTableRowBatchCloneRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::HubDBTableRowBatchCloneRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Cms::HubDBTableRowBatchCloneRequest>]
      end
    end
  end
end
