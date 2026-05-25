# frozen_string_literal: true

module HubSpotSDK
  module Models
    module WebhooksJournal
      module Subscriptions
        # @type [HubSpotSDK::Internal::Type::Converter]
        FilterListResponse = HubSpotSDK::Internal::Type::ArrayOf[-> { HubSpotSDK::FilterResponse }]
      end
    end
  end
end
