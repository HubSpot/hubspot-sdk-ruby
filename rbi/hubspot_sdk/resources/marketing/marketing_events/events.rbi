# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class MarketingEvents
        class Events
          # Mark a marketing event as cancelled.
          sig do
            params(
              external_event_id: String,
              external_account_id: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::MarketingEventDefaultResponse)
          end
          def cancel_by_external_event_id(
            external_event_id,
            external_account_id:,
            request_options: {}
          )
          end

          # Mark a marketing event as completed
          sig do
            params(
              external_event_id: String,
              external_account_id: String,
              end_date_time: Time,
              start_date_time: Time,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::MarketingEventDefaultResponse)
          end
          def complete_by_external_event_id(
            # Path param
            external_event_id,
            # Query param
            external_account_id:,
            # Body param: The end date and time of the marketing event in ISO 8601 format
            end_date_time:,
            # Body param: The start date and time of the marketing event in ISO 8601 format
            start_date_time:,
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
