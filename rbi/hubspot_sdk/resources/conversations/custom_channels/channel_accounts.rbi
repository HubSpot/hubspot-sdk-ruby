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
              channel_id: Integer,
              authorized: T::Boolean,
              inbox_id: String,
              name: String,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Conversations::PublicChannelAccount)
          end
          def create(
            # The ID of the channel for which the account is being created.
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
              channel_account_id: Integer,
              channel_id: Integer,
              authorized: T::Boolean,
              name: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Conversations::PublicChannelAccount)
          end
          def update(
            # Path param: The channel account to update
            channel_account_id,
            # Path param: The channel to update
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
              channel_id: Integer,
              after: String,
              archived: T::Boolean,
              default_page_length: Integer,
              delivery_identifier_type: T::Array[String],
              delivery_identifier_value: T::Array[String],
              limit: Integer,
              sort: T::Array[String],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Conversations::PublicChannelAccount
              ]
            )
          end
          def list(
            channel_id,
            after: nil,
            archived: nil,
            default_page_length: nil,
            delivery_identifier_type: nil,
            delivery_identifier_value: nil,
            limit: nil,
            sort: nil,
            request_options: {}
          )
          end

          # Retrieve the details for a specific channel account. This contains all the
          # metadata about your channel account, including its channel, associated inbox id,
          # and delivery identifier information.
          sig do
            params(
              channel_account_id: Integer,
              channel_id: Integer,
              archived: T::Boolean,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Conversations::PublicChannelAccount)
          end
          def get(
            # Path param: The ID of the channel account to retrieve.
            channel_account_id,
            # Path param: The ID of the channel associated with the account being retrieved.
            channel_id:,
            # Query param: Filter results to include only archived or non-archived channel
            # accounts.
            archived: nil,
            request_options: {}
          )
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
