# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BatchResponseHubDBTableRowV3 < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp indicating when the batch processing was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Cms::HubDBTableRowV3>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::HubDBTableRowV3] }

        # @!attribute started_at
        #   The timestamp indicating when the batch processing began.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, with possible values: CANCELED,
        #   COMPLETE, PENDING, PROCESSING.
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::BatchResponseHubDBTableRowV3::Status]
        required :status, enum: -> { HubSpotSDK::Cms::BatchResponseHubDBTableRowV3::Status }

        # @!attribute links
        #   A collection of related links associated with the batch response.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The timestamp indicating when the batch request was made.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Cms::BatchResponseHubDBTableRowV3} for more details.
        #
        #   @param completed_at [Time] The timestamp indicating when the batch processing was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::Cms::HubDBTableRowV3>]
        #
        #   @param started_at [Time] The timestamp indicating when the batch processing began.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Cms::BatchResponseHubDBTableRowV3::Status] The current status of the batch operation, with possible values: CANCELED, COMPL
        #
        #   @param links [Hash{Symbol=>String}] A collection of related links associated with the batch response.
        #
        #   @param requested_at [Time] The timestamp indicating when the batch request was made.

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        #
        # @see HubSpotSDK::Models::Cms::BatchResponseHubDBTableRowV3#status
        module Status
          extend HubSpotSDK::Internal::Type::Enum

          CANCELED = :CANCELED
          COMPLETE = :COMPLETE
          PENDING = :PENDING
          PROCESSING = :PROCESSING

          # @!method self.values
          #   @return [Array<Symbol>]
        end
      end
    end
  end
end
