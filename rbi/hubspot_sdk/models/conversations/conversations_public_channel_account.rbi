# typed: strong

module HubspotSDK
  module Models
    module Conversations
      class ConversationsPublicChannelAccount < HubspotSDK::Internal::Type::BaseModel
        OrHash =
          T.type_alias do
            T.any(
              HubspotSDK::Conversations::ConversationsPublicChannelAccount,
              HubspotSDK::Internal::AnyHash
            )
          end

        sig { returns(T::Boolean) }
        attr_accessor :archived

        # The ID of the channel account.
        sig { returns(T.nilable(String)) }
        attr_reader :id

        sig { params(id: String).void }
        attr_writer :id

        # Whether the channel account is turned on.
        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :active

        sig { params(active: T::Boolean).void }
        attr_writer :active

        sig { returns(T.nilable(Time)) }
        attr_reader :archived_at

        sig { params(archived_at: Time).void }
        attr_writer :archived_at

        sig { returns(T.nilable(T::Boolean)) }
        attr_reader :authorized

        sig { params(authorized: T::Boolean).void }
        attr_writer :authorized

        # The ID of the channel that the channel account is an instance of.
        sig { returns(T.nilable(String)) }
        attr_reader :channel_id

        sig { params(channel_id: String).void }
        attr_writer :channel_id

        sig { returns(T.nilable(Time)) }
        attr_reader :created_at

        sig { params(created_at: Time).void }
        attr_writer :created_at

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

        # The ID of the conversations inbox that contains the channel account.
        sig { returns(T.nilable(String)) }
        attr_reader :inbox_id

        sig { params(inbox_id: String).void }
        attr_writer :inbox_id

        # The name of the channel account.
        sig { returns(T.nilable(String)) }
        attr_reader :name

        sig { params(name: String).void }
        attr_writer :name

        sig do
          params(
            archived: T::Boolean,
            id: String,
            active: T::Boolean,
            archived_at: Time,
            authorized: T::Boolean,
            channel_id: String,
            created_at: Time,
            delivery_identifier:
              HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
            inbox_id: String,
            name: String
          ).returns(T.attached_class)
        end
        def self.new(
          archived:,
          # The ID of the channel account.
          id: nil,
          # Whether the channel account is turned on.
          active: nil,
          archived_at: nil,
          authorized: nil,
          # The ID of the channel that the channel account is an instance of.
          channel_id: nil,
          created_at: nil,
          delivery_identifier: nil,
          # The ID of the conversations inbox that contains the channel account.
          inbox_id: nil,
          # The name of the channel account.
          name: nil
        )
        end

        sig do
          override.returns(
            {
              archived: T::Boolean,
              id: String,
              active: T::Boolean,
              archived_at: Time,
              authorized: T::Boolean,
              channel_id: String,
              created_at: Time,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier,
              inbox_id: String,
              name: String
            }
          )
        end
        def to_hash
        end
      end
    end
  end
end
