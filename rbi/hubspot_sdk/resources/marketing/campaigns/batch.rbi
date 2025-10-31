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
          def create(inputs:, request_options: {})
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
          def update(inputs:, request_options: {})
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
          def delete(inputs:, request_options: {})
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
            # Body param:
            inputs:,
            # Query param: End date to fetch asset metrics, formatted as YYYY-MM-DD. This date
            # is used to fetch the metrics associated with the assets for a specified period.
            # If not provided, no asset metrics will be fetched.
            end_date: nil,
            # Query param: A comma-separated list of the properties to be returned in the
            # response. If any of the specified properties has empty value on the requested
            # object(s), they will be ignored and not returned in response. If this parameter
            # is empty, the response will include an empty properties map.
            properties: nil,
            # Query param: Start date to fetch asset metrics, formatted as YYYY-MM-DD. This
            # date is used to fetch the metrics associated with the assets for a specified
            # period. If not provided, no asset metrics will be fetched.
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
