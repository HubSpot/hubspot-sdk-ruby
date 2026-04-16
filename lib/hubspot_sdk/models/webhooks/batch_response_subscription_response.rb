# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      # @see HubSpotSDK::Resources::Webhooks#create_batch_event_subscriptions
      class BatchResponseSubscriptionResponse < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The date and time when the batch operation was completed, in ISO 8601 format.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   An array of SubscriptionResponse objects, each representing the result of an
        #   individual subscription update within the batch operation.
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionResponse] }

        # @!attribute started_at
        #   The date and time when the batch operation started, in ISO 8601 format.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The current status of the batch operation. Valid values include 'PENDING',
        #   'PROCESSING', 'CANCELED', and 'COMPLETE'.
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponse::Status]
        required :status, enum: -> { HubSpotSDK::Webhooks::BatchResponseSubscriptionResponse::Status }

        # @!attribute links
        #   A map of link names to associated URIs, providing additional information or
        #   resources related to the batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The date and time when the batch operation was requested, in ISO 8601 format.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   Some parameter documentations has been truncated, see
        #   {HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponse} for more
        #   details.
        #
        #   @param completed_at [Time] The date and time when the batch operation was completed, in ISO 8601 format.
        #
        #   @param results [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse>] An array of SubscriptionResponse objects, each representing the result of an ind
        #
        #   @param started_at [Time] The date and time when the batch operation started, in ISO 8601 format.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponse::Status] The current status of the batch operation. Valid values include 'PENDING', 'PROC
        #
        #   @param links [Hash{Symbol=>String}] A map of link names to associated URIs, providing additional information or reso
        #
        #   @param requested_at [Time] The date and time when the batch operation was requested, in ISO 8601 format.

        # The current status of the batch operation. Valid values include 'PENDING',
        # 'PROCESSING', 'CANCELED', and 'COMPLETE'.
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
