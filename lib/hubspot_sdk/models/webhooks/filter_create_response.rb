# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks::WebhookSubscriptions#create_subscription_filter
      class FilterCreateResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute filter_id
        #
        #   @return [Integer]
        required :filter_id, Integer, api_name: :filterId

        # @!method initialize(filter_id:)
        #   @param filter_id [Integer]
      end
    end
  end
end
