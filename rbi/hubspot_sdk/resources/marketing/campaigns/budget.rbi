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
            # Unique identifier for the campaign.
            campaign_guid,
            amount:,
            name:,
            order:,
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
            # Path param: Unique identifier for the budget item.
            budget_id,
            # Path param: Unique identifier for the campaign.
            campaign_guid:,
            # Body param:
            amount:,
            # Body param:
            name:,
            # Body param:
            order:,
            # Body param:
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
          def delete(
            # Unique identifier for the budget item.
            budget_id,
            # Unique identifier for the campaign.
            campaign_guid:,
            request_options: {}
          )
          end

          # Get a specific budget item by ID
          sig do
            params(
              budget_id: Integer,
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicBudgetItem)
          end
          def get(
            # Unique identifier for the budget item.
            budget_id,
            # Unique identifier for the campaign.
            campaign_guid:,
            request_options: {}
          )
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
          def get_totals(
            # Unique identifier for the campaign, formatted as a UUID.
            campaign_guid,
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
