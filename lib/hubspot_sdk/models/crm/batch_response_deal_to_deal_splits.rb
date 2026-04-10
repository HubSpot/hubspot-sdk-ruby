# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Crm
      class BatchResponseDealToDealSplits < HubSpotSDK::Internal::Type::BaseModel
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
        #   @return [Array<HubSpotSDK::Models::Crm::DealToDealSplits>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Crm::DealToDealSplits] }

        # @!attribute started_at
        #   The timestamp indicating when the batch operation started, in date-time format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, with possible values: CANCELED,
        #   COMPLETE, PENDING, PROCESSING.
        #
        #   @return [Symbol, HubSpotSDK::Models::Crm::BatchResponseDealToDealSplits::Status]
        required :status, enum: -> { HubSpotSDK::Crm::BatchResponseDealToDealSplits::Status }

        # @!attribute links
        #   A map of link names to associated URIs for additional resources or
        #   documentation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The timestamp indicating when the batch operation was requested, in date-time
        #   format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Crm::BatchResponseDealToDealSplits} for more details.
        #
        #   @param completed_at [Time] The timestamp indicating when the batch operation was completed, in date-time fo
        #
        #   @param results [Array<HubSpotSDK::Models::Crm::DealToDealSplits>] An array of deal-to-deal split objects representing the results of the batch ope
        #
        #   @param started_at [Time] The timestamp indicating when the batch operation started, in date-time format.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Crm::BatchResponseDealToDealSplits::Status] The current status of the batch operation, with possible values: CANCELED, COMPL
        #
        #   @param links [Hash{Symbol=>String}] A map of link names to associated URIs for additional resources or documentation
        #
        #   @param requested_at [Time] The timestamp indicating when the batch operation was requested, in date-time fo

        # The current status of the batch operation, with possible values: CANCELED,
        # COMPLETE, PENDING, PROCESSING.
        #
        # @see HubSpotSDK::Models::Crm::BatchResponseDealToDealSplits#status
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
