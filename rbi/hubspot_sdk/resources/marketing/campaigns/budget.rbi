# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Budget
          # Add a new budget item to the specified campaign. This operation allows you to
          # allocate a budget for a campaign by specifying the necessary details in the
          # request body.
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
            # The unique identifier of the campaign to which the budget item will be added.
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

          # Update a specific budget item by its ID within a marketing campaign. This
          # operation allows you to modify the details of a budget item, such as its amount,
          # name, or order, ensuring that your campaign's financial records are accurate and
          # up-to-date.
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
            # Path param: The unique identifier of the budget item to update.
            budget_id,
            # Path param: The unique identifier of the campaign to which the budget item
            # belongs.
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

          # Delete a specific budget item from a campaign using its unique ID. This
          # operation removes the budget item from the campaign's budget list, ensuring it
          # is no longer considered in budget calculations.
          sig do
            params(
              budget_id: Integer,
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The unique identifier of the budget item to be deleted.
            budget_id,
            # The unique identifier of the campaign from which the budget item will be
            # deleted.
            campaign_guid:,
            request_options: {}
          )
          end

          # Retrieve a specific budget item by its ID for a given campaign. This endpoint is
          # useful for accessing detailed information about a particular budget item
          # associated with a marketing campaign.
          sig do
            params(
              budget_id: Integer,
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicBudgetItem)
          end
          def get(
            # The unique identifier of the budget item to retrieve.
            budget_id,
            # The unique identifier of the campaign.
            campaign_guid:,
            request_options: {}
          )
          end

          # Retrieve budget and spending items along with their totals for a specific
          # campaign. This endpoint provides insights into the financial allocations and
          # expenditures associated with the campaign, helping users to manage and analyze
          # campaign budgets effectively.
          sig do
            params(
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicBudgetTotals)
          end
          def get_totals(
            # The unique identifier of the campaign for which the budget and spending totals
            # are being retrieved.
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
