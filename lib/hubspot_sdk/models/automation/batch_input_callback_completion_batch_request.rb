# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      class BatchInputCallbackCompletionBatchRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Automation::CallbackCompletionBatchRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Automation::CallbackCompletionBatchRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Automation::CallbackCompletionBatchRequest>]
      end
    end
  end
end
