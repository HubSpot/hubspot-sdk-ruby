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
          # @param channel_id [Integer]
          # @param authorized [Boolean]
          # @param inbox_id [String]
          # @param name [String]
          # @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier]
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
              path: ["conversations/custom-channels/2026-03/%1$s/channel-accounts", channel_id],
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
          # @param channel_account_id [Integer] Path param
          #
          # @param channel_id [Integer] Path param
          #
          # @param authorized [Boolean] Body param
          #
          # @param name [String] Body param
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
                "conversations/custom-channels/2026-03/%1$s/channel-accounts/%2$s",
                channel_id,
                channel_account_id
              ],
              body: parsed,
              model: HubspotSDK::Conversations::PublicChannelAccount,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountListParams}
          # for more details.
          #
          # Retrieve a list of accounts for a custom channel.
          #
          # @overload list(channel_id, after: nil, archived: nil, default_page_length: nil, delivery_identifier_type: nil, delivery_identifier_value: nil, limit: nil, sort: nil, request_options: {})
          #
          # @param channel_id [Integer]
          #
          # @param after [String] The paging cursor token of the last successfully read resource will be returned
          #
          # @param archived [Boolean] Whether to return only results that have been archived.
          #
          # @param default_page_length [Integer]
          #
          # @param delivery_identifier_type [Array<Symbol, HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountListParams::DeliveryIdentifierType>]
          #
          # @param delivery_identifier_value [Array<String>]
          #
          # @param limit [Integer] The maximum number of results to display per page.
          #
          # @param sort [Array<String>]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Internal::Page<HubspotSDK::Models::Conversations::PublicChannelAccount>]
          #
          # @see HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountListParams
          def list(channel_id, params = {})
            parsed, options =
              HubspotSDK::Conversations::CustomChannels::ChannelAccountListParams.dump_request(params)
            query = HubspotSDK::Internal::Util.encode_query_params(parsed)
            @client.request(
              method: :get,
              path: ["conversations/custom-channels/2026-03/%1$s/channel-accounts", channel_id],
              query: query.transform_keys(
                default_page_length: "defaultPageLength",
                delivery_identifier_type: "deliveryIdentifierType",
                delivery_identifier_value: "deliveryIdentifierValue"
              ),
              page: HubspotSDK::Internal::Page,
              model: HubspotSDK::Conversations::PublicChannelAccount,
              options: options
            )
          end

          # Update a channel account staging token's account name and delivery identifier.
          # This information will be applied to the channel account created from this
          # staging token. This is used for public apps.
          #
          # @overload update_staging_token(account_token, channel_id:, account_name: nil, delivery_identifier: nil, request_options: {})
          #
          # @param account_token [String] Path param
          #
          # @param channel_id [Integer] Path param
          #
          # @param account_name [String] Body param
          #
          # @param delivery_identifier [HubspotSDK::Models::Conversations::PublicDeliveryIdentifier] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Conversations::PublicChannelAccountStagingToken]
          #
          # @see HubspotSDK::Models::Conversations::CustomChannels::ChannelAccountUpdateStagingTokenParams
          def update_staging_token(account_token, params)
            parsed, options =
              HubspotSDK::Conversations::CustomChannels::ChannelAccountUpdateStagingTokenParams.dump_request(params)
            channel_id =
              parsed.delete(:channel_id) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :patch,
              path: [
                "conversations/custom-channels/2026-03/%1$s/channel-account-staging-tokens/%2$s",
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
