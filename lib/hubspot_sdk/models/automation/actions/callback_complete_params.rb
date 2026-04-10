# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Automation
      module Actions
        # @see HubSpotSDK::Resources::Automation::Actions::Callbacks#complete
        class CallbackCompleteParams < HubSpotSDK::Models::Automation::CallbackCompletionRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          # @!attribute callback_id
          #
          #   @return [String]
          required :callback_id, String

          # @!method initialize(callback_id:, request_options: {})
          #   @param callback_id [String]
          #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
