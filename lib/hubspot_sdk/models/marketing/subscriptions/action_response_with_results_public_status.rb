# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class ActionResponseWithResultsPublicStatus < HubspotSDK::Internal::Type::BaseModel
          # @!attribute completed_at
          #   The date and time when the operation was completed.
          #
          #   @return [Time]
          required :completed_at, Time, api_name: :completedAt

          # @!attribute results
          #   An array of results from the operation.
          #
          #   @return [Array<HubspotSDK::Models::Marketing::Subscriptions::PublicStatus>]
          required :results,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicStatus] }

          # @!attribute started_at
          #   The date and time when the operation started.
          #
          #   @return [Time]
          required :started_at, Time, api_name: :startedAt

          # @!attribute status
          #   Indicates the current status of the operation, with possible values: PENDING,
          #   PROCESSING, CANCELED, COMPLETE.
          #
          #   @return [Symbol, HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus::Status]
          required :status,
                   enum: -> { HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus::Status }

          # @!attribute errors
          #   A list of errors that occurred during the operation.
          #
          #   @return [Array<HubspotSDK::Models::StandardError>, nil]
          optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

          # @!attribute links
          #   Contains URLs related to the response, such as documentation or resources.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :links, HubspotSDK::Internal::Type::HashOf[String]

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
          #   {HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus}
          #   for more details.
          #
          #   @param completed_at [Time] The date and time when the operation was completed.
          #
          #   @param results [Array<HubspotSDK::Models::Marketing::Subscriptions::PublicStatus>] An array of results from the operation.
          #
          #   @param started_at [Time] The date and time when the operation started.
          #
          #   @param status [Symbol, HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus::Status] Indicates the current status of the operation, with possible values: PENDING, PR
          #
          #   @param errors [Array<HubspotSDK::Models::StandardError>] A list of errors that occurred during the operation.
          #
          #   @param links [Hash{Symbol=>String}] Contains URLs related to the response, such as documentation or resources.
          #
          #   @param num_errors [Integer] The number of errors that occurred during the operation.
          #
          #   @param requested_at [Time] The date and time when the request was made.

          # Indicates the current status of the operation, with possible values: PENDING,
          # PROCESSING, CANCELED, COMPLETE.
          #
          # @see HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsPublicStatus#status
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
end
