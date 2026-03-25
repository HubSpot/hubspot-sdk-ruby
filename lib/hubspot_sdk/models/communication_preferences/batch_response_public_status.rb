# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      class BatchResponsePublicStatus < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array containing the results of the batch operation.
        #
        #   @return [Array<HubspotSDK::Models::CommunicationPreferences::PublicStatus>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicStatus] }

        # @!attribute started_at
        #   The date and time when the batch operation started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, which can be PENDING, PROCESSING,
        #   CANCELED, or COMPLETE.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicStatus::Status]
        required :status, enum: -> { HubspotSDK::CommunicationPreferences::BatchResponsePublicStatus::Status }

        # @!attribute errors
        #   An array of error objects detailing any issues encountered.
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   URLs linking to related resources or documentation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

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
        #   {HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicStatus} for
        #   more details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed.
        #
        #   @param results [Array<HubspotSDK::Models::CommunicationPreferences::PublicStatus>] An array containing the results of the batch operation.
        #
        #   @param started_at [Time] The date and time when the batch operation started.
        #
        #   @param status [Symbol, HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicStatus::Status] The current status of the batch operation, which can be PENDING, PROCESSING, CAN
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>] An array of error objects detailing any issues encountered.
        #
        #   @param links [Hash{Symbol=>String}] URLs linking to related resources or documentation.
        #
        #   @param num_errors [Integer] The number of errors encountered during the batch operation.
        #
        #   @param requested_at [Time] The date and time when the request was made.

        # The current status of the batch operation, which can be PENDING, PROCESSING,
        # CANCELED, or COMPLETE.
        #
        # @see HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicStatus#status
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
