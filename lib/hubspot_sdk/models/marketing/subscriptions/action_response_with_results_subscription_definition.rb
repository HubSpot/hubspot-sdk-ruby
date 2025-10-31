# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class ActionResponseWithResultsSubscriptionDefinition < HubspotSDK::Internal::Type::BaseModel
          # @!attribute completed_at
          #   The date and time when the operation was completed.
          #
          #   @return [Time]
          required :completed_at, Time, api_name: :completedAt

          # @!attribute results
          #   An array containing the results of the operation.
          #
          #   @return [Array<HubspotSDK::Models::Marketing::SubscriptionDefinition>]
          required :results,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::SubscriptionDefinition] }

          # @!attribute started_at
          #   The date and time when the operation started.
          #
          #   @return [Time]
          required :started_at, Time, api_name: :startedAt

          # @!attribute status
          #   The current status of the operation, which can be PENDING, PROCESSING, CANCELED,
          #   or COMPLETE.
          #
          #   @return [Symbol, HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsSubscriptionDefinition::Status]
          required :status,
                   enum: -> { HubspotSDK::Marketing::Subscriptions::ActionResponseWithResultsSubscriptionDefinition::Status }

          # @!attribute errors
          #   An array of errors that occurred during the operation.
          #
          #   @return [Array<HubspotSDK::Models::StandardError>, nil]
          optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

          # @!attribute links
          #   A collection of related links associated with the operation.
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
          #   {HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsSubscriptionDefinition}
          #   for more details.
          #
          #   @param completed_at [Time] The date and time when the operation was completed.
          #
          #   @param results [Array<HubspotSDK::Models::Marketing::SubscriptionDefinition>] An array containing the results of the operation.
          #
          #   @param started_at [Time] The date and time when the operation started.
          #
          #   @param status [Symbol, HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsSubscriptionDefinition::Status] The current status of the operation, which can be PENDING, PROCESSING, CANCELED,
          #
          #   @param errors [Array<HubspotSDK::Models::StandardError>] An array of errors that occurred during the operation.
          #
          #   @param links [Hash{Symbol=>String}] A collection of related links associated with the operation.
          #
          #   @param num_errors [Integer] The number of errors encountered during the operation.
          #
          #   @param requested_at [Time] The date and time when the operation was requested.

          # The current status of the operation, which can be PENDING, PROCESSING, CANCELED,
          # or COMPLETE.
          #
          # @see HubspotSDK::Models::Marketing::Subscriptions::ActionResponseWithResultsSubscriptionDefinition#status
          module Status
            extend HubspotSDK::Internal::Type::Enum

            PENDING = :PENDING
            PROCESSING = :PROCESSING
            CANCELED = :CANCELED
            COMPLETE = :COMPLETE

            # @!method self.values
            #   @return [Array<Symbol>]
          end
        end
      end
    end
  end
end
