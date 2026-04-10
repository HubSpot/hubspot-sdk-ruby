# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicChannelAccountEgg < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicChannelAccountEgg,
              HubSpotSDK::Internal::AnyHash
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
            T.nilable(HubSpotSDK::Conversations::PublicDeliveryIdentifier)
          )
        end
        attr_reader :delivery_identifier

        sig do
          params(
            delivery_identifier:
              HubSpotSDK::Conversations::PublicDeliveryIdentifier::OrHash
          ).void
        end
        attr_writer :delivery_identifier

        sig do
          params(
            authorized: T::Boolean,
            inbox_id: String,
            name: String,
            delivery_identifier:
              HubSpotSDK::Conversations::PublicDeliveryIdentifier::OrHash
          ).returns(T.attached_class)
        end
        def self.new(authorized:, inbox_id:, name:, delivery_identifier: nil)
        end

        sig do
          override.returns(
            {
              authorized: T::Boolean,
              inbox_id: String,
              name: String,
              delivery_identifier:
                HubSpotSDK::Conversations::PublicDeliveryIdentifier
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
