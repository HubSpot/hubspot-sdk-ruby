# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchInputHubDBTableRowBatchCloneRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Cms::HubDBTableRowBatchCloneRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowBatchCloneRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Cms::HubDBTableRowBatchCloneRequest>]
      end
    end
  end
end
