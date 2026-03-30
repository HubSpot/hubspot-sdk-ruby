# frozen_string_literal: true

module HubspotSDK
  module Models
    module Cms
      class BatchResponseHubDBTableRowV3 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp indicating when the batch processing was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Cms::HubDBTableRowV3>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Cms::HubDBTableRowV3] }

        # @!attribute started_at
        #   The timestamp indicating when the batch processing began.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, with possible values: CANCELED,
        #   COMPLETE, PENDING, PROCESSING.
        #
        #   @return [Symbol, HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3::Status]
        required :status, enum: -> { HubspotSDK::Cms::BatchResponseHubDBTableRowV3::Status }

        # @!attribute errors
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   A collection of related links associated with the batch response.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The timestamp indicating when the batch request was made.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3} for more details.
        #
        #   @param completed_at [Time] The timestamp indicating when the batch processing was completed.
        #
        #   @param results [Array<HubspotSDK::Models::Cms::HubDBTableRowV3>]
        #
        #   @param started_at [Time] The timestamp indicating when the batch processing began.
        #
        #   @param status [Symbol, HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3::Status] The current status of the batch operation, with possible values: CANCELED, COMPL
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] A collection of related links associated with the batch response.
        #
        #   @param num_errors [Integer]
        #
        #   @param requested_at [Time] The timestamp indicating when the batch request was made.

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        #
        # @see HubspotSDK::Models::Cms::BatchResponseHubDBTableRowV3#status
        module Status
          extend HubspotSDK::Internal::Type::Enum

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
