# frozen_string_literal: true

module HubspotSDK
  module Models
    module Events
      # @see HubspotSDK::Resources::Events::Definitions#send_batch
      class DefinitionSendBatchParams < HubspotSDK::Models::Events::BatchedBehavioralEventHTTPCompletionRequest
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!method initialize(request_options: {})
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
      end
    end
  end
end
