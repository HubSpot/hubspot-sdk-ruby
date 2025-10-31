# typed: strong

module HubspotSDK
  module Resources
    class Marketing
      class Emails
        class Statistics
          # Use this endpoint to get aggregated statistics of emails sent in a specified
          # time span. It also returns the list of emails that were sent during the time
          # span.
          sig do
            params(
              email_ids: T::Array[Integer],
              end_timestamp: String,
              property: String,
              start_timestamp: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(HubspotSDK::Marketing::AggregateEmailStatistics)
          end
          def get(
            # Filter by email IDs. Only include statistics of emails with these IDs.
            email_ids: nil,
            # The end timestamp of the time span, in ISO8601 representation.
            end_timestamp: nil,
            # Specifies which email properties should be returned. All properties will be
            # returned by default.
            property: nil,
            # The start timestamp of the time span, in ISO8601 representation.
            start_timestamp: nil,
            request_options: {}
          )
          end

          # Get aggregated statistics in intervals for a specified time span. Each interval
          # contains aggregated statistics of the emails that were sent in that time.
          sig do
            params(
              email_ids: T::Array[Integer],
              end_timestamp: String,
              interval:
                HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval::OrSymbol,
              start_timestamp: String,
              request_options: HubspotSDK::RequestOptions::OrHash
            ).returns(
              HubspotSDK::Marketing::CollectionResponseWithTotalEmailStatisticIntervalNoPaging
            )
          end
          def get_histogram(
            # Filter by email IDs. Only include statistics of emails with these IDs.
            email_ids: nil,
            # The end timestamp of the time span, in ISO8601 representation.
            end_timestamp: nil,
            # The interval to aggregate statistics for.
            interval: nil,
            # The start timestamp of the time span, in ISO8601 representation.
            start_timestamp: nil,
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
