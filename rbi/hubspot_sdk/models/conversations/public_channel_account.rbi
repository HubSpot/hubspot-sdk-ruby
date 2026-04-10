# typed: strong

module HubSpotSDK
  module Models
    module Conversations
      class PublicChannelAccount < HubSpotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubSpotSDK::Conversations::PublicChannelAccount,
              HubSpotSDK::Internal::AnyHash
            )
          end

        sig { returns(String) }
        attr_accessor :id

        sig { returns(T::Boolean) }
        attr_accessor :active

        sig { returns(T::Boolean) }
        attr_accessor :archived

        sig { returns(T::Boolean) }
        attr_accessor :authorized

        sig { returns(String) }
        attr_accessor :channel_id

        sig { returns(Time) }
        attr_accessor :created_at

        sig { returns(String) }
        attr_accessor :inbox_id

        sig { returns(String) }
        attr_accessor :name

        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

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
            id: String,
            active: T::Boolean,
            archived: T::Boolean,
            authorized: T::Boolean,
            channel_id: String,
            created_at: Time,
            inbox_id: String,
            name: String,
            archived_at: Time,
            delivery_identifier:
              HubSpotSDK::Conversations::PublicDeliveryIdentifier::OrHash
          ).returns(T.attached_class)
        end
        def self.new(
          id:,
          active:,
          archived:,
          authorized:,
          channel_id:,
          created_at:,
          inbox_id:,
          name:,
          archived_at: nil,
          delivery_identifier: nil
        )
        end

        sig do
          override.returns(
            {
              id: String,
              active: T::Boolean,
              archived: T::Boolean,
              authorized: T::Boolean,
              channel_id: String,
              created_at: Time,
              inbox_id: String,
              name: String,
              archived_at: Time,
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
