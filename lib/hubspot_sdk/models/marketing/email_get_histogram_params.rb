# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Emails#get_histogram
      class EmailGetHistogramParams < HubspotSDK::Internal::Type::BaseModel
        extend HubspotSDK::Internal::Type::RequestParameters::Converter
        include HubspotSDK::Internal::Type::RequestParameters

        # @!attribute email_ids
        #
        #   @return [Array<Integer>, nil]
        optional :email_ids, HubspotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute end_timestamp
        #
        #   @return [String, nil]
        optional :end_timestamp, String

        # @!attribute interval
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::EmailGetHistogramParams::Interval, nil]
        optional :interval, enum: -> { HubspotSDK::Marketing::EmailGetHistogramParams::Interval }

        # @!attribute start_timestamp
        #
        #   @return [String, nil]
        optional :start_timestamp, String

        # @!method initialize(email_ids: nil, end_timestamp: nil, interval: nil, start_timestamp: nil, request_options: {})
        #   @param email_ids [Array<Integer>]
        #   @param end_timestamp [String]
        #   @param interval [Symbol, HubspotSDK::Models::Marketing::EmailGetHistogramParams::Interval]
        #   @param start_timestamp [String]
        #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]

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
