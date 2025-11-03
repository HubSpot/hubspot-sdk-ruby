# frozen_string_literal: true

module HubspotSDK
  module Models
    module Crm
      class BatchResponseTimelineEventResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   The time the request was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #   Successfully created events.
        #
        #   @return [Array<HubspotSDK::Models::Crm::TimelineEventResponse>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Crm::TimelineEventResponse] }

        # @!attribute started_at
        #   The time the request began processing.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The status of the batch response. Should always be COMPLETED if processed.
        #
        #   @return [Symbol, HubspotSDK::Models::Crm::BatchResponseTimelineEventResponse::Status]
        required :status, enum: -> { HubspotSDK::Crm::BatchResponseTimelineEventResponse::Status }

        # @!attribute links
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   The time the request occurred.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   The state of the batch event request.
        #
        #   @param completed_at [Time] The time the request was completed.
        #
        #   @param results [Array<HubspotSDK::Models::Crm::TimelineEventResponse>] Successfully created events.
        #
        #   @param started_at [Time] The time the request began processing.
        #
        #   @param status [Symbol, HubspotSDK::Models::Crm::BatchResponseTimelineEventResponse::Status] The status of the batch response. Should always be COMPLETED if processed.
        #
        #   @param links [Hash{Symbol=>String}]
        #
        #   @param requested_at [Time] The time the request occurred.

        # The status of the batch response. Should always be COMPLETED if processed.
        #
        # @see HubspotSDK::Models::Crm::BatchResponseTimelineEventResponse#status
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
