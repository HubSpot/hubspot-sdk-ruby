# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      module CustomChannels
        class ChannelAccountCreateParams < HubSpotSDK::Models::Conversations::PublicChannelAccountEgg
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Conversations::CustomChannels::ChannelAccountCreateParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :channel_id

          sig do
            params(
              channel_id: Integer,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(channel_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                channel_id: Integer,
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
