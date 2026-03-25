# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Metrics
          # Fetch the metrics for a specific marketing campaign using its unique identifier.
          # This endpoint allows you to retrieve various performance metrics of the
          # campaign, which can be useful for analyzing the effectiveness of your marketing
          # efforts over a specified time period.
          sig do
            params(
              campaign_guid: String,
              end_date: String,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::MetricsCounters)
          end
          def get_attribution_metrics(
            # The unique identifier of the campaign for which metrics are being fetched.
            campaign_guid,
            # The end date for fetching metrics, in YYYY-MM-DD format.
            end_date: nil,
            # The start date for fetching metrics, in YYYY-MM-DD format.
            start_date: nil,
            request_options: {}
          )
          end

          # Fetch revenue attribution report data for a specific campaign. This endpoint
          # allows you to retrieve detailed revenue attribution information, which can be
          # filtered by attribution model and date range. It is useful for analyzing the
          # financial impact of marketing campaigns.
          sig do
            params(
              campaign_guid: String,
              attribution_model: String,
              end_date: String,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::RevenueAttributionAggregate)
          end
          def get_revenue_attribution(
            # The unique identifier of the campaign.
            campaign_guid,
            # The model used to attribute revenue to the campaign.
            attribution_model: nil,
            # End date to fetch attribution data, YYYY-MM-DD.
            end_date: nil,
            # Start date to fetch attribution data, YYYY-MM-DD.
            start_date: nil,
            request_options: {}
          )
          end

          # Fetch the list of contact IDs for the specified campaign and contact type. This
          # endpoint allows you to retrieve contact identifiers associated with a particular
          # campaign, filtered by the type of contact. It is useful for analyzing or
          # processing contacts involved in specific marketing campaigns.
          sig do
            params(
              contact_type: String,
              campaign_guid: String,
              after: String,
              end_date: String,
              limit: Integer,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Marketing::ContactReference
              ]
            )
          end
          def list_contact_ids_by_type(
            # Path param: The type of contact to filter the list.
            contact_type,
            # Path param: The unique identifier of the campaign.
            campaign_guid:,
            # Query param: The paging cursor token of the last successfully read resource,
            # used for pagination.
            after: nil,
            # Query param: The end date for filtering contacts, formatted as a string.
            end_date: nil,
            # Query param: The maximum number of results to display per page.
            limit: nil,
            # Query param: The start date for filtering contacts, formatted as a string.
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
