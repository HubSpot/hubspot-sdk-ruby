# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Budget
          # Add a new budget item to the specified campaign. This operation allows you to
          # allocate a budget for a campaign by specifying the necessary details in the
          # request body.
          #
          # @overload create(campaign_guid, amount:, name:, order:, description: nil, request_options: {})
          #
          # @param campaign_guid [String] The unique identifier of the campaign to which the budget item will be added.
          #
          # @param amount [Float] The monetary value assigned to the budget item.
          #
          # @param name [String] The name of the budget item.
          #
          # @param order [Integer] The sequence number indicating the order of the budget item.
          #
          # @param description [String] A detailed explanation or notes about the budget item.
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
              path: ["marketing/campaigns/2026-03/%1$s/budget", campaign_guid],
              body: parsed,
              model: HubspotSDK::Marketing::PublicBudgetItem,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::BudgetUpdateParams} for more details.
          #
          # Update a specific budget item by its ID within a marketing campaign. This
          # operation allows you to modify the details of a budget item, such as its amount,
          # name, or order, ensuring that your campaign's financial records are accurate and
          # up-to-date.
          #
          # @overload update(budget_id, campaign_guid:, amount:, name:, order:, description: nil, request_options: {})
          #
          # @param budget_id [Integer] Path param: The unique identifier of the budget item to update.
          #
          # @param campaign_guid [String] Path param: The unique identifier of the campaign to which the budget item belon
          #
          # @param amount [Float] Body param: The monetary value assigned to the budget item.
          #
          # @param name [String] Body param: The name of the budget item.
          #
          # @param order [Integer] Body param: The sequence number indicating the order of the budget item.
          #
          # @param description [String] Body param: A detailed explanation or notes about the budget item.
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
              path: ["marketing/campaigns/2026-03/%1$s/budget/%2$s", campaign_guid, budget_id],
              body: parsed,
              model: HubspotSDK::Marketing::PublicBudgetItem,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::BudgetDeleteParams} for more details.
          #
          # Delete a specific budget item from a campaign using its unique ID. This
          # operation removes the budget item from the campaign's budget list, ensuring it
          # is no longer considered in budget calculations.
          #
          # @overload delete(budget_id, campaign_guid:, request_options: {})
          #
          # @param budget_id [Integer] The unique identifier of the budget item to be deleted.
          #
          # @param campaign_guid [String] The unique identifier of the campaign from which the budget item will be deleted
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
              path: ["marketing/campaigns/2026-03/%1$s/budget/%2$s", campaign_guid, budget_id],
              model: NilClass,
              options: options
            )
          end

          # Retrieve a specific budget item by its ID for a given campaign. This endpoint is
          # useful for accessing detailed information about a particular budget item
          # associated with a marketing campaign.
          #
          # @overload get(budget_id, campaign_guid:, request_options: {})
          #
          # @param budget_id [Integer] The unique identifier of the budget item to retrieve.
          #
          # @param campaign_guid [String] The unique identifier of the campaign.
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
              path: ["marketing/campaigns/2026-03/%1$s/budget/%2$s", campaign_guid, budget_id],
              model: HubspotSDK::Marketing::PublicBudgetItem,
              options: options
            )
          end

          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Campaigns::BudgetGetTotalsParams} for more
          # details.
          #
          # Retrieve budget and spending items along with their totals for a specific
          # campaign. This endpoint provides insights into the financial allocations and
          # expenditures associated with the campaign, helping users to manage and analyze
          # campaign budgets effectively.
          #
          # @overload get_totals(campaign_guid, request_options: {})
          #
          # @param campaign_guid [String] The unique identifier of the campaign for which the budget and spending totals a
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::PublicBudgetTotals]
          #
          # @see HubspotSDK::Models::Marketing::Campaigns::BudgetGetTotalsParams
          def get_totals(campaign_guid, params = {})
            @client.request(
              method: :get,
              path: ["marketing/campaigns/2026-03/%1$s/budget/totals", campaign_guid],
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
