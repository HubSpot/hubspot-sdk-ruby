# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Budget
          # Add a new budget item to the campaign
          #
          # @overload create(campaign_guid, amount:, name:, order:, description: nil, request_options: {})
          #
          # @param campaign_guid [String] Unique identifier for the campaign.
          #
          # @param amount [Float]
          #
          # @param name [String]
          #
          # @param order [Integer]
          #
          # @param description [String]
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::PublicBudgetItem]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::BudgetCreateParams
          def create(campaign_guid, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::BudgetCreateParams.dump_request(params)
            @client.request(
              method: :post,
              path: ["marketing/v3/campaigns/%1$s/budget", campaign_guid],
              body: parsed,
              model: HubspotSDK::Marketing::PublicBudgetItem,
              options: options
            )
          end

          # Update a specific budget item by ID
          #
          # @overload update(budget_id, campaign_guid:, amount:, name:, order:, description: nil, request_options: {})
          #
          # @param budget_id [Integer] Path param: Unique identifier for the budget item.
          #
          # @param campaign_guid [String] Path param: Unique identifier for the campaign.
          #
          # @param amount [Float] Body param
          #
          # @param name [String] Body param
          #
          # @param order [Integer] Body param
          #
          # @param description [String] Body param
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::PublicBudgetItem]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::BudgetUpdateParams
          def update(budget_id, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::BudgetUpdateParams.dump_request(params)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :put,
              path: ["marketing/v3/campaigns/%1$s/budget/%2$s", campaign_guid, budget_id],
              body: parsed,
              model: HubspotSDK::Marketing::PublicBudgetItem,
              options: options
            )
          end

          # Delete a specific budget item by ID
          #
          # @overload delete(budget_id, campaign_guid:, request_options: {})
          #
          # @param budget_id [Integer] Unique identifier for the budget item.
          #
          # @param campaign_guid [String] Unique identifier for the campaign.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [nil]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::BudgetDeleteParams
          def delete(budget_id, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::BudgetDeleteParams.dump_request(params)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :delete,
              path: ["marketing/v3/campaigns/%1$s/budget/%2$s", campaign_guid, budget_id],
              model: NilClass,
              options: options
            )
          end

          # Get a specific budget item by ID
          #
          # @overload get(budget_id, campaign_guid:, request_options: {})
          #
          # @param budget_id [Integer] Unique identifier for the budget item.
          #
          # @param campaign_guid [String] Unique identifier for the campaign.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::PublicBudgetItem]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::BudgetGetParams
          def get(budget_id, params)
            parsed, options = HubspotSDK::Marketing::Campaigns::BudgetGetParams.dump_request(params)
            campaign_guid =
              parsed.delete(:campaign_guid) do
                raise ArgumentError.new("missing required path argument #{_1}")
              end
            @client.request(
              method: :get,
              path: ["marketing/v3/campaigns/%1$s/budget/%2$s", campaign_guid, budget_id],
              model: HubspotSDK::Marketing::PublicBudgetItem,
              options: options
            )
          end

          # Retrieve detailed information about the budget and spend items for a specified
          # campaign, including the total budget, total spend, and remaining budget. Budget
          # and Spend items may be returned in any order, but the order field specifies
          # their sequence based on the creation date. The item with order 0 is the oldest,
          # and items with higher order values are newer
          #
          # @overload get_totals(campaign_guid, request_options: {})
          #
          # @param campaign_guid [String] Unique identifier for the campaign, formatted as a UUID.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::PublicBudgetTotals]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::BudgetGetTotalsParams
          def get_totals(campaign_guid, params = {})
            @client.request(
              method: :get,
              path: ["marketing/v3/campaigns/%1$s/budget/totals", campaign_guid],
              model: HubspotSDK::Marketing::PublicBudgetTotals,
              options: params[:request_options]
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
