# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      class BatchedBehavioralEventHTTPCompletionRequest < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubSpotSDK::Models::Events::BehavioralEventHTTPCompletionRequest>]
        required :inputs,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Events::BehavioralEventHTTPCompletionRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubSpotSDK::Models::Events::BehavioralEventHTTPCompletionRequest>]
      end
    end
  end
end
