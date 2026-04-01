# frozen_string_literal: true

module HubspotSDK
  module Models
    module CommunicationPreferences
      class BatchResponsePublicWideStatusBulkResponseWithErrors < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array containing the results of the operation.
        #
        #   @return [Array<HubspotSDK::Models::CommunicationPreferences::PublicWideStatusBulkResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::CommunicationPreferences::PublicWideStatusBulkResponse] }

        # @!attribute started_at
        #   The date and time when the operation started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the operation, which can be PENDING, PROCESSING, CANCELED,
        #   or COMPLETE.
        #
        #   @return [Symbol, HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponseWithErrors::Status]
        required :status,
                 enum: -> { HubspotSDK::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponseWithErrors::Status }

        # @!attribute errors
        #   An array of error objects detailing any issues encountered during the operation.
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   An object containing related links, where each key is a link name and each value
        #   is a URL.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors encountered during the operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   The date and time when the operation was requested.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponseWithErrors}
        #   for more details.
        #
        #   @param completed_at [Time] The date and time when the operation was completed.
        #
        #   @param results [Array<HubspotSDK::Models::CommunicationPreferences::PublicWideStatusBulkResponse>] An array containing the results of the operation.
        #
        #   @param started_at [Time] The date and time when the operation started.
        #
        #   @param status [Symbol, HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponseWithErrors::Status] The current status of the operation, which can be PENDING, PROCESSING, CANCELED,
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>] An array of error objects detailing any issues encountered during the operation.
        #
        #   @param links [Hash{Symbol=>String}] An object containing related links, where each key is a link name and each value
        #
        #   @param num_errors [Integer] The number of errors encountered during the operation.
        #
        #   @param requested_at [Time] The date and time when the operation was requested.

        # The current status of the operation, which can be PENDING, PROCESSING, CANCELED,
        # or COMPLETE.
        #
        # @see HubspotSDK::Models::CommunicationPreferences::BatchResponsePublicWideStatusBulkResponseWithErrors#status
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
