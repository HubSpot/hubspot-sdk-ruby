# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Batch
          # This endpoint creates a batch of campaigns. The maximum number of items in a
          # batch request is 50. The campaigns in the response are not guaranteed to be in
          # the same order as they were provided in the request.
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

          # This endpoint updates a batch of campaigns based on the provided input data. The
          # maximum number of items in a batch request is 50. If an empty string ("") is
          # passed for any property in the Batch Update, it will reset that property's
          # value.
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

          # This endpoint deletes a batch of campaigns. The maximum number of items in a
          # batch request is 50. The response will always be 204 No Content, regardless of
          # whether the campaigns exist or not, whether they were successfully deleted or
          # not, or if only some of the campaigns in the batch were deleted.
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

          # This endpoint reads a batch of campaigns based on the provided input data and
          # returns the campaigns along with their associated assets. The maximum number of
          # items in a batch request is 50. The campaigns in the response are not guaranteed
          # to be in the same order as they were provided in the request. If duplicate
          # campaign IDs are provided in the request, duplicates will be ignored. The
          # response will include only unique IDs and will be returned without duplicates.
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
            # Query param
            end_date: nil,
            # Query param
            properties: nil,
            # Query param
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
