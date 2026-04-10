# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      module Actions
        # @see HubSpotSDK::Resources::Automation::Actions::Callbacks#complete_batch
        class CallbackCompleteBatchParams < HubSpotSDK::Models::Automation::BatchInputCallbackCompletionBatchRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
