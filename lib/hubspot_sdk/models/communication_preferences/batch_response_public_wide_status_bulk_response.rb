# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      class BatchResponsePublicWideStatusBulkResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch process was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   The array of results from the batch process, each containing subscription status
        #   information.
        #
        #   @return [Array<HubspotSDK::Models::CommunicationPreferences::PublicWideStatusBulkResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicWideStatusBulkResponse] }

        # @!attribute started_at
        #   The date and time when the batch process began.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch process, with possible values: PENDING,
        #   PROCESSING, CANCELED, COMPLETE.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status]
        required :status,
                 enum: -> { HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status }

        # @!attribute errors
        #   An array of errors encountered during the batch operation, each item providing
        #   details about a specific error.
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   A collection of related links associated with the batch response.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors that occurred during the batch operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the batch request was made.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse}
        #   for more details.
        #
        #   @param completed_at [Time] The date and time when the batch process was completed.
        #
        #   @param results [Array<HubspotSDK::Models::CommunicationPreferences::PublicWideStatusBulkResponse>] The array of results from the batch process, each containing subscription status
        #
        #   @param started_at [Time] The date and time when the batch process began.
        #
        #   @param status [Symbol, HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status] The current status of the batch process, with possible values: PENDING, PROCESSI
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>] An array of errors encountered during the batch operation, each item providing d
        #
        #   @param links [Hash{Symbol=>String}] A collection of related links associated with the batch response.
        #
        #   @param num_errors [Integer] The number of errors that occurred during the batch operation.
        #
        #   @param requested_at [Time] The date and time when the batch request was made.

        # The current status of the batch process, with possible values: PENDING,
        # PROCESSING, CANCELED, COMPLETE.
        #
        # @see HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse#status
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
