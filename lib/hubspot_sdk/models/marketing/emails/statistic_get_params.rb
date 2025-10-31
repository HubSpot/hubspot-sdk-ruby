# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Emails
        # @see HubspotSDK::Resources::Marketing::Emails::Statistics#get
        class StatisticGetParams < HubspotSDK::Internal::Type::BaseModel
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

          # @!attribute property
          #   Specifies which email properties should be returned. All properties will be
          #   returned by default.
          #
          #   @return [String, nil]
          optional :property, String

          # @!attribute start_timestamp
          #   The start timestamp of the time span, in ISO8601 representation.
          #
          #   @return [String, nil]
          optional :start_timestamp, String

          # @!method initialize(email_ids: nil, end_timestamp: nil, property: nil, start_timestamp: nil, request_options: {})
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Emails::StatisticGetParams} for more details.
          #
          #   @param email_ids [Array<Integer>] Filter by email IDs. Only include statistics of emails with these IDs.
          #
          #   @param end_timestamp [String] The end timestamp of the time span, in ISO8601 representation.
          #
          #   @param property [String] Specifies which email properties should be returned. All properties will be retu
          #
          #   @param start_timestamp [String] The start timestamp of the time span, in ISO8601 representation.
          #
          #   @param request_options [HubspotSDK::RequestOptions, Hash{Symbol=>Object}]
        end
      end
    end
  end
end
