# frozen_string_literal: true

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        # @see HubspotSDK::Resources::Conversations::CustomChannels::Messages#create
        class MessageCreateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute attachments
          #
          #   @return [Array<HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment>]
          required :attachments,
                   -> { HubspotSDK::Internal::Type::ArrayOf[union: HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment] }

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
          #   @return [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::MessageDirection]
          required :message_direction,
                   enum: -> {
                     HubspotSDK::Conversations::CustomChannels::MessageCreateParams::MessageDirection
                   },
                   api_name: :messageDirection

          # @!attribute recipients
          #
          #   @return [Array<HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Recipient>]
          required :recipients,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Recipient] }

          # @!attribute senders
          #
          #   @return [Array<HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Sender>]
          required :senders,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Sender] }

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
          #   @return [HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts, nil]
          optional :pre_resolved_contacts,
                   -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts },
                   api_name: :preResolvedContacts

          # @!attribute rich_text
          #
          #   @return [String, nil]
          optional :rich_text, String, api_name: :richText

          # @!method initialize(attachments:, channel_account_id:, integration_thread_id:, message_direction:, recipients:, senders:, text:, timestamp:, in_reply_to_id: nil, integration_idempotency_id: nil, pre_resolved_contacts: nil, rich_text: nil, request_options: {})
          #   @param attachments [Array<HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment>]
          #   @param channel_account_id [String]
          #   @param integration_thread_id [String]
          #   @param message_direction [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::MessageDirection]
          #   @param recipients [Array<HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Recipient>]
          #   @param senders [Array<HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Sender>]
          #   @param text [String]
          #   @param timestamp [Time]
          #   @param in_reply_to_id [String]
          #   @param integration_idempotency_id [String]
          #   @param pre_resolved_contacts [HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts]
          #   @param rich_text [String]
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          module Attachment
            extend HubspotSDK::Internal::Type::Union

            variant -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment }

            variant -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment }

            variant -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment }

            variant -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment }

            variant -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment }

            variant -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment }

            variant -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment }

            class ConversationsCustomchannelsFileAttachment < HubspotSDK::Internal::Type::BaseModel
              # @!attribute file_id
              #
              #   @return [String]
              required :file_id, String, api_name: :fileId

              # @!attribute type
              #
              #   @return [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::Type]
              required :type,
                       enum: -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::Type }

              # @!attribute file_usage_type
              #
              #   @return [String, nil]
              optional :file_usage_type, String, api_name: :fileUsageType

              # @!method initialize(file_id:, type:, file_usage_type: nil)
              #   @param file_id [String]
              #   @param type [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::Type]
              #   @param file_usage_type [String]

              # @see HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment#type
              module Type
                extend HubspotSDK::Internal::Type::Enum

                FILE = :FILE

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ConversationsCustomchannelsLocationAttachment < HubspotSDK::Internal::Type::BaseModel
              # @!attribute latitude
              #
              #   @return [Float]
              required :latitude, Float

              # @!attribute longitude
              #
              #   @return [Float]
              required :longitude, Float

              # @!attribute type
              #
              #   @return [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::Type]
              required :type,
                       enum: -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::Type }

              # @!attribute address
              #
              #   @return [String, nil]
              optional :address, String

              # @!attribute name
              #
              #   @return [String, nil]
              optional :name, String

              # @!attribute url
              #
              #   @return [String, nil]
              optional :url, String

              # @!method initialize(latitude:, longitude:, type:, address: nil, name: nil, url: nil)
              #   @param latitude [Float]
              #   @param longitude [Float]
              #   @param type [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::Type]
              #   @param address [String]
              #   @param name [String]
              #   @param url [String]

              # @see HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment#type
              module Type
                extend HubspotSDK::Internal::Type::Enum

                LOCATION = :LOCATION

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ConversationsCustomchannelsContactAttachment < HubspotSDK::Internal::Type::BaseModel
              # @!attribute contact_profile
              #
              #   @return [HubspotSDK::Models::Conversations::ContactProfile]
              required :contact_profile,
                       -> {
                         HubspotSDK::Conversations::ContactProfile
                       },
                       api_name: :contactProfile

              # @!attribute type
              #
              #   @return [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::Type]
              required :type,
                       enum: -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::Type }

              # @!method initialize(contact_profile:, type:)
              #   @param contact_profile [HubspotSDK::Models::Conversations::ContactProfile]
              #   @param type [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::Type]

              # @see HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment#type
              module Type
                extend HubspotSDK::Internal::Type::Enum

                CONTACT = :CONTACT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ConversationsCustomchannelsUnsupportedContentAttachment < HubspotSDK::Internal::Type::BaseModel
              # @!attribute type
              #
              #   @return [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::Type]
              required :type,
                       enum: -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::Type }

              # @!method initialize(type:)
              #   @param type [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::Type]

              # @see HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment#type
              module Type
                extend HubspotSDK::Internal::Type::Enum

                UNSUPPORTED_CONTENT = :UNSUPPORTED_CONTENT

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ConversationsCustomchannelsMessageHeaderAttachment < HubspotSDK::Internal::Type::BaseModel
              # @!attribute type
              #
              #   @return [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::Type]
              required :type,
                       enum: -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::Type }

              # @!attribute file_id
              #
              #   @return [Integer, nil]
              optional :file_id, Integer, api_name: :fileId

              # @!attribute text
              #
              #   @return [String, nil]
              optional :text, String

              # @!method initialize(type:, file_id: nil, text: nil)
              #   @param type [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::Type]
              #   @param file_id [Integer]
              #   @param text [String]

              # @see HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment#type
              module Type
                extend HubspotSDK::Internal::Type::Enum

                MESSAGE_HEADER = :MESSAGE_HEADER

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ConversationsCustomchannelsQuickRepliesAttachment < HubspotSDK::Internal::Type::BaseModel
              # @!attribute quick_replies
              #
              #   @return [Array<HubspotSDK::Models::Conversations::QuickReply>]
              required :quick_replies,
                       -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::QuickReply] },
                       api_name: :quickReplies

              # @!attribute type
              #
              #   @return [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::Type]
              required :type,
                       enum: -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::Type }

              # @!method initialize(quick_replies:, type:)
              #   @param quick_replies [Array<HubspotSDK::Models::Conversations::QuickReply>]
              #   @param type [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::Type]

              # @see HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment#type
              module Type
                extend HubspotSDK::Internal::Type::Enum

                QUICK_REPLIES = :QUICK_REPLIES

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            class ConversationsCustomchannelsSocialMetadataIntegrationAttachment < HubspotSDK::Internal::Type::BaseModel
              # @!attribute social_metadata
              #
              #   @return [HubspotSDK::Models::Conversations::SocialMetadata]
              required :social_metadata,
                       -> {
                         HubspotSDK::Conversations::SocialMetadata
                       },
                       api_name: :socialMetadata

              # @!attribute type
              #
              #   @return [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::Type]
              required :type,
                       enum: -> { HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::Type }

              # @!method initialize(social_metadata:, type:)
              #   @param social_metadata [HubspotSDK::Models::Conversations::SocialMetadata]
              #   @param type [Symbol, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::Type]

              # @see HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment#type
              module Type
                extend HubspotSDK::Internal::Type::Enum

                SOCIAL_MEDIA_METADATA = :SOCIAL_MEDIA_METADATA

                # @!method self.values
                #   @return [Array<Symbol>]
              end
            end

            # @!method self.variants
            #   @return [Array(HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment, HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment)]
          end

          module MessageDirection
            extend HubspotSDK::Internal::Type::Enum

            INCOMING = :INCOMING
            OUTGOING = :OUTGOING

            # @!method self.values
            #   @return [Array<Symbol>]
          end

          class Recipient < HubspotSDK::Internal::Type::BaseModel
            # @!attribute delivery_identifier
            #
            #   @return [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
            required :delivery_identifier,
                     -> { HubspotSDK::Conversations::PublicDeliveryIdentifier },
                     api_name: :deliveryIdentifier

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(delivery_identifier:, name: nil)
            #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
            #   @param name [String]
          end

          class Sender < HubspotSDK::Internal::Type::BaseModel
            # @!attribute delivery_identifier
            #
            #   @return [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
            required :delivery_identifier,
                     -> { HubspotSDK::Conversations::PublicDeliveryIdentifier },
                     api_name: :deliveryIdentifier

            # @!attribute name
            #
            #   @return [String, nil]
            optional :name, String

            # @!method initialize(delivery_identifier:, name: nil)
            #   @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
            #   @param name [String]
          end

          class PreResolvedContacts < HubspotSDK::Internal::Type::BaseModel
            # @!attribute contacts
            #
            #   @return [Array<HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts::Contact>]
            required :contacts,
                     -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts::Contact] }

            # @!method initialize(contacts:)
            #   @param contacts [Array<HubspotSDK::Models::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts::Contact>]

            class Contact < HubspotSDK::Internal::Type::BaseModel
              # @!attribute contact_properties_leading_to_match
              #
              #   @return [Array<String>]
              required :contact_properties_leading_to_match,
                       HubspotSDK::Internal::Type::ArrayOf[String],
                       api_name: :contactPropertiesLeadingToMatch

              # @!attribute contact_vid
              #
              #   @return [Integer]
              required :contact_vid, Integer, api_name: :contactVid

              # @!method initialize(contact_properties_leading_to_match:, contact_vid:)
              #   @param contact_properties_leading_to_match [Array<String>]
              #   @param contact_vid [Integer]
            end
          end
        end
      end
    end
  end
end
