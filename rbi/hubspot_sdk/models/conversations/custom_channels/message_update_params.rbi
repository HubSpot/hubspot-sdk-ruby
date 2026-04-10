# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      module CustomChannels
        class MessageUpdateParams < HubSpotSDK::Models::Conversations::PublicChannelIntegrationMessageUpdateRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Conversations::CustomChannels::MessageUpdateParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :channel_id

          sig { returns(String) }
          attr_accessor :message_id

          sig do
            params(
              channel_id: Integer,
              message_id: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(channel_id:, message_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                channel_id: Integer,
                message_id: String,
                request_options: HubSpotSDK::RequestOptions
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
