# frozen_string_literal: true

module HubspotSDK
  module Models
    module Marketing
      # @see HubspotSDK::Resources::Marketing::Events#update_batch
      class BatchResponseMarketingEventPublicDefaultResponseV2 < HubspotSDK::Internal::Type::BaseModel
        # @!attribute completed_at
        #   Timestamp of when the request was processed.
        #
        #   @return [Time]
        required :completed_at, Time, api_name: :completedAt

        # @!attribute results
        #
        #   @return [Array<HubspotSDK::Models::Marketing::MarketingEventPublicDefaultResponseV2>]
        required :results,
                 -> { HubspotSDK::Internal::Type::ArrayOf[HubspotSDK::Marketing::MarketingEventPublicDefaultResponseV2] }

        # @!attribute started_at
        #   Timestamp of when the request started processing.
        #
        #   @return [Time]
        required :started_at, Time, api_name: :startedAt

        # @!attribute status
        #   The status of the response.
        #
        #   @return [Symbol, HubspotSDK::Models::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status]
        required :status,
                 enum: -> { HubspotSDK::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status }

        # @!attribute links
        #   Result object of the request.
        #
        #   @return [Hash{Symbol=>String}, nil]
        optional :links, HubspotSDK::Internal::Type::HashOf[String]

        # @!attribute requested_at
        #   Timestamp of when the request was sent.
        #
        #   @return [Time, nil]
        optional :requested_at, Time, api_name: :requestedAt

        # @!method initialize(completed_at:, results:, started_at:, status:, links: nil, requested_at: nil)
        #   @param completed_at [Time] Timestamp of when the request was processed.
        #
        #   @param results [Array<HubspotSDK::Models::Marketing::MarketingEventPublicDefaultResponseV2>]
        #
        #   @param started_at [Time] Timestamp of when the request started processing.
        #
        #   @param status [Symbol, HubspotSDK::Models::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2::Status] The status of the response.
        #
        #   @param links [Hash{Symbol=>String}] Result object of the request.
        #
        #   @param requested_at [Time] Timestamp of when the request was sent.

        # The status of the response.
        #
        # @see HubspotSDK::Models::Marketing::BatchResponseMarketingEventPublicDefaultResponseV2#status
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
