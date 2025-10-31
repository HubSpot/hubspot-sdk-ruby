# typed: strong

module HubspotSDK
  module Models
    module Conversations
      module CustomChannels
        class ChannelAccountCreateParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          OrHash =
            T.type_alias do
              T.any(
                HubspotSDK::Conversations::CustomChannels::ChannelAccountCreateParams,
                HubspotSDK::Internal::AnyHash
              )
            end

          sig { returns(T::Boolean) }
          attr_accessor :authorized

          sig { returns(String) }
          attr_accessor :inbox_id

          sig { returns(String) }
          attr_accessor :name

          sig do
            returns(
              T.nilable(HubspotSDK::Conversations::PublicDeliveryIdentifier)
            )
          end
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
              authorized: T::Boolean,
              inbox_id: String,
              name: String,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(T.attached_class)
          end
          def self.new(
            authorized:,
            inbox_id:,
            name:,
            delivery_identifier: nil,
            request_options: {}
          )
          end

          sig do
            override.returns(
              {
                authorized: T::Boolean,
                inbox_id: String,
                name: String,
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
