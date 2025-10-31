# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchResponseHubDBTableRowV3 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #
        #   @return [Time, nil]
        optional :completed_at, Time, api_name: :completedAt

        # @!attribute links
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Cms::HubDBTableRowV3>, nil]
        optional :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3] }

        # @!attribute started_at
        #
        #   @return [Time, nil]
        optional :started_at, Time, api_name: :startedAt

        # @!attribute status
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3::Status, nil]
        optional :status, enum: -> { HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status }

        # @!method initialize(completed_at: nil, links: nil, requested_at: nil, results: nil, started_at: nil, status: nil)
        #   @param completed_at [Time]
        #   @param links [Hash{Symbol=>String}]
        #   @param requested_at [Time]
        #   @param results [Array<HubspotSDK::Models::Cms::HubDBTableRowV3>]
        #   @param started_at [Time]
        #   @param status [Symbol, HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3::Status]

        # @see HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

          PENDING = :PENDING
          PROCESSING = :PROCESSING
          CANCELED = :CANCELED
          COMPLETE = :COMPLETE

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
