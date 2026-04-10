# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class BatchResponsePublicWideStatusBulkResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch process was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   The array of results from the batch process, each containing subscription status
        #   information.
        #
        #   @return [Array<HubSpotSDK::Models::CommunicationPreferences::PublicWideStatusBulkResponse>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicWideStatusBulkResponse] }

        # @!attribute started_at
        #   The date and time when the batch process began.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch process, with possible values: PENDING,
        #   PROCESSING, CANCELED, COMPLETE.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status]
        required :status,
                 enum: -> { HubSpotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status }

        # @!attribute links
        #   A collection of related links associated with the batch response.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The date and time when the batch request was made.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse}
        #   for more details.
        #
        #   @param completed_at [Time] The date and time when the batch process was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::CommunicationPreferences::PublicWideStatusBulkResponse>] The array of results from the batch process, each containing subscription status
        #
        #   @param started_at [Time] The date and time when the batch process began.
        #
        #   @param status [Symbol, HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse::Status] The current status of the batch process, with possible values: PENDING, PROCESSI
        #
        #   @param links [Hash{Symbol=>String}] A collection of related links associated with the batch response.
        #
        #   @param requested_at [Time] The date and time when the batch request was made.

        # The current status of the batch process, with possible values: PENDING,
        # PROCESSING, CANCELED, COMPLETE.
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponse#status
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
