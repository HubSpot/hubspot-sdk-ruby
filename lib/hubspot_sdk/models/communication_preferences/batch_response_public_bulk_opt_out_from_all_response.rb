# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class BatchResponsePublicBulkOptOutFromAllResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the bulk opt-out operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array containing the results of the bulk opt-out from all communications
        #   operation.
        #
        #   @return [Array<HubSpotSDK::Models::CommunicationPreferences::PublicBulkOptOutFromAllResponse>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicBulkOptOutFromAllResponse] }

        # @!attribute started_at
        #   The date and time when the bulk opt-out operation began.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the bulk opt-out operation, which can be PENDING,
        #   PROCESSING, CANCELED, or COMPLETE.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse::Status]
        required :status,
                 enum: -> { HubSpotSDK::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse::Status }

        # @!attribute errors
        #   An array of error objects detailing any issues encountered during the bulk
        #   opt-out operation.
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #   A collection of URLs linking to related resources or documentation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The total number of errors encountered during the bulk opt-out operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the bulk opt-out request was made.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse}
        #   for more details.
        #
        #   @param completed_at [Time] The date and time when the bulk opt-out operation was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::CommunicationPreferences::PublicBulkOptOutFromAllResponse>] An array containing the results of the bulk opt-out from all communications oper
        #
        #   @param started_at [Time] The date and time when the bulk opt-out operation began.
        #
        #   @param status [Symbol, HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse::Status] The current status of the bulk opt-out operation, which can be PENDING, PROCESSI
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>] An array of error objects detailing any issues encountered during the bulk opt-o
        #
        #   @param links [Hash{Symbol=>String}] A collection of URLs linking to related resources or documentation.
        #
        #   @param num_errors [Integer] The total number of errors encountered during the bulk opt-out operation.
        #
        #   @param requested_at [Time] The date and time when the bulk opt-out request was made.

        # The current status of the bulk opt-out operation, which can be PENDING,
        # PROCESSING, CANCELED, or COMPLETE.
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicBulkOptOutFromAllResponse#status
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
