# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      module Subscriptions
        class BatchResponsePublicStatusBulkResponse < HubspotSDK::Internal::Type::BaseModel
          # @!attribute completed_at
          #   The date and time when the batch process was completed.
          #
          #   @return [Time]
          required :completed_at, Time, api_name: :completedAt

          # @!attribute results
          #   The array of results from the batch process, each containing subscription status
          #   information.
          #
          #   @return [Array<HubspotSDK::Models::Marketing::Subscriptions::PublicStatusBulkResponse>]
          required :results,
                   -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::Subscriptions::PublicStatusBulkResponse] }

          # @!attribute started_at
          #   The date and time when the batch process began.
          #
          #   @return [Time]
          required :started_at, Time, api_name: :startedAt

          # @!attribute status
          #   The current status of the batch process, with possible values: PENDING,
          #   PROCESSING, CANCELED, COMPLETE.
          #
          #   @return [Symbol, HubspotSDK::Models::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status]
          required :status,
                   enum: -> { HubspotSDK::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status }

          # @!attribute links
          #   A collection of related links associated with the batch response.
          #
          #   @return [Hash{Symbol=>String}, nil]
          optional :links, HubspotSDK::Internal::Type::HashOf[String]

          # @!attribute requested_at
          #   The date and time when the batch request was made.
          #
          #   @return [Time, nil]
          optional :requested_at, Time, api_name: :requestedAt

          # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
          #   Some parameter documentations has been truncated, see
          #   {HubspotSDK::Models::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse}
          #   for more details.
          #
          #   @param completed_at [Time] The date and time when the batch process was completed.
          #
          #   @param results [Array<HubspotSDK::Models::Marketing::Subscriptions::PublicStatusBulkResponse>] The array of results from the batch process, each containing subscription status
          #
          #   @param started_at [Time] The date and time when the batch process began.
          #
          #   @param status [Symbol, HubspotSDK::Models::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse::Status] The current status of the batch process, with possible values: PENDING, PROCESSI
          #
          #   @param links [Hash{Symbol=>String}] A collection of related links associated with the batch response.
          #
          #   @param requested_at [Time] The date and time when the batch request was made.

          # The current status of the batch process, with possible values: PENDING,
          # PROCESSING, CANCELED, COMPLETE.
          #
          # @see HubspotSDK::Models::Marketing::Subscriptions::BatchResponsePublicStatusBulkResponse#status
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
