# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#create_subscription_filter
      class FilterCreateResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute filter_id
        #   The unique identifier for the created filter. It is an integer formatted as
        #   int64.
        #
        #   @return [Integer]
        required :filter_id, Integer, api_name: :filterId

        # @!method initialize(filter_id:)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::FilterCreateResponse} for more details.
        #
        #   @param filter_id [Integer] The unique identifier for the created filter. It is an integer formatted as int6
      end
    end
  end
end
