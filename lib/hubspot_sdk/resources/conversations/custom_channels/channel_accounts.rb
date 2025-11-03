# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Conversations
      class CustomChannels
        class ChannelAccounts
          # Create a new account for a channel. Multiple accounts can communicate over a
          # single channel using different delivery identifiers.
          #
          # @overload create(channel_id, authorized:, inbox_id:, name:, delivery_identifier: nil, request_options: {})
          #
          # @param channel_id [String]
          # @param authorized [Boolean]
          # @param inbox_id [String]
          # @param name [String]
          # @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Conversations::ConversationsPublicChannelAccount]
          #
          # @see HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountCreateParams
          def create(channel_id, params)
            parsed, options =
              HubspotSDK::Conversations::CustomChannels::ChannelAccountCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["conversations/v3/custom-channels/%1$s/channel-accounts", channel_id],
              body: parsed,
              model: HubspotSDK::Conversations::ConversationsPublicChannelAccount,
              options: options
            )
          end

          # This API is used to update the name of the channel account and it's isAuthorized
          # status. Setting to isAuthorized flag to False disables the channel account.
          #
          # @overload update(channel_account_id, channel_id:, authorized: nil, name: nil, request_options: {})
          #
          # @param channel_account_id [String] Path param:
          #
          # @param channel_id [String] Path param:
          #
          # @param authorized [Boolean] Body param:
          #
          # @param name [String] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Conversations::ConversationsPublicChannelAccount]
          #
          # @see HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountUpdateParams
          def update(channel_account_id, params)
            parsed, options =
              HubspotSDK::Conversations::CustomChannels::ChannelAccountUpdateParams.dump_request(params)
            channel_id =
              parsed.delete(:channel_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: [
                "conversations/v3/custom-channels/%1$s/channel-accounts/%2$s",
                channel_id,
                channel_account_id
              ],
              body: parsed,
              model: HubspotSDK::Conversations::ConversationsPublicChannelAccount,
              options: options
            )
          end

          # Retrieve a list of accounts for a custom channel.
          #
          # @overload list(channel_id, request_options: {})
          #
          # @param channel_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Conversations::CollectionResponseWithTotalPublicChannelAccountForwardPaging]
          #
          # @see HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountListParams
          def list(channel_id, params = {})
            @client.request(
              method: :get,
              path: ["conversations/v3/custom-channels/%1$s/channel-accounts", channel_id],
              model: HubspotSDK::Conversations::CollectionResponseWithTotalPublicChannelAccountForwardPaging,
              options: params[:request_options]
            )
          end

          # Retrieve the details for a specific channel account. This contains all the
          # metadata about your channel account, including its channel, associated inbox id,
          # and delivery identifier information.
          #
          # @overload get(channel_account_id, channel_id:, request_options: {})
          #
          # @param channel_account_id [String]
          # @param channel_id [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Conversations::ConversationsPublicChannelAccount]
          #
          # @see HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountGetParams
          def get(channel_account_id, params)
            parsed, options = HubspotSDK::Conversations::CustomChannels::ChannelAccountGetParams.dump_request(params)
            channel_id =
              parsed.delete(:channel_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: [
                "conversations/v3/custom-channels/%1$s/channel-accounts/%2$s",
                channel_id,
                channel_account_id
              ],
              model: HubspotSDK::Conversations::ConversationsPublicChannelAccount,
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
