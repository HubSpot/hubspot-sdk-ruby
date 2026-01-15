# typed: strong

module HubspotSDK
  module Resources
    class Conversations
      class CustomChannels
        class ChannelAccountStagingTokens
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
          def update(
            # Path param: The unique token identifying the channel account staging token to
            # update.
            account_token,
            # Path param: The ID of the channel associated with the staging token being
            # updated.
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
