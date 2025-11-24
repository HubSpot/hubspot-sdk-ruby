# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class PauseSubscriptionRequest < HubspotSDK::Internal::Type::BaseModel
        # @!attribute pause_reason
        #
        #   @return [String, nil]
        optional :pause_reason, String, api_name: :pauseReason

        # @!method initialize(pause_reason: nil)
        #   @param pause_reason [String]
      end
    end
  end
end
