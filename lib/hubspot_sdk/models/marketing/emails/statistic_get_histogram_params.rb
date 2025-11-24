# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Emails
        # @see HubspotSDK::Resources::Marketing::Emails::Statistics#get_histogram
        class StatisticGetHistogramParams < HubspotSDK::Internal::Type::BaseModel
          extend HubspotSDK::Internal::Type::RequestParameters::Converter
          include HubspotSDK::Internal::Type::RequestParameters

          # @!attribute email_ids
          #   Filter by email IDs. Only include statistics of emails with these IDs.
          #
          #   @return [Array<Integer>, nil]
          optional :email_ids, HubspotSDK::Internal::Type::ArrayOf[Integer]

          # @!attribute end_timestamp
          #   The end timestamp of the time span, in ISO8601 representation.
          #
          #   @return [String, nil]
          optional :end_timestamp, String

          # @!attribute interval
          #   The interval to aggregate statistics for.
          #
          #   @return [Symbol, HubspotSDK::Models::Marketing::Emails::StatisticGetHistogramParams::Interval, nil]
          optional :interval, enum: -> { HubspotSDK::Marketing::Emails::StatisticGetHistogramParams::Interval }

          # @!attribute start_timestamp
          #   The start timestamp of the time span, in ISO8601 representation.
          #
          #   @return [String, nil]
          optional :start_timestamp, String

          # @!method initialize(email_ids: nil, end_timestamp: nil, interval: nil, start_timestamp: nil, request_options: {})
          #   @param email_ids [Array<Integer>] Filter by email IDs. Only include statistics of emails with these IDs.
          #
          #   @param end_timestamp [String] The end timestamp of the time span, in ISO8601 representation.
          #
          #   @param interval [Symbol, HubspotSDK::Models::Marketing::Emails::StatisticGetHistogramParams::Interval] The interval to aggregate statistics for.
          #
          #   @param start_timestamp [String] The start timestamp of the time span, in ISO8601 representation.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

          # The interval to aggregate statistics for.
          module Interval
            extend HubspotSDK::Internal::Type::Enum

            DAY = :DAY
            HOUR = :HOUR
            MINUTE = :MINUTE
            MONTH = :MONTH
            QUARTER = :QUARTER
            QUARTER_HOUR = :QUARTER_HOUR
            SECOND = :SECOND
            WEEK = :WEEK
            YEAR = :YEAR

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
