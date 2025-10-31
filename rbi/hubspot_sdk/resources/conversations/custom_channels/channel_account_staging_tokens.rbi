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
              channel_id: String,
              account_name: String,
              delivery_identifier:
                HubspotSDK::Conversations::PublicDeliveryIdentifier::OrHash,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Conversations::PublicChannelAccountStagingToken
            )
          end
          def update(
            # Path param:
            account_token,
            # Path param:
            channel_id:,
            # Body param:
            account_name:,
            # Body param:
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
