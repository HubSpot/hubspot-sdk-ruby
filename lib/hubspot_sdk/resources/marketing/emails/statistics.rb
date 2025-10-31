# frozen_string_literal: true

module HubspotSDK
  module Resources
    class Marketing
      class Emails
        class Statistics
          # Some parameter documentations has been truncated, see
          # {HubspotSDK::Models::Marketing::Emails::StatisticGetParams} for more details.
          #
          # Use this endpoint to get aggregated statistics of emails sent in a specified
          # time span. It also returns the list of emails that were sent during the time
          # span.
          #
          # @overload get(email_ids: nil, end_timestamp: nil, property: nil, start_timestamp: nil, request_options: {})
          #
          # @param email_ids [Array<Integer>] Filter by email IDs. Only include statistics of emails with these IDs.
          #
          # @param end_timestamp [String] The end timestamp of the time span, in ISO8601 representation.
          #
          # @param property [String] Specifies which email properties should be returned. All properties will be retu
          #
          # @param start_timestamp [String] The start timestamp of the time span, in ISO8601 representation.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::AggregateEmailStatistics]
          #
          # @see HubspotSDK::Models::Marketing::Emails::StatisticGetParams
          def get(params = {})
            parsed, options = HubspotSDK::Marketing::Emails::StatisticGetParams.dump_request(params)
            @client.request(
              method: :get,
              path: "marketing/v3/emails/statistics/list",
              query: parsed.transform_keys(
                email_ids: "emailIds",
                end_timestamp: "endTimestamp",
                start_timestamp: "startTimestamp"
              ),
              model: HubspotSDK::Marketing::AggregateEmailStatistics,
              options: options
            )
          end

          # Get aggregated statistics in intervals for a specified time span. Each interval
          # contains aggregated statistics of the emails that were sent in that time.
          #
          # @overload get_histogram(email_ids: nil, end_timestamp: nil, interval: nil, start_timestamp: nil, request_options: {})
          #
          # @param email_ids [Array<Integer>] Filter by email IDs. Only include statistics of emails with these IDs.
          #
          # @param end_timestamp [String] The end timestamp of the time span, in ISO8601 representation.
          #
          # @param interval [Symbol, HubspotSDK::Models::Marketing::Emails::StatisticGetHistogramParams::Interval] The interval to aggregate statistics for.
          #
          # @param start_timestamp [String] The start timestamp of the time span, in ISO8601 representation.
          #
          # @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}, nil]
          #
          # @return [HubspotSDK::Models::Marketing::CollectionResponseWithTotalEmailStatisticIntervalNoPaging]
          #
          # @see HubspotSDK::Models::Marketing::Emails::StatisticGetHistogramParams
          def get_histogram(params = {})
            parsed, options = HubspotSDK::Marketing::Emails::StatisticGetHistogramParams.dump_request(params)
            @client.request(
              method: :get,
              path: "marketing/v3/emails/statistics/histogram",
              query: parsed.transform_keys(
                email_ids: "emailIds",
                end_timestamp: "endTimestamp",
                start_timestamp: "startTimestamp"
              ),
              model: HubspotSDK::Marketing::CollectionResponseWithTotalEmailStatisticIntervalNoPaging,
              options: options
            )
          end

          # @api private
          #
          # @param client [HubspotSDK::Client]
          def initialize(client:)
            @client = client
          end
        end
      end
    end
  end
end
