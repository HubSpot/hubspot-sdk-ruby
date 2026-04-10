# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      class BatchInputCallbackCompletionBatchRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Automation::CallbackCompletionBatchRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Automation::CallbackCompletionBatchRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Automation::CallbackCompletionBatchRequest>]
      end
    end
  end
end
