# typed: strong

module HubSpotSDK
  module Models
    module Webhooks
      WebhookListSubscriptionFiltersResponse =
        T.let(
          HubSpotSDK::Internal::Type::ArrayOf[
            HubSpotSDK::Webhooks::FilterResponse
          ],
          HubSpotSDK::Internal::Type::Converter
        )
    end
  end
end
