# frozen_string_literal: true

module HubSpotSDK
  module Models
    module CommunicationPreferences
      # @see HubSpotSDK::Resources::CommunicationPreferences#get_statuses
      class ActionResponseWithResultsPublicStatus < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array of results from the operation.
        #
        #   @return [Array<HubSpotSDK::Models::CommunicationPreferences::PublicStatus>]
        required :results,
                 -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::CommunicationPreferences::PublicStatus] }

        # @!attribute started_at
        #   The date and time when the operation started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   Indicates the current status of the operation, with possible values: PENDING,
        #   PROCESSING, CANCELED, COMPLETE.
        #
        #   @return [Symbol, HubSpotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicStatus::Status]
        required :status,
                 enum: -> { HubSpotSDK::CommunicationPreferences::ActionResponseWithResultsPublicStatus::Status }

        # @!attribute errors
        #   A list of errors that occurred during the operation.
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #   Contains URLs related to the response, such as documentation or resources.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors that occurred during the operation.
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
        #   {HubSpotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicStatus}
        #   for more details.
        #
        #   @param completed_at [Time] The date and time when the operation was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::CommunicationPreferences::PublicStatus>] An array of results from the operation.
        #
        #   @param started_at [Time] The date and time when the operation started.
        #
        #   @param status [Symbol, HubSpotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicStatus::Status] Indicates the current status of the operation, with possible values: PENDING, PR
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>] A list of errors that occurred during the operation.
        #
        #   @param links [Hash{Symbol=>String}] Contains URLs related to the response, such as documentation or resources.
        #
        #   @param num_errors [Integer] The number of errors that occurred during the operation.
        #
        #   @param requested_at [Time] The date and time when the request was made.

        # Indicates the current status of the operation, with possible values: PENDING,
        # PROCESSING, CANCELED, COMPLETE.
        #
        # @see HubSpotSDK::Models::CommunicationPreferences::ActionResponseWithResultsPublicStatus#status
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
