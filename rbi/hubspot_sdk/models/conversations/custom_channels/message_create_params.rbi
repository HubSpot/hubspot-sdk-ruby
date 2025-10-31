# typed: strong

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        class MessageCreateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig do
            returns(
              T::Array[
                T.any(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment
                )
              ]
            )
          end
          attr_accessor :attachments

          sig { returns(String) }
          attr_accessor :channel_account_id

          sig { returns(String) }
          attr_accessor :integration_thread_id

          sig do
            returns(
              HubspotSDK::Conversations::CustomChannels::MessageCreateParams::MessageDirection::OrSymbol
            )
          end
          attr_accessor :message_direction

          sig do
            returns(
              T::Array[
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Recipient
              ]
            )
          end
          attr_accessor :recipients

          sig do
            returns(
              T::Array[
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Sender
              ]
            )
          end
          attr_accessor :senders

          sig { returns(String) }
          attr_accessor :text

          sig { returns(Time) }
          attr_accessor :timestamp

          sig { returns(T.nilable(String)) }
          attr_reader :in_reply_to_id

          sig { params(in_reply_to_id: String).void }
          attr_writer :in_reply_to_id

          sig { returns(T.nilable(String)) }
          attr_reader :integration_idempotency_id

          sig { params(integration_idempotency_id: String).void }
          attr_writer :integration_idempotency_id

          sig do
            returns(
              T.nilable(
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts
              )
            )
          end
          attr_reader :pre_resolved_contacts

          sig do
            params(
              pre_resolved_contacts:
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts::OrHash
            ).void
          end
          attr_writer :pre_resolved_contacts

          sig { returns(T.nilable(String)) }
          attr_reader :rich_text

          sig { params(rich_text: String).void }
          attr_writer :rich_text

          sig do
            params(
              attachments:
                T::Array[
                  T.any(
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::OrHash,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::OrHash
                  )
                ],
              channel_account_id: String,
              integration_thread_id: String,
              message_direction:
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams::MessageDirection::OrSymbol,
              recipients:
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Recipient::OrHash
                ],
              senders:
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Sender::OrHash
                ],
              text: String,
              timestamp: Time,
              in_reply_to_id: String,
              integration_idempotency_id: String,
              pre_resolved_contacts:
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts::OrHash,
              rich_text: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            attachments:,
            channel_account_id:,
            integration_thread_id:,
            message_direction:,
            recipients:,
            senders:,
            text:,
            timestamp:,
            in_reply_to_id: nil,
            integration_idempotency_id: nil,
            pre_resolved_contacts: nil,
            rich_text: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                attachments:
                  T::Array[
                    T.any(
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment
                    )
                  ],
                channel_account_id: String,
                integration_thread_id: String,
                message_direction:
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::MessageDirection::OrSymbol,
                recipients:
                  T::Array[
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Recipient
                  ],
                senders:
                  T::Array[
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Sender
                  ],
                text: String,
                timestamp: Time,
                in_reply_to_id: String,
                integration_idempotency_id: String,
                pre_resolved_contacts:
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts,
                rich_text: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module Attachment
            extend HubspotSDK::Internal::Type::Union

            Variants =
              T.type_alias do
                T.any(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment
                )
              end

            class ConversationsCustomchannelsFileAttachment < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(String) }
              attr_accessor :file_id

              sig do
                returns(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::Type::OrSymbol
                )
              end
              attr_accessor :type

              sig { returns(T.nilable(String)) }
              attr_reader :file_usage_type

              sig { params(file_usage_type: String).void }
              attr_writer :file_usage_type

              sig do
                params(
                  file_id: String,
                  type:
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::Type::OrSymbol,
                  file_usage_type: String
                ).returns(T.attached_class)
              end
              def self.new(file_id:, type:, file_usage_type: nil)
              end

              sig do
                override.returns(
                  {
                    file_id: String,
                    type:
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::Type::OrSymbol,
                    file_usage_type: String
                  }
                )
              end
              def to_hash
              end

              module Type
                extend HubspotSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                FILE =
                  T.let(
                    :FILE,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsFileAttachment::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ConversationsCustomchannelsLocationAttachment < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(Float) }
              attr_accessor :latitude

              sig { returns(Float) }
              attr_accessor :longitude

              sig do
                returns(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::Type::OrSymbol
                )
              end
              attr_accessor :type

              sig { returns(T.nilable(String)) }
              attr_reader :address

              sig { params(address: String).void }
              attr_writer :address

              sig { returns(T.nilable(String)) }
              attr_reader :name

              sig { params(name: String).void }
              attr_writer :name

              sig { returns(T.nilable(String)) }
              attr_reader :url

              sig { params(url: String).void }
              attr_writer :url

              sig do
                params(
                  latitude: Float,
                  longitude: Float,
                  type:
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::Type::OrSymbol,
                  address: String,
                  name: String,
                  url: String
                ).returns(T.attached_class)
              end
              def self.new(
                latitude:,
                longitude:,
                type:,
                address: nil,
                name: nil,
                url: nil
              )
              end

              sig do
                override.returns(
                  {
                    latitude: Float,
                    longitude: Float,
                    type:
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::Type::OrSymbol,
                    address: String,
                    name: String,
                    url: String
                  }
                )
              end
              def to_hash
              end

              module Type
                extend HubspotSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                LOCATION =
                  T.let(
                    :LOCATION,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsLocationAttachment::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ConversationsCustomchannelsContactAttachment < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(HubspotSDK::Conversations::ContactProfile) }
              attr_reader :contact_profile

              sig do
                params(
                  contact_profile:
                    HubspotSDK::Conversations::ContactProfile::OrHash
                ).void
              end
              attr_writer :contact_profile

              sig do
                returns(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::Type::OrSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  contact_profile:
                    HubspotSDK::Conversations::ContactProfile::OrHash,
                  type:
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(contact_profile:, type:)
              end

              sig do
                override.returns(
                  {
                    contact_profile: HubspotSDK::Conversations::ContactProfile,
                    type:
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module Type
                extend HubspotSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                CONTACT =
                  T.let(
                    :CONTACT,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsContactAttachment::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ConversationsCustomchannelsUnsupportedContentAttachment < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::Type::OrSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  type:
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(type:)
              end

              sig do
                override.returns(
                  {
                    type:
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module Type
                extend HubspotSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                UNSUPPORTED_CONTENT =
                  T.let(
                    :UNSUPPORTED_CONTENT,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsUnsupportedContentAttachment::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ConversationsCustomchannelsMessageHeaderAttachment < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig do
                returns(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::Type::OrSymbol
                )
              end
              attr_accessor :type

              sig { returns(T.nilable(Integer)) }
              attr_reader :file_id

              sig { params(file_id: Integer).void }
              attr_writer :file_id

              sig { returns(T.nilable(String)) }
              attr_reader :text

              sig { params(text: String).void }
              attr_writer :text

              sig do
                params(
                  type:
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::Type::OrSymbol,
                  file_id: Integer,
                  text: String
                ).returns(T.attached_class)
              end
              def self.new(type:, file_id: nil, text: nil)
              end

              sig do
                override.returns(
                  {
                    type:
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::Type::OrSymbol,
                    file_id: Integer,
                    text: String
                  }
                )
              end
              def to_hash
              end

              module Type
                extend HubspotSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                MESSAGE_HEADER =
                  T.let(
                    :MESSAGE_HEADER,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsMessageHeaderAttachment::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ConversationsCustomchannelsQuickRepliesAttachment < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(T::Array[HubspotSDK::Conversations::QuickReply]) }
              attr_accessor :quick_replies

              sig do
                returns(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::Type::OrSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  quick_replies:
                    T::Array[HubspotSDK::Conversations::QuickReply::OrHash],
                  type:
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(quick_replies:, type:)
              end

              sig do
                override.returns(
                  {
                    quick_replies:
                      T::Array[HubspotSDK::Conversations::QuickReply],
                    type:
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module Type
                extend HubspotSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                QUICK_REPLIES =
                  T.let(
                    :QUICK_REPLIES,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsQuickRepliesAttachment::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            class ConversationsCustomchannelsSocialMetadataIntegrationAttachment < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(HubspotSDK::Conversations::SocialMetadata) }
              attr_reader :social_metadata

              sig do
                params(
                  social_metadata:
                    HubspotSDK::Conversations::SocialMetadata::OrHash
                ).void
              end
              attr_writer :social_metadata

              sig do
                returns(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::Type::OrSymbol
                )
              end
              attr_accessor :type

              sig do
                params(
                  social_metadata:
                    HubspotSDK::Conversations::SocialMetadata::OrHash,
                  type:
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::Type::OrSymbol
                ).returns(T.attached_class)
              end
              def self.new(social_metadata:, type:)
              end

              sig do
                override.returns(
                  {
                    social_metadata: HubspotSDK::Conversations::SocialMetadata,
                    type:
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::Type::OrSymbol
                  }
                )
              end
              def to_hash
              end

              module Type
                extend HubspotSDK::Internal::Type::Enum

                TaggedSymbol =
                  T.type_alias do
                    T.all(
                      Symbol,
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::Type
                    )
                  end
                OrSymbol = T.type_alias { T.any(Symbol, String) }

                SOCIAL_MEDIA_METADATA =
                  T.let(
                    :SOCIAL_MEDIA_METADATA,
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::Type::TaggedSymbol
                  )

                sig do
                  override.returns(
                    T::Array[
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::ConversationsCustomchannelsSocialMetadataIntegrationAttachment::Type::TaggedSymbol
                    ]
                  )
                end
                def self.values
                end
              end
            end

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Attachment::Variants
                ]
              )
            end
            def self.variants
            end
          end

          module MessageDirection
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::MessageDirection
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            INCOMING =
              T.let(
                :INCOMING,
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams::MessageDirection::TaggedSymbol
              )
            OUTGOING =
              T.let(
                :OUTGOING,
                HubspotSDK::Conversations::CustomChannels::MessageCreateParams::MessageDirection::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::MessageDirection::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end

          class Recipient < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Recipient,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(HubspotSDK::Conversations::PublicDeliveryIdentifier) }
            attr_reader :delivery_identifier

            sig do
              params(
                delivery_identifier:
                  HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash
              ).void
            end
            attr_writer :delivery_identifier

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(
                delivery_identifier:
                  HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(delivery_identifier:, name: nil)
            end

            sig do
              override.returns(
                {
                  delivery_identifier:
                    HubspotSDK::Conversations::PublicDeliveryIdentifier,
                  name: String
                }
              )
            end
            def to_hash
            end
          end

          class Sender < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::Sender,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig { returns(HubspotSDK::Conversations::PublicDeliveryIdentifier) }
            attr_reader :delivery_identifier

            sig do
              params(
                delivery_identifier:
                  HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash
              ).void
            end
            attr_writer :delivery_identifier

            sig { returns(T.nilable(String)) }
            attr_reader :name

            sig { params(name: String).void }
            attr_writer :name

            sig do
              params(
                delivery_identifier:
                  HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
                name: String
              ).returns(T.attached_class)
            end
            def self.new(delivery_identifier:, name: nil)
            end

            sig do
              override.returns(
                {
                  delivery_identifier:
                    HubspotSDK::Conversations::PublicDeliveryIdentifier,
                  name: String
                }
              )
            end
            def to_hash
            end
          end

          class PreResolvedContacts < HubspotSDK::Internal::Type::BaseModel
            OrHash =
              T.type_alias do
                T.any(
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts,
                  HubspotSDK::Internal::AnyHash
                )
              end

            sig do
              returns(
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts::Contact
                ]
              )
            end
            attr_accessor :contacts

            sig do
              params(
                contacts:
                  T::Array[
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts::Contact::OrHash
                  ]
              ).returns(T.attached_class)
            end
            def self.new(contacts:)
            end

            sig do
              override.returns(
                {
                  contacts:
                    T::Array[
                      HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts::Contact
                    ]
                }
              )
            end
            def to_hash
            end

            class Contact < HubspotSDK::Internal::Type::BaseModel
              OrHash =
                T.type_alias do
                  T.any(
                    HubspotSDK::Conversations::CustomChannels::MessageCreateParams::PreResolvedContacts::Contact,
                    HubspotSDK::Internal::AnyHash
                  )
                end

              sig { returns(T::Array[String]) }
              attr_accessor :contact_properties_leading_to_match

              sig { returns(Integer) }
              attr_accessor :contact_vid

              sig do
                params(
                  contact_properties_leading_to_match: T::Array[String],
                  contact_vid: Integer
                ).returns(T.attached_class)
              end
              def self.new(contact_properties_leading_to_match:, contact_vid:)
              end

              sig do
                override.returns(
                  {
                    contact_properties_leading_to_match: T::Array[String],
                    contact_vid: Integer
                  }
                )
              end
              def to_hash
              end
            end
          end
        end
      end
    end
  end
end
