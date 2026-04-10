# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#create_subscriptions_batch
      class BatchResponseSubscriptionResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch operation was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   The list of results from the batch operation.
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionResponse] }

        # @!attribute started_at
        #   The date and time when the batch operation started.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation, which can be PENDING, PROCESSING,
        #   CANCELED, or COMPLETE.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponse::Status]
        required :status, enum: -> { HubSpotSDK::Webhooks::BatchResponseSubscriptionResponse::Status }

        # @!attribute links
        #   A collection of related links associated with the batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The date and time when the batch operation was requested.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponse} for more
        #   details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed.
        #
        #   @param results [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse>] The list of results from the batch operation.
        #
        #   @param started_at [Time] The date and time when the batch operation started.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponse::Status] The current status of the batch operation, which can be PENDING, PROCESSING, CAN
        #
        #   @param links [Hash{Symbol=>String}] A collection of related links associated with the batch operation.
        #
        #   @param requested_at [Time] The date and time when the batch operation was requested.

        # The current status of the batch operation, which can be PENDING, PROCESSING,
        # CANCELED, or COMPLETE.
        #
        # @see HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponse#status
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
