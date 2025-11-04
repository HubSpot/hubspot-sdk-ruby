# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Campaigns
        class Reports
          # This endpoint retrieves key attribution metrics for a specified campaign, such
          # as sessions, new contacts, and influenced contacts.
          sig do
            params(
              campaign_guid: String,
              end_date: String,
              start_date: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::MetricsCounters)
          end
          def get_attribution_metrics(
            # Unique identifier for the campaign, formatted as a UUID.
            campaign_guid,
            # End date for the report data, formatted as YYYY-MM-DD. Default value: Current
            # date
            end_date: nil,
            # The start date for the report data, formatted as YYYY-MM-DD. Default value:
            # 2006-01-01
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
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::RevenueAttributionAggregate)
          end
          def get_revenue_attribution(
            # Unique identifier for the campaign, formatted as a UUID.
            campaign_guid,
            # Allowed values: LINEAR, FIRST_INTERACTION, LAST_INTERACTION, FULL_PATH,
            # U_SHAPED, W_SHAPED, TIME_DECAY, J_SHAPED, INVERSE_J_SHAPED Default value: LINEAR
            attribution_model: nil,
            # End date for the report data, formatted as YYYY-MM-DD. Default value: Current
            # date
            end_date: nil,
            # The start date for the report data, formatted as YYYY-MM-DD. Default value:
            # 2006-01-01
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
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Internal::Page[
                HubspotSDK::Marketing::ContactReference
              ]
            )
          end
          def list_contact_ids_by_type(
            # Path param: The type of metric to filter the influenced contacts. Allowed
            # values: contactFirstTouch, contactLastTouch, influencedContacts
            contact_type,
            # Path param: Unique identifier for the campaign, formatted as a UUID.
            campaign_guid:,
            # Query param: A cursor for pagination. If provided, the results will start after
            # the given cursor. Example: NTI1Cg%3D%3D
            after: nil,
            # Query param: End date for the report data, formatted as YYYY-MM-DD. Default
            # value: Current date
            end_date: nil,
            # Query param: Limit for the number of contacts to fetch Default: 100
            limit: nil,
            # Query param: The start date for the report data, formatted as YYYY-MM-DD.
            # Default value: 2006-01-01
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
