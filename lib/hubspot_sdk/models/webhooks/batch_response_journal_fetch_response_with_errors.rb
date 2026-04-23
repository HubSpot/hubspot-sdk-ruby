# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class BatchResponseJournalFetchResponseWithErrors < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch process was completed, in ISO 8601 format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array of journal fetch responses, each representing a result from the batch
        #   process.
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::JournalFetchResponse>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::JournalFetchResponse] }

        # @!attribute started_at
        #   The date and time when the batch process started, in ISO 8601 format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch process. Valid values include 'PENDING',
        #   'PROCESSING', 'CANCELED', and 'COMPLETE'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status]
        required :status, enum: -> { HubSpotSDK::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status }

        # @!attribute errors
        #   An array of standard errors that occurred during the batch process, providing
        #   details about each error.
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #   A map of link names to associated URIs, providing additional context or actions
        #   related to the batch process.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors that occurred during the batch process.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the batch request was made, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponseWithErrors} for
        #   more details.
        #
        #   @param completed_at [Time] The date and time when the batch process was completed, in ISO 8601 format.
        #
        #   @param results [Array<HubSpotSDK::Models::Webhooks::JournalFetchResponse>] An array of journal fetch responses, each representing a result from the batch p
        #
        #   @param started_at [Time] The date and time when the batch process started, in ISO 8601 format.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponseWithErrors::Status] The current status of the batch process. Valid values include 'PENDING', 'PROCES
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>] An array of standard errors that occurred during the batch process, providing de
        #
        #   @param links [Hash{Symbol=>String}] A map of link names to associated URIs, providing additional context or actions
        #
        #   @param num_errors [Integer] The number of errors that occurred during the batch process.
        #
        #   @param requested_at [Time] The date and time when the batch request was made, in ISO 8601 format.

        # The current status of the batch process. Valid values include 'PENDING',
        # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
        #
        # @see HubSpotSDK::Models::Webhooks::BatchResponseJournalFetchResponseWithErrors#status
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
