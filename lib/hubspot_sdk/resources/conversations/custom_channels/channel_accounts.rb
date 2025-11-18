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
          # @param channel_id [Integer] The ID of the channel for which the account is being created.
          #
          # @param authorized [Boolean]
          #
          # @param inbox_id [String]
          #
          # @param name [String]
          #
          # @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Conversations::PublicChannelAccount]
          #
          # @see HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountCreateParams
          def create(channel_id, params)
            parsed, options =
              HubspotSDK::Conversations::CustomChannels::ChannelAccountCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["conversations/v3/custom-channels/%1$s/channel-accounts", channel_id],
              body: parsed,
              model: HubspotSDK::Conversations::PublicChannelAccount,
              options: options
            )
          end

          # This API is used to update the name of the channel account and it's isAuthorized
          # status. Setting to isAuthorized flag to False disables the channel account.
          #
          # @overload update(channel_account_id, channel_id:, authorized: nil, name: nil, request_options: {})
          #
          # @param channel_account_id [Integer] Path param: The channel account to update
          #
          # @param channel_id [Integer] Path param: The channel to update
          #
          # @param authorized [Boolean] Body param:
          #
          # @param name [String] Body param:
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Conversations::PublicChannelAccount]
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
              model: HubspotSDK::Conversations::PublicChannelAccount,
              options: options
            )
          end

          # Retrieve a list of accounts for a custom channel.
          #
          # @overload list(channel_id, after: nil, archived: nil, default_page_length: nil, delivery_identifier_type: nil, delivery_identifier_value: nil, limit: nil, sort: nil, request_options: {})
          #
          # @param channel_id [Integer]
          # @param after [String]
          # @param archived [Boolean]
          # @param default_page_length [Integer]
          # @param delivery_identifier_type [Array<String>]
          # @param delivery_identifier_value [Array<String>]
          # @param limit [Integer]
          # @param sort [Array<String>]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Conversations::PublicChannelAccount>]
          #
          # @see HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountListParams
          def list(channel_id, params = {})
            parsed, options =
              HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams.dump_request(params)
            @client.request(
              method: :get,
              path: ["conversations/v3/custom-channels/%1$s/channel-accounts", channel_id],
              query: parsed.transform_keys(
                default_page_length: "defaultPageLength",
                delivery_identifier_type: "deliveryIdentifierType",
                delivery_identifier_value: "deliveryIdentifierValue"
              ),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Conversations::PublicChannelAccount,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountGetParams} for
          # more details.
          #
          # Retrieve the details for a specific channel account. This contains all the
          # metadata about your channel account, including its channel, associated inbox id,
          # and delivery identifier information.
          #
          # @overload get(channel_account_id, channel_id:, archived: nil, request_options: {})
          #
          # @param channel_account_id [Integer] Path param: The ID of the channel account to retrieve.
          #
          # @param channel_id [Integer] Path param: The ID of the channel associated with the account being retrieved.
          #
          # @param archived [Boolean] Query param: Filter results to include only archived or non-archived channel acc
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Conversations::PublicChannelAccount]
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
              query: parsed,
              model: HubspotSDK::Conversations::PublicChannelAccount,
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
