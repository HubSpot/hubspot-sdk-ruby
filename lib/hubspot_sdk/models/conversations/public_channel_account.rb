# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelAccount < HubspotSDK::Internal::Type::BaseModel
        # @!attribute id
        #
        #   @return [String]
        required :id, String

        # @!attribute active
        #
        #   @return [Boolean]
        required :active, HubspotSDK::Internal::Type::Boolean

        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute authorized
        #
        #   @return [Boolean]
        required :authorized, HubspotSDK::Internal::Type::Boolean

        # @!attribute channel_id
        #
        #   @return [String]
        required :channel_id, String, api_name: :channelId

        # @!attribute created_at
        #
        #   @return [Time]
        required :created_at, Time, api_name: :createdAt

        # @!attribute inbox_id
        #
        #   @return [String]
        required :inbox_id, String, api_name: :inboxId

        # @!attribute name
        #
        #   @return [String]
        required :name, String

        # @!attribute archived_at
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!attribute delivery_identifier
        #
        #   @return [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier, nil]
        optional :delivery_identifier,
                 -> { HubspotSDK::Conversations::PublicDeliveryIdentifier },
                 api_name: :deliveryIdentifier

        # @!method initialize(id:, active:, archived:, authorized:, channel_id:, created_at:, inbox_id:, name:, archived_at: nil, delivery_identifier: nil)
        #   @param id [String]
        #   @param active [Boolean]
        #   @param archived [Boolean]
        #   @param authorized [Boolean]
        #   @param channel_id [String]
        #   @param created_at [Time]
        #   @param inbox_id [String]
        #   @param name [String]
        #   @param archived_at [Time]
        #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
      end
    end
  end
end
