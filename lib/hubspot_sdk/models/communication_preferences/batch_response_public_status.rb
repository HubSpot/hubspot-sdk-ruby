# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      class BatchResponsePublicStatus < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array containing the results of the batch operation.
        #
        #   @return [Array<HubSpotSDK::Models::CommunicationPreferences::PublicStatus>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicStatus] }

        # @!attribute started_at
        #   The date and time when the batch operation started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, which can be PENDING, PROCESSING,
        #   CANCELED, or COMPLETE.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicStatus::Status]
        required :status, enum: -> { HubSpotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status }

        # @!attribute errors
        #   An array of error objects detailing any issues encountered.
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #   URLs linking to related resources or documentation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors encountered during the batch operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the request was made.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicStatus} for
        #   more details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::CommunicationPreferences::PublicStatus>] An array containing the results of the batch operation.
        #
        #   @param started_at [Time] The date and time when the batch operation started.
        #
        #   @param status [Symbol, HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicStatus::Status] The current status of the batch operation, which can be PENDING, PROCESSING, CAN
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>] An array of error objects detailing any issues encountered.
        #
        #   @param links [Hash{Symbol=>String}] URLs linking to related resources or documentation.
        #
        #   @param num_errors [Integer] The number of errors encountered during the batch operation.
        #
        #   @param requested_at [Time] The date and time when the request was made.

        # The current status of the batch operation, which can be PENDING, PROCESSING,
        # CANCELED, or COMPLETE.
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::BatchResponsePublicStatus#status
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
