# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventEmailSubscriber < HubspotSDK::Internal::Type::BaseModel
        # @!attribute contact_properties
        #
        #   @return [Hash{Symbol=>String}]
        required :contact_properties, HubspotSDK::Internal::Type::HashOf[String], api_name: :contactProperties

        # @!attribute email
        #   The email address of the contact in HubSpot to associate with the event.
        #
        #   @return [String]
        required :email, String

        # @!attribute interaction_date_time
        #   Timestamp in milliseconds at which the contact subscribed to the event.
        #
        #   @return [Integer]
        required :interaction_date_time, Integer, api_name: :interactionDateTime

        # @!attribute properties
        #
        #   @return [Hash{Symbol=>String}]
        required :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!method initialize(contact_properties:, email:, interaction_date_time:, properties:)
        #   @param contact_properties [Hash{Symbol=>String}]
        #
        #   @param email [String] The email address of the contact in HubSpot to associate with the event.
        #
        #   @param interaction_date_time [Integer] Timestamp in milliseconds at which the contact subscribed to the event.
        #
        #   @param properties [Hash{Symbol=>String}]
      end
    end

    MarketingEventEmailSubscriber = Marketing::MarketingEventEmailSubscriber
  end
end
