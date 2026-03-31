# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @type [HubspotSDK::Internal::Type::Converter]
      WebhookGetFiltersBySubscriptionResponse =
        HubspotSDK::Internal::Type::ArrayOf[-> { HubspotSDK::Webhooks::FilterResponse }]
    end
  end
end
