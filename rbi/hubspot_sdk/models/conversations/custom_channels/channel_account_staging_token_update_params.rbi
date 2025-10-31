# typed: strong

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        class ChannelAccountStagingTokenUpdateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Conversations::CustomChannels::ChannelAccountStagingTokenUpdateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(String) }
          attr_accessor :channel_id

          sig { returns(String) }
          attr_accessor :account_name

          sig { returns(HubspotSDK::Conversations::PublicDeliveryIdentifier) }
          attr_reader :delivery_identifier

          sig do
            params(
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash
            ).void
          end
          attr_writer :delivery_identifier

          sig do
            params(
              channel_id: String,
              account_name: String,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            channel_id:,
            account_name:,
            delivery_identifier:,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                channel_id: String,
                account_name: String,
                delivery_identifier:
                  HubspotSDK::Conversations::PublicDeliveryIdentifier,
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
