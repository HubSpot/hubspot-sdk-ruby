# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#create_subscription_filter
      class FilterCreateResponse < HubSpotSDK::Internal::Type::BaseModel
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
