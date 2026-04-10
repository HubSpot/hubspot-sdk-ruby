# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Webhooks
      class BatchResponseSubscriptionResponseWithErrors < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Webhooks::SubscriptionResponse] }

        # @!attribute started_at
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #
        #   @return [Symbol, HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponseWithErrors::Status]
        required :status, enum: -> { HubSpotSDK::Webhooks::BatchResponseSubscriptionResponseWithErrors::Status }

        # @!attribute errors
        #
        #   @return [Array<HubSpotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::StandardError] }

        # @!attribute links
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors that occurred during the batch operation.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   @param completed_at [Time]
        #
        #   @param results [Array<HubSpotSDK::Models::Webhooks::SubscriptionResponse>]
        #
        #   @param started_at [Time]
        #
        #   @param status [Symbol, HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponseWithErrors::Status]
        #
        #   @param errors [Array<HubSpotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}]
        #
        #   @param num_errors [Integer] The number of errors that occurred during the batch operation.
        #
        #   @param requested_at [Time]

        # @see HubSpotSDK::Models::Webhooks::BatchResponseSubscriptionResponseWithErrors#status
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
