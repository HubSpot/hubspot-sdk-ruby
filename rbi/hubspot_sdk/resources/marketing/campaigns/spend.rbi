# typed: strong

module HubSpotSDK
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
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Marketing::PublicSpendItem)
          end
          def create(
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

          # Update a specific campaign spend item by ID
          sig do
            params(
              spend_id: Integer,
              campaign_guid: String,
              amount: Float,
              name: String,
              order: Integer,
              description: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Marketing::PublicSpendItem)
          end
          def update(
            # Path param
            spend_id,
            # Path param
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

          # Delete a specific campaign spend item by ID
          sig do
            params(
              spend_id: Integer,
              campaign_guid: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(spend_id, campaign_guid:, request_options: {})
          end

          # Read a campaign spend item by its spendId
          sig do
            params(
              spend_id: Integer,
              campaign_guid: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Marketing::PublicSpendItem)
          end
          def get(spend_id, campaign_guid:, request_options: {})
          end

          # @api private
          sig { params(client: HubSpotSDK::Client).returns(T.attached_class) }
          def self.new(client:)
          end
        end
      end
    end
  end
end
