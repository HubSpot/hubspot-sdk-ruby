# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class CustomChannels
        class ChannelAccounts
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
            account_name:,
            # Body param
            delivery_identifier:,
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
