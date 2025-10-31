# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class PublicChannelAccountStagingToken < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::PublicChannelAccountStagingToken,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :account_token

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(Integer) }
        attr_accessor :generic_channel_id

        sig { returns(Integer) }
        attr_accessor :inbox_id

        sig { returns(Integer) }
        attr_accessor :user_id

        sig { returns(T.nilable(String)) }
        attr_reader :account_name

        sig { params(account_name: String).void }
        attr_writer :account_name

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
            account_token: String,
            created_at: Time,
            generic_channel_id: Integer,
            inbox_id: Integer,
            user_id: Integer,
            account_name: String,
            delivery_identifier:
              HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          account_token:,
          created_at:,
          generic_channel_id:,
          inbox_id:,
          user_id:,
          account_name: nil,
          delivery_identifier: nil
        )
        end

        sig do
          override.returns(
            {
              account_token: String,
              created_at: Time,
              generic_channel_id: Integer,
              inbox_id: Integer,
              user_id: Integer,
              account_name: String,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
