# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Spend
          # Create a new campaign spend item
          #
          # @overload create(campaign_guid, amount:, name:, order:, description: nil, request_options: {})
          #
          # @param campaign_guid [String]
          #
          # @param amount [Float] The monetary value of the spend item.
          #
          # @param name [String] The name of the spend item.
          #
          # @param order [Integer] The sequence number indicating the order of the spend item.
          #
          # @param description [String] A brief description of the spend item.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::PublicSpendItem]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::SpendCreateParams
          def create(campaign_guid, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::SpendCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["marketing/campaigns/2026-03/%1$s/spend", campaign_guid],
              body: parsed,
              model: HubspotSDK::Marketing::PublicSpendItem,
              options: options
            )
          end

          # Update a specific campaign spend item by ID
          #
          # @overload update(spend_id, campaign_guid:, amount:, name:, order:, description: nil, request_options: {})
          #
          # @param spend_id [Integer] Path param
          #
          # @param campaign_guid [String] Path param
          #
          # @param amount [Float] Body param: The monetary value of the spend item.
          #
          # @param name [String] Body param: The name of the spend item.
          #
          # @param order [Integer] Body param: The sequence number indicating the order of the spend item.
          #
          # @param description [String] Body param: A brief description of the spend item.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::PublicSpendItem]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::SpendUpdateParams
          def update(spend_id, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::SpendUpdateParams.dump_request(params)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["marketing/campaigns/2026-03/%1$s/spend/%2$s", campaign_guid, spend_id],
              body: parsed,
              model: HubspotSDK::Marketing::PublicSpendItem,
              options: options
            )
          end

          # Delete a specific campaign spend item by ID
          #
          # @overload delete(spend_id, campaign_guid:, request_options: {})
          #
          # @param spend_id [Integer]
          # @param campaign_guid [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::SpendDeleteParams
          def delete(spend_id, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::SpendDeleteParams.dump_request(params)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["marketing/campaigns/2026-03/%1$s/spend/%2$s", campaign_guid, spend_id],
              model: NilClass,
              options: options
            )
          end

          # Read a campaign spend item by its spendId
          #
          # @overload get(spend_id, campaign_guid:, request_options: {})
          #
          # @param spend_id [Integer]
          # @param campaign_guid [String]
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::PublicSpendItem]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::SpendGetParams
          def get(spend_id, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::SpendGetParams.dump_request(params)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["marketing/campaigns/2026-03/%1$s/spend/%2$s", campaign_guid, spend_id],
              model: HubspotSDK::Marketing::PublicSpendItem,
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
