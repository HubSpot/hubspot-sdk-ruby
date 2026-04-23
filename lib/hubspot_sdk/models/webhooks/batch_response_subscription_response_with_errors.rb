# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class BatchResponseSubscriptionResponseWithErrors < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch processing was completed, in ISO 8601 format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array of SubscriptionResponse objects representing the results of each
        #   subscription update processed in the batch.
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionResponse] }

        # @!attribute started_at
        #   The date and time when the batch processing began, in ISO 8601 format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation. Valid values include 'PENDING',
        #   'PROCESSING', 'CANCELED', and 'COMPLETE'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponseWithErrors::Status]
        required :status, enum: -> { HubSpotSDK::Webhooks::BatchResponseSubscriptionResponseWithErrors::Status }

        # @!attribute errors
        #   An array of StandardError objects detailing any errors that occurred during the
        #   batch processing.
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #   A map of link names to associated URIs, providing additional resources or
        #   documentation related to the batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The total number of errors encountered during the batch operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the batch request was initially made, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponseWithErrors} for
        #   more details.
        #
        #   @param completed_at [Time] The date and time when the batch processing was completed, in ISO 8601 format.
        #
        #   @param results [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse>] An array of SubscriptionResponse objects representing the results of each subscr
        #
        #   @param started_at [Time] The date and time when the batch processing began, in ISO 8601 format.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponseWithErrors::Status] The current status of the batch operation. Valid values include 'PENDING', 'PROC
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>] An array of StandardError objects detailing any errors that occurred during the
        #
        #   @param links [Hash{Symbol=>String}] A map of link names to associated URIs, providing additional resources or docume
        #
        #   @param num_errors [Integer] The total number of errors encountered during the batch operation.
        #
        #   @param requested_at [Time] The date and time when the batch request was initially made, in ISO 8601 format.

        # The current status of the batch operation. Valid values include 'PENDING',
        # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
        #
        # @see HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponseWithErrors#status
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
