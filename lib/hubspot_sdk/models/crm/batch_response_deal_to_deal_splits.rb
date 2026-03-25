# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchResponseDealToDealSplits < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The timestamp indicating when the batch operation was completed, in date-time
        #   format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array of deal-to-deal split objects representing the results of the batch
        #   operation.
        #
        #   @return [Array<HubspotSDK::Models::Crm::DealToDealSplits>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::DealToDealSplits] }

        # @!attribute started_at
        #   The timestamp indicating when the batch operation started, in date-time format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, with possible values: CANCELED,
        #   COMPLETE, PENDING, PROCESSING.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::BatchResponseDealToDealSplits::Status]
        required :status, enum: -> { HubspotSDK::Crm::BatchResponseDealToDealSplits::Status }

        # @!attribute errors
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   A map of link names to associated URIs for additional resources or
        #   documentation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The timestamp indicating when the batch operation was requested, in date-time
        #   format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::Crm::BatchResponseDealToDealSplits} for more details.
        #
        #   @param completed_at [Time] The timestamp indicating when the batch operation was completed, in date-time fo
        #
        #   @param results [Array<HubspotSDK::Models::Crm::DealToDealSplits>] An array of deal-to-deal split objects representing the results of the batch ope
        #
        #   @param started_at [Time] The timestamp indicating when the batch operation started, in date-time format.
        #
        #   @param status [Symbol, HubspotSDK::Models::Crm::BatchResponseDealToDealSplits::Status] The current status of the batch operation, with possible values: CANCELED, COMPL
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] A map of link names to associated URIs for additional resources or documentation
        #
        #   @param num_errors [Integer]
        #
        #   @param requested_at [Time] The timestamp indicating when the batch operation was requested, in date-time fo

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        #
        # @see HubspotSDK::Models::Crm::BatchResponseDealToDealSplits#status
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
