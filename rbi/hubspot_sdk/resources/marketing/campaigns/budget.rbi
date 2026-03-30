# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Budget
          # Add a new budget item to the campaign
          sig do
            params(
              campaign_guid: String,
              amount: Float,
              name: String,
              order: Integer,
              description: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicBudgetItem)
          end
          def create(
            campaign_guid,
            # The monetary value assigned to the budget item.
            amount:,
            # The name of the budget item.
            name:,
            # The sequence number indicating the order of the budget item.
            order:,
            # A detailed explanation or notes about the budget item.
            description: nil,
            request_options: {}
          )
          end

          # Update a specific budget item by ID
          sig do
            params(
              budget_id: Integer,
              campaign_guid: String,
              amount: Float,
              name: String,
              order: Integer,
              description: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicBudgetItem)
          end
          def update(
            # Path param
            budget_id,
            # Path param
            campaign_guid:,
            # Body param: The monetary value assigned to the budget item.
            amount:,
            # Body param: The name of the budget item.
            name:,
            # Body param: The sequence number indicating the order of the budget item.
            order:,
            # Body param: A detailed explanation or notes about the budget item.
            description: nil,
            request_options: {}
          )
          end

          # Delete a specific budget item by ID
          sig do
            params(
              budget_id: Integer,
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(budget_id, campaign_guid:, request_options: {})
          end

          # Get a specific budget item by ID
          sig do
            params(
              budget_id: Integer,
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicBudgetItem)
          end
          def get(budget_id, campaign_guid:, request_options: {})
          end

          # Retrieve detailed information about the budget and spend items for a specified
          # campaign, including the total budget, total spend, and remaining budget. Budget
          # and Spend items may be returned in any order, but the order field specifies
          # their sequence based on the creation date. The item with order 0 is the oldest,
          # and items with higher order values are newer
          sig do
            params(
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicBudgetTotals)
          end
          def get_totals(campaign_guid, request_options: {})
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
