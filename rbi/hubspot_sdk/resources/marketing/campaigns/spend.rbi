# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Spend
          # Create a new campaign spend item
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
            # Unique identifier for the campaign.
            campaign_guid,
            amount:,
            name:,
            order:,
            description: nil,
            request_options: {}
          )
          end

          # Update a specific campaign spend item by ID
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
            # Path param: Unique identifier for the spend item.
            spend_id,
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

          # Delete a specific campaign spend item by ID
          sig do
            params(
              spend_id: Integer,
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # Unique identifier for the spend item.
            spend_id,
            # Unique identifier for the campaign.
            campaign_guid:,
            request_options: {}
          )
          end

          # Read a campaign spend item by its spendId
          sig do
            params(
              spend_id: Integer,
              campaign_guid: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::PublicSpendItem)
          end
          def get(
            # Unique identifier for the spend item.
            spend_id,
            # Unique identifier for the campaign.
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
