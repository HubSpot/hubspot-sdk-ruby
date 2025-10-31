# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      class ChannelIntegrationMessageEgg < HubspotSDK::Internal::Type::BaseModel
        # @!attribute attachments
        #
        #   @return [Array<HubspotSDK::Models::Conversations::FileAttachment, HubspotSDK::Models::Conversations::LocationAttachment, HubspotSDK::Models::Conversations::ContactAttachment, HubspotSDK::Models::Conversations::UnsupportedContentAttachment, HubspotSDK::Models::Conversations::MessageHeaderAttachment, HubspotSDK::Models::Conversations::QuickRepliesAttachment, HubspotSDK::Models::Conversations::SocialMetadataIntegrationAttachment>]
        required :attachments,
                 -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::ChannelIntegrationMessageEgg::Attachment] }

        # @!attribute channel_account_id
        #
        #   @return [String]
        required :channel_account_id, String, api_name: :channelAccountId

        # @!attribute integration_thread_id
        #
        #   @return [String]
        required :integration_thread_id, String, api_name: :integrationThreadId

        # @!attribute message_direction
        #
        #   @return [Symbol, HubspotSDK::Models::Conversations::ChannelIntegrationMessageEgg::MessageDirection]
        required :message_direction,
                 enum: -> { HubspotSDK::Conversations::ChannelIntegrationMessageEgg::MessageDirection },
                 api_name: :messageDirection

        # @!attribute recipients
        #
        #   @return [Array<HubspotSDK::Models::Conversations::ChannelIntegrationParticipant>]
        required :recipients,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::ChannelIntegrationParticipant] }

        # @!attribute senders
        #
        #   @return [Array<HubspotSDK::Models::Conversations::ChannelIntegrationParticipant>]
        required :senders,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::ChannelIntegrationParticipant] }

        # @!attribute text
        #
        #   @return [String]
        required :text, String

        # @!attribute timestamp
        #
        #   @return [Time]
        required :timestamp, Time

        # @!attribute in_reply_to_id
        #
        #   @return [String, nil]
        optional :in_reply_to_id, String, api_name: :inReplyToId

        # @!attribute integration_idempotency_id
        #
        #   @return [String, nil]
        optional :integration_idempotency_id, String, api_name: :integrationIdempotencyId

        # @!attribute pre_resolved_contacts
        #
        #   @return [HubspotSDK::Models::Conversations::PreResolvedContacts, nil]
        optional :pre_resolved_contacts,
                 -> { HubspotSDK::Conversations::PreResolvedContacts },
                 api_name: :preResolvedContacts

        # @!attribute rich_text
        #
        #   @return [String, nil]
        optional :rich_text, String, api_name: :richText

        # @!method initialize(attachments:, channel_account_id:, integration_thread_id:, message_direction:, recipients:, senders:, text:, timestamp:, in_reply_to_id: nil, integration_idempotency_id: nil, pre_resolved_contacts: nil, rich_text: nil)
        #   @param attachments [Array<HubspotSDK::Models::Conversations::FileAttachment, HubspotSDK::Models::Conversations::LocationAttachment, HubspotSDK::Models::Conversations::ContactAttachment, HubspotSDK::Models::Conversations::UnsupportedContentAttachment, HubspotSDK::Models::Conversations::MessageHeaderAttachment, HubspotSDK::Models::Conversations::QuickRepliesAttachment, HubspotSDK::Models::Conversations::SocialMetadataIntegrationAttachment>]
        #   @param channel_account_id [String]
        #   @param integration_thread_id [String]
        #   @param message_direction [Symbol, HubspotSDK::Models::Conversations::ChannelIntegrationMessageEgg::MessageDirection]
        #   @param recipients [Array<HubspotSDK::Models::Conversations::ChannelIntegrationParticipant>]
        #   @param senders [Array<HubspotSDK::Models::Conversations::ChannelIntegrationParticipant>]
        #   @param text [String]
        #   @param timestamp [Time]
        #   @param in_reply_to_id [String]
        #   @param integration_idempotency_id [String]
        #   @param pre_resolved_contacts [HubspotSDK::Models::Conversations::PreResolvedContacts]
        #   @param rich_text [String]

        module Attachment
          extend HubspotSDK::Internal::Type::Union

          variant -> { HubspotSDK::Conversations::FileAttachment }

          variant -> { HubspotSDK::Conversations::LocationAttachment }

          variant -> { HubspotSDK::Conversations::ContactAttachment }

          variant -> { HubspotSDK::Conversations::UnsupportedContentAttachment }

          variant -> { HubspotSDK::Conversations::MessageHeaderAttachment }

          variant -> { HubspotSDK::Conversations::QuickRepliesAttachment }

          variant -> { HubspotSDK::Conversations::SocialMetadataIntegrationAttachment }

          # @!method self.variants
          #   @return [Array(HubspotSDK::Models::Conversations::FileAttachment, HubspotSDK::Models::Conversations::LocationAttachment, HubspotSDK::Models::Conversations::ContactAttachment, HubspotSDK::Models::Conversations::UnsupportedContentAttachment, HubspotSDK::Models::Conversations::MessageHeaderAttachment, HubspotSDK::Models::Conversations::QuickRepliesAttachment, HubspotSDK::Models::Conversations::SocialMetadataIntegrationAttachment)]
        end

        # @see HubspotSDK::Models::Conversations::ChannelIntegrationMessageEgg#message_direction
        module MessageDirection
          extend HubspotSDK::Internal::Type::Enum

          INCOMING = :INCOMING
          OUTGOING = :OUTGOING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
