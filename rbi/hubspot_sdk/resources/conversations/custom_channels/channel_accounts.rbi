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
            # Path param
            channel_account_id,
            # Path param
            channel_id:,
            # Body param
            authorized: nil,
            # Body param
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
              delivery_identifier_type:
                T::Array[
                  HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType::OrSymbol
                ],
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
            # The paging cursor token of the last successfully read resource will be returned
            # as the `paging.next.after` JSON property of a paged response containing more
            # results.
            after: nil,
            # Whether to return only results that have been archived.
            archived: nil,
            default_page_length: nil,
            delivery_identifier_type: nil,
            delivery_identifier_value: nil,
            # The maximum number of results to display per page.
            limit: nil,
            sort: nil,
            request_options: {}
          )
          end

          # Update a channel account staging token's account name and delivery identifier.
          # This information will be applied to the channel account created from this
          # staging token. This is used for public apps.
          sig do
            params(
              account_token: String,
              channel_id: Integer,
              account_name: String,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Conversations::PublicChannelAccountStagingToken
            )
          end
          def update_staging_token(
            # Path param
            account_token,
            # Path param
            channel_id:,
            # Body param
            account_name: nil,
            # Body param
            delivery_identifier: nil,
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
