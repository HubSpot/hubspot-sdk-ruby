# typed: strong

module HubSpotSDK
  module Resources
    class Marketing
      class Campaigns
        class Metrics
          # This endpoint retrieves key attribution metrics for a specified campaign, such
          # as sessions, new contacts, and influenced contacts.
          sig do
            params(
              campaign_guid: String,
              end_date: String,
              start_date: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Marketing::MetricsCounters)
          end
          def get_attribution_metrics(
            # The unique identifier of the campaign
            campaign_guid,
            end_date: nil,
            start_date: nil,
            request_options: {}
          )
          end

          # Fetch revenue attribution report data for a specified campaign
          sig do
            params(
              campaign_guid: String,
              attribution_model: String,
              end_date: String,
              start_date: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(HubSpotSDK::Marketing::RevenueAttributionAggregate)
          end
          def get_revenue_attribution(
            # The unique identifier of the campaign
            campaign_guid,
            attribution_model: nil,
            # End date to fetch attribution data, YYYY-MM-DD
            end_date: nil,
            # Start date to fetch attribution data, YYYY-MM-DD
            start_date: nil,
            request_options: {}
          )
          end

          # Fetch the list of contact IDs for the specified campaign and contact type
          sig do
            params(
              contact_type: String,
              campaign_guid: String,
              after: String,
              end_date: String,
              limit: Integer,
              start_date: String,
              request_options: HubSpotSDK::RequestOptions::OrHash
            ).returns(
              HubSpotSDK::Internal::Page[
                HubSpotSDK::Marketing::ContactReference
              ]
            )
          end
          def list_contact_ids_by_type(
            # Path param: The type of contact to filter the list
            contact_type,
            # Path param: The unique identifier of the campaign
            campaign_guid:,
            # Query param: The paging cursor token of the last successfully read resource will
            # be returned as the `paging.next.after` JSON property of a paged response
            # containing more results.
            after: nil,
            # Query param
            end_date: nil,
            # Query param: The maximum number of results to display per page.
            limit: nil,
            # Query param
            start_date: nil,
            request_options: {}
          )
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
