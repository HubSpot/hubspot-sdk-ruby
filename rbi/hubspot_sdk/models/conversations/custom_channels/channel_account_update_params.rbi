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

          sig { returns(String) }
          attr_accessor :channel_id

          sig do
            params(
              channel_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(channel_id:, request_options: {})
          end

          sig do
            override.returns(
              {
                channel_id: String,
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
