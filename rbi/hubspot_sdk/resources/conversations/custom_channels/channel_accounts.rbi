# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class CustomChannels
        class ChannelAccounts
          # Create a new account for a channel. Multiple accounts can communicate over a
          # single channel using different delivery identifiers.
          sig do
            params(
              channel_id: String,
              authorized: T::Boolean,
              inbox_id: String,
              name: String,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Conversations::ConversationsPublicChannelAccount
            )
          end
          def create(
            channel_id,
            authorized:,
            inbox_id:,
            name:,
            delivery_identifier: nil,
            request_options: {}
          )
          end

          # This API is used to update the name of the channel account and it's isAuthorized
          # status. Setting to isAuthorized flag to False disables the channel account.
          sig do
            params(
              channel_account_id: String,
              channel_id: String,
              authorized: T::Boolean,
              name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Conversations::ConversationsPublicChannelAccount
            )
          end
          def update(
            # Path param:
            channel_account_id,
            # Path param:
            channel_id:,
            # Body param:
            authorized: nil,
            # Body param:
            name: nil,
            request_options: {}
          )
          end

          # Retrieve a list of accounts for a custom channel.
          sig do
            params(
              channel_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Conversations::CollectionResponseWithTotalPublicChannelAccountForwardPaging
            )
          end
          def list(channel_id, request_options: {})
          end

          # Retrieve the details for a specific channel account. This contains all the
          # metadata about your channel account, including its channel, associated inbox id,
          # and delivery identifier information.
          sig do
            params(
              channel_account_id: String,
              channel_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Conversations::ConversationsPublicChannelAccount
            )
          end
          def get(channel_account_id, channel_id:, request_options: {})
          end

          # @api private
          sig { params(client: HubspotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
