# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Batch
          # Create a batch of campaigns with specified properties. This endpoint allows for
          # the creation of multiple campaigns in a single request. Note that the 'hs_goal'
          # property is deprecated and will be ignored if provided.
          sig do
            params(
              inputs:
                T::Array[HubspotSDK::Marketing::PublicCampaignInput::OrHash],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::BatchResponsePublicCampaign)
          end
          def create(
            # An array of PublicCampaignInput objects, each representing the properties of a
            # campaign to be created in the batch. This property is required.
            inputs:,
            request_options: {}
          )
          end

          # Update a batch of marketing campaigns with specified properties. This endpoint
          # allows you to modify multiple campaigns in one request. Note that the 'hs_goal'
          # property is deprecated and will be ignored if provided.
          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::Marketing::PublicCampaignBatchUpdateItem::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::BatchResponsePublicCampaign)
          end
          def update(
            # An array of PublicCampaignBatchUpdateItem objects, each containing the ID and
            # properties to update for a specific campaign.
            inputs:,
            request_options: {}
          )
          end

          # Archive a batch of marketing campaigns in your HubSpot account. This operation
          # permanently removes the specified campaigns, making them inaccessible. It is
          # useful for cleaning up outdated or unnecessary campaigns in bulk.
          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::Marketing::PublicCampaignDeleteInput::OrHash
                ],
              request_options: HubspotSDK::RequestOptions::OrHash
            ).void
          end
          def delete(
            # An array of PublicCampaignDeleteInput objects, each specifying a campaign to be
            # deleted. Each object must include the campaign's unique identifier.
            inputs:,
            request_options: {}
          )
          end

          # Retrieve a batch of campaigns with specified properties and date range. This
          # endpoint allows you to filter campaigns by start and end dates and specify which
          # properties to include in the response.
          sig do
            params(
              inputs:
                T::Array[
                  HubspotSDK::Marketing::PublicCampaignReadInput::OrHash
                ],
              end_date: String,
              properties: T::Array[String],
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Marketing::BatchResponsePublicCampaignWithAssets
            )
          end
          def get(
            # Body param: An array of PublicCampaignReadInput objects, each containing the ID
            # of a campaign to be read. This property is required.
            inputs:,
            # Query param: The end date for filtering campaigns, in YYYY-MM-DD format.
            end_date: nil,
            # Query param: A comma-separated list of property names to include in the
            # response.
            properties: nil,
            # Query param: The start date for filtering campaigns, in YYYY-MM-DD format.
            start_date: nil,
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
