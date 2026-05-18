# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Conversations
      class ChannelIntegrationMessageEgg < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute attachments
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::FileAttachment, HubSpotSDK::Models::Conversations::LocationAttachment, HubSpotSDK::Models::Conversations::ContactAttachment, HubSpotSDK::Models::Conversations::UnsupportedContentAttachment, HubSpotSDK::Models::Conversations::MessageHeaderAttachment, HubSpotSDK::Models::Conversations::QuickRepliesAttachment, HubSpotSDK::Models::Conversations::SocialMetadataIntegrationAttachment>]
        required :attachments,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[union: HubSpotSDK::Conversations::ChannelIntegrationMessageEgg::Attachment] }

        # @!attribute channel_account_id
        #
        #   @return [String]
        required :channel_account_id, String, api_name: :channelAccountId

        # @!attribute message_direction
        #
        #   @return [Symbol, HubSpotSDK::Models::Conversations::ChannelIntegrationMessageEgg::MessageDirection]
        required :message_direction,
                 enum: -> { HubSpotSDK::Conversations::ChannelIntegrationMessageEgg::MessageDirection },
                 api_name: :messageDirection

        # @!attribute recipients
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::ChannelIntegrationParticipant>]
        required :recipients,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::ChannelIntegrationParticipant] }

        # @!attribute senders
        #
        #   @return [Array<HubSpotSDK::Models::Conversations::ChannelIntegrationParticipant>]
        required :senders,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Conversations::ChannelIntegrationParticipant] }

        # @!attribute text
        #
        #   @return [String]
        required :text, String

        # @!attribute timestamp
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute associate_with_contact_id
        #
        #   @return [Integer, nil]
        optional :associate_with_contact_id, Integer, api_name: :associateWithContactId

        # @!attribute in_reply_to_id
        #
        #   @return [String, nil]
        optional :in_reply_to_id, String, api_name: :inReplyToId

        # @!attribute integration_idempotency_id
        #
        #   @return [String, nil]
        optional :integration_idempotency_id, String, api_name: :integrationIdempotencyId

        # @!attribute integration_thread_id
        #
        #   @return [String, nil]
        optional :integration_thread_id, String, api_name: :integrationThreadId

        # @!attribute pre_resolved_contacts
        #
        #   @return [HubSpotSDK::Models::Conversations::PreResolvedContacts, nil]
        optional :pre_resolved_contacts,
                 -> { HubSpotSDK::Conversations::PreResolvedContacts },
                 api_name: :preResolvedContacts

        # @!attribute rich_text
        #
        #   @return [String, nil]
        optional :rich_text, String, api_name: :richText

        # @!method initialize(attachments:, channel_account_id:, message_direction:, recipients:, senders:, text:, timestamp:, associate_with_contact_id: nil, in_reply_to_id: nil, integration_idempotency_id: nil, integration_thread_id: nil, pre_resolved_contacts: nil, rich_text: nil)
        #   @param attachments [Array<HubSpotSDK::Models::Conversations::FileAttachment, HubSpotSDK::Models::Conversations::LocationAttachment, HubSpotSDK::Models::Conversations::ContactAttachment, HubSpotSDK::Models::Conversations::UnsupportedContentAttachment, HubSpotSDK::Models::Conversations::MessageHeaderAttachment, HubSpotSDK::Models::Conversations::QuickRepliesAttachment, HubSpotSDK::Models::Conversations::SocialMetadataIntegrationAttachment>]
        #   @param channel_account_id [String]
        #   @param message_direction [Symbol, HubSpotSDK::Models::Conversations::ChannelIntegrationMessageEgg::MessageDirection]
        #   @param recipients [Array<HubSpotSDK::Models::Conversations::ChannelIntegrationParticipant>]
        #   @param senders [Array<HubSpotSDK::Models::Conversations::ChannelIntegrationParticipant>]
        #   @param text [String]
        #   @param timestamp [Time]
        #   @param associate_with_contact_id [Integer]
        #   @param in_reply_to_id [String]
        #   @param integration_idempotency_id [String]
        #   @param integration_thread_id [String]
        #   @param pre_resolved_contacts [HubSpotSDK::Models::Conversations::PreResolvedContacts]
        #   @param rich_text [String]

        module Attachment
          extend HubSpotSDK::Internal::Type::Union

          variant -> { HubSpotSDK::Conversations::FileAttachment }

          variant -> { HubSpotSDK::Conversations::LocationAttachment }

          variant -> { HubSpotSDK::Conversations::ContactAttachment }

          variant -> { HubSpotSDK::Conversations::UnsupportedContentAttachment }

          variant -> { HubSpotSDK::Conversations::MessageHeaderAttachment }

          variant -> { HubSpotSDK::Conversations::QuickRepliesAttachment }

          variant -> { HubSpotSDK::Conversations::SocialMetadataIntegrationAttachment }

          # @!method self.variants
          #   @return [Array(HubSpotSDK::Models::Conversations::FileAttachment, HubSpotSDK::Models::Conversations::LocationAttachment, HubSpotSDK::Models::Conversations::ContactAttachment, HubSpotSDK::Models::Conversations::UnsupportedContentAttachment, HubSpotSDK::Models::Conversations::MessageHeaderAttachment, HubSpotSDK::Models::Conversations::QuickRepliesAttachment, HubSpotSDK::Models::Conversations::SocialMetadataIntegrationAttachment)]
        end

        # @see HubSpotSDK::Models::Conversations::ChannelIntegrationMessageEgg#message_direction
        module MessageDirection
          extend HubSpotSDK::Internal::Type::Enum

          INCOMING = :INCOMING
          OUTGOING = :OUTGOING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
