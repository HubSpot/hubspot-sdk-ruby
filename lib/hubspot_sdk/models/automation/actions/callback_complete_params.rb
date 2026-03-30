# frozen_string_literal: true

module HubspotSDK
  module Models
    module Automation
      module Actions
        # @see HubspotSDK::Resources::Automation::Actions::Callbacks#complete
        class CallbackCompleteParams < HubspotSDK::Models::Automation::CallbackCompletionRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute callback_id
          #
          #   @return [String]
          required :callback_id, String

          # @!method initialize(callback_id:, request_options: {})
          #   @param callback_id [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
