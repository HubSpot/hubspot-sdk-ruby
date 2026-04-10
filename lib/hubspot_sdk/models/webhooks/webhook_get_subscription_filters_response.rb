# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @type [HubSpotSDK::Internal::Type::Converter]
      WebhookGetSubscriptionFiltersResponse =
        HubSpotSDK::Internal::Type::ArrayOf[-> { HubSpotSDK::Webhooks::FilterResponse }]
    end
  end
end
