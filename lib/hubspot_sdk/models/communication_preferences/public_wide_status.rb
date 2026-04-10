# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class PublicWideStatus < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute channel
        #   The type of communication channel, with 'EMAIL' as the only supported option.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicWideStatus::Channel]
        required :channel, enum: -> { HubSpotSDK::CommunicationPreferences::PublicWideStatus::Channel }

        # @!attribute status
        #   The subscription status of the contact, which can be 'SUBSCRIBED',
        #   'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicWideStatus::Status]
        required :status, enum: -> { HubSpotSDK::CommunicationPreferences::PublicWideStatus::Status }

        # @!attribute subscriber_id_string
        #   The email address of the contact.
        #
        #   @return [String]
        required :subscriber_id_string, String, api_name: :subscriberIdString

        # @!attribute timestamp
        #   The date and time when the status was recorded.
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute wide_status_type
        #   The type of wide status, which can be 'PORTAL_WIDE' or 'BUSINESS_UNIT_WIDE'.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicWideStatus::WideStatusType]
        required :wide_status_type,
                 enum: -> { HubSpotSDK::CommunicationPreferences::PublicWideStatus::WideStatusType },
                 api_name: :wideStatusType

        # @!attribute business_unit_id
        #   The ID of the business unit associated with the status.
        #
        #   @return [Integer, nil]
        optional :business_unit_id, Integer, api_name: :businessUnitId

        # @!method initialize(channel:, status:, subscriber_id_string:, timestamp:, wide_status_type:, business_unit_id: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::CommunicationPreferences::PublicWideStatus} for more
        #   details.
        #
        #   @param channel [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicWideStatus::Channel] The type of communication channel, with 'EMAIL' as the only supported option.
        #
        #   @param status [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicWideStatus::Status] The subscription status of the contact, which can be 'SUBSCRIBED', 'UNSUBSCRIBED
        #
        #   @param subscriber_id_string [String] The email address of the contact.
        #
        #   @param timestamp [Time] The date and time when the status was recorded.
        #
        #   @param wide_status_type [Symbol, HubSpotSDK::Models::CommunicationPreferences::PublicWideStatus::WideStatusType] The type of wide status, which can be 'PORTAL_WIDE' or 'BUSINESS_UNIT_WIDE'.
        #
        #   @param business_unit_id [Integer] The ID of the business unit associated with the status.

        # The type of communication channel, with 'EMAIL' as the only supported option.
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::PublicWideStatus#channel
        module Channel
          extend HubSpotSDK::Internal::Type::Enum

          EMAIL = :EMAIL

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The subscription status of the contact, which can be 'SUBSCRIBED',
        # 'UNSUBSCRIBED', or 'NOT_SPECIFIED'.
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::PublicWideStatus#status
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          NOT_SPECIFIED = :NOT_SPECIFIED
          SUBSCRIBED = :SUBSCRIBED
          UNSUBSCRIBED = :UNSUBSCRIBED

          # @!method self.values
          #   @return [Array<Symbol>]
        end

        # The type of wide status, which can be 'PORTAL_WIDE' or 'BUSINESS_UNIT_WIDE'.
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::PublicWideStatus#wide_status_type
        module WideStatusType
          extend HubSpotSDK::Internal::Type::Enum

          BUSINESS_UNIT_WIDE = :BUSINESS_UNIT_WIDE
          PORTAL_WIDE = :PORTAL_WIDE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
