# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventSubscriber < HubspotSDK::Internal::Type::BaseModel
        # @!attribute interaction_date_time
        #   Timestamp in milliseconds at which the contact subscribed to the event.
        #
        #   @return [Integer]
        required :interaction_date_time, Integer, api_name: :interactionDateTime

        # @!attribute properties
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute vid
        #
        #   @return [Integer]
        required :vid, Integer

        # @!method initialize(interaction_date_time:, properties:, vid:)
        #   @param interaction_date_time [Integer] Timestamp in milliseconds at which the contact subscribed to the event.
        #
        #   @param properties [Hash{Symbol=>String}]
        #
        #   @param vid [Integer]
      end
    end

    MarketingEventSubscriber = Marketing::MarketingEventSubscriber
  end
end
