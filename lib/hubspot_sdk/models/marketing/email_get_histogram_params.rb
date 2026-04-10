# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Marketing
      # @see HubSpotSDK::Resources::Marketing::Emails#get_histogram
      class EmailGetHistogramParams < HubSpotSDK::Internal::Type::BaseModel
        extend HubSpotSDK::Internal::Type::RequestParameters::Converter
        include HubSpotSDK::Internal::Type::RequestParameters

        # @!attribute email_ids
        #
        #   @return [Array<Integer>, nil]
        optional :email_ids, HubSpotSDK::Internal::Type::ArrayOf[Integer]

        # @!attribute end_timestamp
        #
        #   @return [String, nil]
        optional :end_timestamp, String

        # @!attribute interval
        #
        #   @return [Symbol, HubSpotSDK::Models::Marketing::EmailGetHistogramParams::Interval, nil]
        optional :interval, enum: -> { HubSpotSDK::Marketing::EmailGetHistogramParams::Interval }

        # @!attribute start_timestamp
        #
        #   @return [String, nil]
        optional :start_timestamp, String

        # @!method initialize(email_ids: nil, end_timestamp: nil, interval: nil, start_timestamp: nil, request_options: {})
        #   @param email_ids [Array<Integer>]
        #   @param end_timestamp [String]
        #   @param interval [Symbol, HubSpotSDK::Models::Marketing::EmailGetHistogramParams::Interval]
        #   @param start_timestamp [String]
        #   @param request_options [HubSpotSDK::RequestOptions, Hash{Symbol=>Object}]

        module Interval
          extend HubSpotSDK::Internal::Type::Enum

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
