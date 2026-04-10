# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Events
      # @see HubSpotSDK::Resources::Events::Send#batch_send
      class SendBatchSendParams < HubSpotSDK::Models::Events::BatchedBehavioralEventHTTPCompletionRequest
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
