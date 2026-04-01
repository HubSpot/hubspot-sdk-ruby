# typed: strong

module HubspotSDK
  module Models
    module Webhooks
      WebhookGetSubscriptionFilterForSubscriptionResponse =
        T.let(
          HubspotSDK::Internal::Type::ArrayOf[
            HubspotSDK::Webhooks::FilterResponse
          ],
          HubspotSDK::Internal::Type::Converter
        )
    end
  end
end
