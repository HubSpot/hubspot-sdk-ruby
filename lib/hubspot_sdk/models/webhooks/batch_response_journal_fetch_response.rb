# frozen_string_literal: true

module HubspotSDK
  module Models
    module Webhooks
      # @see HubspotSDK::Resources::Webhooks#get_earliest_journal_batch
      class BatchResponseJournalFetchResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Webhooks::JournalFetchResponse>]
        required :results, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Webhooks::JournalFetchResponse] }

        # @!attribute started_at
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #
        #   @return [Symbol, HubspotSDK::Models::Webhooks::BatchResponseJournalFetchResponse::Status]
        required :status, enum: -> { HubspotSDK::Webhooks::BatchResponseJournalFetchResponse::Status }

        # @!attribute links
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   @param completed_at [Time]
        #   @param results [Array<HubspotSDK::Models::Webhooks::JournalFetchResponse>]
        #   @param started_at [Time]
        #   @param status [Symbol, HubspotSDK::Models::Webhooks::BatchResponseJournalFetchResponse::Status]
        #   @param links [Hash{Symbol=>String}]
        #   @param requested_at [Time]

        # @see HubspotSDK::Models::Webhooks::BatchResponseJournalFetchResponse#status
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
