# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class ConversationsPublicChannelAccount < HubspotSDK::Internal::Type::BaseModel
        # @!attribute archived
        #
        #   @return [Boolean]
        required :archived, HubspotSDK::Internal::Type::Boolean

        # @!attribute id
        #   The ID of the channel account.
        #
        #   @return [String, nil]
        optional :id, String

        # @!attribute active
        #   Whether the channel account is turned on.
        #
        #   @return [Boolean, nil]
        optional :active, HubspotSDK::Internal::Type::Boolean

        # @!attribute archived_at
        #
        #   @return [Time, nil]
        optional :archived_at, Time, api_name: :archivedAt

        # @!attribute authorized
        #
        #   @return [Boolean, nil]
        optional :authorized, HubspotSDK::Internal::Type::Boolean

        # @!attribute channel_id
        #   The ID of the channel that the channel account is an instance of.
        #
        #   @return [String, nil]
        optional :channel_id, String, api_name: :channelId

        # @!attribute created_at
        #
        #   @return [Time, nil]
        optional :created_at, Time, api_name: :createdAt

        # @!attribute delivery_identifier
        #
        #   @return [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier, nil]
        optional :delivery_identifier,
                 -> { HubspotSDK::Conversations::PublicDeliveryIdentifier },
                 api_name: :deliveryIdentifier

        # @!attribute inbox_id
        #   The ID of the conversations inbox that contains the channel account.
        #
        #   @return [String, nil]
        optional :inbox_id, String, api_name: :inboxId

        # @!attribute name
        #   The name of the channel account.
        #
        #   @return [String, nil]
        optional :name, String

        # @!method initialize(archived:, id: nil, active: nil, archived_at: nil, authorized: nil, channel_id: nil, created_at: nil, delivery_identifier: nil, inbox_id: nil, name: nil)
        #   @param archived [Boolean]
        #
        #   @param id [String] The ID of the channel account.
        #
        #   @param active [Boolean] Whether the channel account is turned on.
        #
        #   @param archived_at [Time]
        #
        #   @param authorized [Boolean]
        #
        #   @param channel_id [String] The ID of the channel that the channel account is an instance of.
        #
        #   @param created_at [Time]
        #
        #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
        #
        #   @param inbox_id [String] The ID of the conversations inbox that contains the channel account.
        #
        #   @param name [String] The name of the channel account.
      end
    end
  end
end
