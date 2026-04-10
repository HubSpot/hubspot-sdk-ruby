# frozen_string_literal: true

module HubSpotSDK
  module Models
    module Cms
      class BatchResponseContentFolder < HubSpotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   Time of batch operation completion.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   Results of batch operation.
        #
        #   @return [Array<HubSpotSDK::Models::Cms::ContentFolder>]
        required :results, -> { HubSpotSDK::Internal::Type::ArrayOf[HubSpotSDK::Cms::ContentFolder] }

        # @!attribute started_at
        #   Time of batch operation start.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   Status of batch operation.
        #
        #   @return [Symbol, HubSpotSDK::Models::Cms::BatchResponseContentFolder::Status]
        required :status, enum: -> { HubSpotSDK::Cms::BatchResponseContentFolder::Status }

        # @!attribute links
        #   Links associated with batch operation.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubSpotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   Time of batch operation request.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   @param completed_at [Time] Time of batch operation completion.
        #
        #   @param results [Array<HubSpotSDK::Models::Cms::ContentFolder>] Results of batch operation.
        #
        #   @param started_at [Time] Time of batch operation start.
        #
        #   @param status [Symbol, HubSpotSDK::Models::Cms::BatchResponseContentFolder::Status] Status of batch operation.
        #
        #   @param links [Hash{Symbol=>String}] Links associated with batch operation.
        #
        #   @param requested_at [Time] Time of batch operation request.

        # Status of batch operation.
        #
        # @see HubSpotSDK::Models::Cms::BatchResponseContentFolder#status
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
