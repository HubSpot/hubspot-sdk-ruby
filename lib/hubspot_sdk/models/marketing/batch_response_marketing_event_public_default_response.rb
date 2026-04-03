# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::MarketingEvents#upsert_batch
      class BatchResponseMarketingEventPublicDefaultResponse < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   Timestamp of when the request was completed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventPublicDefaultResponse>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventPublicDefaultResponse] }

        # @!attribute started_at
        #   Timestamp of when the request started processing.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   Status of the response.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status]
        required :status,
                 enum: -> { HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status }

        # @!attribute errors
        #
        #   @return [Array<HubspotSDK::Models::StandardError>, nil]
        optional :errors, -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::StandardError] }

        # @!attribute links
        #   Result of the request.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute num_errors
        #   The number of errors that occurred during the request.
        #
        #   @return [Integer, nil]
        optional :num_errors, Integer, api_name: :numErrors

        # @!attribute requested_at
        #   Timestamp of when the request was sent.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, errors: nil, links: nil, num_errors: nil, requested_at: nil)
        #   @param completed_at [Time] Timestamp of when the request was completed.
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::MarketingEventPublicDefaultResponse>]
        #
        #   @param started_at [Time] Timestamp of when the request started processing.
        #
        #   @param status [Symbol, HubspotSDK::Models::Marketing::BatchResponseMarketingEventPublicDefaultResponse::Status] Status of the response.
        #
        #   @param errors [Array<HubspotSDK::Models::StandardError>]
        #
        #   @param links [Hash{Symbol=>String}] Result of the request.
        #
        #   @param num_errors [Integer] The number of errors that occurred during the request.
        #
        #   @param requested_at [Time] Timestamp of when the request was sent.

        # Status of the response.
        #
        # @see HubspotSDK::Models::Marketing::BatchResponseMarketingEventPublicDefaultResponse#status
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
