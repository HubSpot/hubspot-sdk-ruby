# typed: strong

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        class ChannelAccountListParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :channel_id

          # The paging cursor token of the last successfully read resource will be returned
          # as the `paging.next.after` JSON property of a paged response containing more
          # results.
          sig { returns(T.nilable(String)) }
          attr_reader :after

          sig { params(after: String).void }
          attr_writer :after

          # Whether to return only results that have been archived.
          sig { returns(T.nilable(T::Boolean)) }
          attr_reader :archived

          sig { params(archived: T::Boolean).void }
          attr_writer :archived

          sig { returns(T.nilable(Integer)) }
          attr_reader :default_page_length

          sig { params(default_page_length: Integer).void }
          attr_writer :default_page_length

          sig do
            returns(
              T.nilable(
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType::OrSymbol
                ]
              )
            )
          end
          attr_reader :delivery_identifier_type

          sig do
            params(
              delivery_identifier_type:
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType::OrSymbol
                ]
            ).void
          end
          attr_writer :delivery_identifier_type

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :delivery_identifier_value

          sig { params(delivery_identifier_value: T::Array[String]).void }
          attr_writer :delivery_identifier_value

          # The maximum number of results to display per page.
          sig { returns(T.nilable(Integer)) }
          attr_reader :limit

          sig { params(limit: Integer).void }
          attr_writer :limit

          sig { returns(T.nilable(T::Array[String])) }
          attr_reader :sort

          sig { params(sort: T::Array[String]).void }
          attr_writer :sort

          sig do
            params(
              channel_id: Integer,
              after: String,
              archived: T::Boolean,
              default_page_length: Integer,
              delivery_identifier_type:
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType::OrSymbol
                ],
              delivery_identifier_value: T::Array[String],
              limit: Integer,
              sort: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            channel_id:,
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            default_page_length: nil,
            delivery_identifier_type: nil,
            delivery_identifier_value: nil,
            # The maximum number of results to display per page.
            limit: nil,
            sort: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                channel_id: Integer,
                after: String,
                archived: T::Boolean,
                default_page_length: Integer,
                delivery_identifier_type:
                  T::Array[
                    HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType::OrSymbol
                  ],
                delivery_identifier_value: T::Array[String],
                limit: Integer,
                sort: T::Array[String],
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          module DeliveryIdentifierType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            HS_EMAIL_ADDRESS =
              T.let(
                :HS_EMAIL_ADDRESS,
                HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType::TaggedSymbol
              )
            HS_PHONE_NUMBER =
              T.let(
                :HS_PHONE_NUMBER,
                HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType::TaggedSymbol
              )
            HS_SHORT_CODE =
              T.let(
                :HS_SHORT_CODE,
                HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType::TaggedSymbol
              )
            CHANNEL_SPECIFIC_OPAQUE_ID =
              T.let(
                :CHANNEL_SPECIFIC_OPAQUE_ID,
                HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType::TaggedSymbol
                ]
              )
            end
            def self.values
            end
          end
        end
      end
    end
  end
end
