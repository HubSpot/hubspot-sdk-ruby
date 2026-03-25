# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Spend
          # Create a new campaign spend item for a specific campaign identified by its
          # unique ID. This endpoint allows you to add financial details related to campaign
          # expenditures, which can be useful for budget tracking and financial reporting.
          sig do
            params(
              campaign_guid: String,
              amount: Float,
              name: String,
              order: Integer,
              description: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicSpendItem)
          end
          def create(
            # The unique identifier of the campaign for which the spend item is being created.
            campaign_guid,
            # The monetary value of the spend item.
            amount:,
            # The name of the spend item.
            name:,
            # The sequence number indicating the order of the spend item.
            order:,
            # A brief description of the spend item.
            description: nil,
            request_options: {}
          )
          end

          # Update a specific campaign spend item by its ID. This endpoint allows you to
          # modify the details of a spend item associated with a marketing campaign, such as
          # its amount, name, or order. Use this to keep your campaign spend data accurate
          # and up-to-date.
          sig do
            params(
              spend_id: Integer,
              campaign_guid: String,
              amount: Float,
              name: String,
              order: Integer,
              description: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicSpendItem)
          end
          def update(
            # Path param: The unique identifier of the spend item to update.
            spend_id,
            # Path param: The unique identifier of the campaign.
            campaign_guid:,
            # Body param: The monetary value of the spend item.
            amount:,
            # Body param: The name of the spend item.
            name:,
            # Body param: The sequence number indicating the order of the spend item.
            order:,
            # Body param: A brief description of the spend item.
            description: nil,
            request_options: {}
          )
          end

          # Delete a specific campaign spend item by its ID. This operation is useful for
          # removing spend items that are no longer needed or were added in error. Once
          # deleted, the spend item cannot be recovered.
          sig do
            params(
              spend_id: Integer,
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # The unique identifier of the spend item to delete.
            spend_id,
            # The unique identifier of the campaign.
            campaign_guid:,
            request_options: {}
          )
          end

          # Retrieve details of a specific campaign spend item using its spendId. This
          # endpoint allows you to access information about the spend associated with a
          # particular campaign, identified by the campaignGuid.
          sig do
            params(
              spend_id: Integer,
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicSpendItem)
          end
          def get(
            # The unique identifier of the spend item to retrieve.
            spend_id,
            # The unique identifier of the campaign.
            campaign_guid:,
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
