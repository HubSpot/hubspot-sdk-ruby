# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      class MarketingEventEmailSubscriber < HubspotSDK::Internal::Type::BaseModel
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

        # @!attribute contact_properties
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :contact_properties, HubspotSDK::Internal::Type::HashOf[String], api_name: :contactProperties

        # @!attribute properties
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :properties, HubspotSDK::Internal::Type::HashOf[String]

        # @!method initialize(email:, interaction_date_time:, contact_properties: nil, properties: nil)
        #   @param email [String] The email address of the contact in HubSpot to associate with the event.
        #
        #   @param interaction_date_time [Integer] Timestamp in milliseconds at which the contact subscribed to the event.
        #
        #   @param contact_properties [Hash{Symbol=>String}]
        #
        #   @param properties [Hash{Symbol=>String}]
      end
    end
  end
end
