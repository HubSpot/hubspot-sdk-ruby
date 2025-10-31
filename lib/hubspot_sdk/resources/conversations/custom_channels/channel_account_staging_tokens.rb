# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class CustomChannels
        class ChannelAccountStagingTokens
          # Update a channel account staging token's account name and delivery identifier.
          # This information will be applied to the channel account created from this
          # staging token. This is used for public apps.
          #
          # @overload update(account_token, channel_id:, account_name:, delivery_identifier:, request_options: {})
          #
          # @param account_token [String] Path param:
          #
          # @param channel_id [String] Path param:
          #
          # @param account_name [String] Body param:
          #
          # @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Conversations::PublicChannelAccountStagingToken]
          #
          # @see HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountStagingTokenUpdateParams
          def update(account_token, params)
            parsed, options =
              HubspotSDK::Conversations::CustomChannels::ChannelAccountStagingTokenUpdateParams.dump_request(params)
            channel_id =
              parsed.delete(:channel_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: [
                "conversations/v3/custom-channels/%1$s/channel-account-staging-tokens/%2$s",
                channel_id,
                account_token
              ],
              body: parsed,
              model: HubspotSDK::Conversations::PublicChannelAccountStagingToken,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
