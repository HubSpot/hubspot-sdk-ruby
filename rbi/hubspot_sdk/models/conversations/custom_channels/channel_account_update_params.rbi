# typed: strong

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        class ChannelAccountUpdateParams < HubspotSDK::Models::Conversations::PublicChannelAccountUpdateRequest
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Conversations::CustomChannels::ChannelAccountUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(Integer) }
          attr_accessor :channel_id

          sig { returns(Integer) }
          attr_accessor :channel_account_id

          sig do
            params(
              channel_id: Integer,
              channel_account_id: Integer,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(channel_id:, channel_account_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                channel_id: Integer,
                channel_account_id: Integer,
                request_options: HubspotSDK::RequestOptions
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
