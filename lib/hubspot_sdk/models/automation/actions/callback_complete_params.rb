# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      module Actions
        # @see HubspotSDK::Resources::Automation::Actions::Callbacks#complete
        class CallbackCompleteParams < HubspotSDK::Models::Automation::CallbackCompletionRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!method initialize(request_options: {})
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
