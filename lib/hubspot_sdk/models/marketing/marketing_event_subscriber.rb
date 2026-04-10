# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      class MarketingEventSubscriber < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute interaction_date_time
        #   Timestamp in milliseconds at which the contact subscribed to the event.
        #
        #   @return [Integer]
        required :interaction_date_time, Integer, api_name: :interactionDateTime

        # @!attribute properties
        #   The key-value set of the properties of the contact
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute vid
        #   The ID of the contact in HubSpot
        #
        #   @return [Integer]
        required :vid, Integer

        # @!method initialize(interaction_date_time:, properties:, vid:)
        #   @param interaction_date_time [Integer] Timestamp in milliseconds at which the contact subscribed to the event.
        #
        #   @param properties [Hash{Symbol=>String}] The key-value set of the properties of the contact
        #
        #   @param vid [Integer] The ID of the contact in HubSpot
      end
    end

    MarketingEventSubscriber = Marketing::MarketingEventSubscriber
  end
end
