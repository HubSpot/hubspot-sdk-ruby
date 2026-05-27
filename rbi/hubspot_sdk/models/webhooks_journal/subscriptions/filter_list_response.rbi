# typed: strong

module HubSpotSDK
  module Models
    module WebhooksJournal
      module Subscriptions
        FilterListResponse =
          T.let(
            HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::FilterResponse],
            HubSpotSDK::Internal::Type::Converter
          )
      end
    end
  end
end
