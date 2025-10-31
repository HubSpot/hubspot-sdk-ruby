# typed: strong

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        class MessageUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Conversations::CustomChannels::MessageUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :channel_id

          # Valid status are SENT, FAILED, and READ
          sig do
            returns(
              HubspotSDK::Conversations::CustomChannels::MessageUpdateParams::StatusType::OrSymbol
            )
          end
          attr_accessor :status_type

          sig { returns(T.nilable(String)) }
          attr_reader :error_message

          sig { params(error_message: String).void }
          attr_writer :error_message

          sig do
            params(
              channel_id: String,
              status_type:
                HubspotSDK::Conversations::CustomChannels::MessageUpdateParams::StatusType::OrSymbol,
              error_message: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            channel_id:,
            # Valid status are SENT, FAILED, and READ
            status_type:,
            error_message: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                channel_id: String,
                status_type:
                  HubspotSDK::Conversations::CustomChannels::MessageUpdateParams::StatusType::OrSymbol,
                error_message: String,
                request_options: HubspotSDK::RequestOptions
              }
            )
          end
          def to_hash
          end

          # Valid status are SENT, FAILED, and READ
          module StatusType
            extend HubspotSDK::Internal::Type::Enum

            TaggedSymbol =
              T.type_alias do
                T.all(
                  Symbol,
                  HubspotSDK::Conversations::CustomChannels::MessageUpdateParams::StatusType
                )
              end
            OrSymbol = T.type_alias { T.any(Symbol, String) }

            SENT =
              T.let(
                :SENT,
                HubspotSDK::Conversations::CustomChannels::MessageUpdateParams::StatusType::TaggedSymbol
              )
            FAILED =
              T.let(
                :FAILED,
                HubspotSDK::Conversations::CustomChannels::MessageUpdateParams::StatusType::TaggedSymbol
              )
            READ =
              T.let(
                :READ,
                HubspotSDK::Conversations::CustomChannels::MessageUpdateParams::StatusType::TaggedSymbol
              )

            sig do
              override.returns(
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::MessageUpdateParams::StatusType::TaggedSymbol
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
