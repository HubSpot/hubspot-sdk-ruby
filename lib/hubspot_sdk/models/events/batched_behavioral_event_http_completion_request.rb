# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      class BatchedBehavioralEventHTTPCompletionRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute inputs
        #
        #   @return [Array<HubspotSDK::Models::Events::BehavioralEventHTTPCompletionRequest>]
        required :inputs,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Events::BehavioralEventHTTPCompletionRequest] }

        # @!method initialize(inputs:)
        #   @param inputs [Array<HubspotSDK::Models::Events::BehavioralEventHTTPCompletionRequest>]
      end
    end
  end
end
