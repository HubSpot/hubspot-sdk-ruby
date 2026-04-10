# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      module CustomChannels
        class ChannelAccountUpdateStagingTokenParams < HubSpotSDK::Models::Conversations::PublicChannelAccountStagingTokenUpdateRequest
          extend HubSpotSDK::Internal::Type::RequestParameters::Converter
          include HubSpotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubSpotSDK::Conversations::CustomChannels::ChannelAccountUpdateStagingTokenParams,
                HubSpotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :channel_id

          sig { returns(String) }
          attr_accessor :account_token

          sig do
            params(
              channel_id: Integer,
              account_token: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(channel_id:, account_token:, request_options: {})
          end

          sig do
            override.returns(
              {
                channel_id: Integer,
                account_token: String,
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
